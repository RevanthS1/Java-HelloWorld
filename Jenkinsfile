pipeline {
    agent {
        docker {
            image 'maven:3.9.0-jdk11'  // Docker image for the build
            args '-v /root/.m2:/root/.m2' // optional: mount Maven cache
        }
    }

    environment {
        IMAGE_NAME = "hello-java-jenkins"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/your-repo.git' // replace with your repo URL
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm $IMAGE_NAME'
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
