pipeline {
    agent any
    environment {
        NODEJS_HOME = tool 'my-node' // Utiliza el nombre de NodeJS que has definido
        PATH = "${NODEJS_HOME}/bin:${env.PATH}"
    }
    stages {
        stage('Checkout') {
            steps {
                // Clonar el repositorio desde GitHub
                git branch: 'main', url: 'https://github.com/jpmonzon/app-pipeline-prc.git'
            }
        }
        
         stage('Install Dependencies') {
            steps {
                script {
                    sh 'npm install'
                }
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
