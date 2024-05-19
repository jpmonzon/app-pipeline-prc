pipeline {
    agent any
    
    tools {
        nodejs 'my-node' // Nombre del tool de Node.js configurado en Jenkins
    }

    stages {
     stage('Print PATH') {
            steps {
                sh 'echo $PATH'
            }
        }
        stage('Check Node.js version') {
            steps {
                sh 'node -v'
                sh 'npm -v'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Checkout') {
            steps {
                script {
                    // Paso de checkout del código desde tu repositorio Git
                    checkout scm
                }
            }
        }
        
        stage('Install Dependencies') {
            steps {
                script {
                    // Instalación de dependencias Node.js usando npm
                    sh 'npm install'
                }
            }
        }

        stage('Build') {
            steps {
                script {
                    // Ejecución de comandos de build según sea necesario
                    sh 'npm run build' // Si tienes un script de build definido en tu proyecto
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Ejecución de pruebas según sea necesario
                    sh 'npm test' // Si tienes un script de tests definido en tu proyecto
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Comandos de despliegue (a completar según tu método de despliegue)
                    sh 'echo "Deploying..."'
                    // Agrega aquí los comandos específicos para tu método de despliegue
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
        success {
            echo 'Pipeline succeeded.'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
