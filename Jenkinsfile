    pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clona el repositorio desde Git
                git url: 'https://github.com/jpmonzon/app-pipeline-prc', branch: 'main'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    // Construye la imagen Docker
                    dockerImage = docker.build("app.py:${env.BUILD_ID}")
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    // Corre el contenedor Docker
                    dockerImage.run('-p 8000:8000')
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
