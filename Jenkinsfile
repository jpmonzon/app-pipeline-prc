pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clonar el repositorio desde GitHub
                git branch: 'main', url: 'https://github.com/jpmonzon/app-pipeline-prc.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                // Instalar dependencias de Node.js
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                // Construir el proyecto Node.js
                sh 'npm run build'
            }
        }
        stage('Test') {
            steps {
                // Ejecutar pruebas unitarias
                sh 'npm test'
            }
        }
        stage('Deploy') {
            steps {
                // Construir y desplegar la imagen Docker
                sh '''
                docker build -t jpmonzon/app-pipeline-prc .
                docker run -d -p 80:80 jpmonzon/app-pipeline-prc
                '''
            }
        }
    }
    post {
        success {
            echo 'Pipeline completed successfully.'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
