pipeline {
    agent any

    stages {
        stage('Git checkout') {
            steps {
                git branch: 'main',
                   url: 'https://github.com/RevanthS1/Java-HelloWorld.git'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Docker build') {
            steps {
                sh 'docker build -t newimage:latest .'
            }
        }
         stage('Docker Run') {
            steps {
                sh 'docker run -d --rm newimage'
            }
        }
    }
    post {
        success {
            echo 'Pipeline executed successfully'
        }
        failure {
            echo 'Pipeline failed'
        }
    }
}
