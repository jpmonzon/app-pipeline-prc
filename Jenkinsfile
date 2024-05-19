pipeline {
    agent any
    
    tools {
        nodejs 'my-node' // Nombre del tool de Node.js configurado en Jenkins
    }
    stages {
        stage('Preparation') {
            steps {
                sh 'echo "PATH: $PATH"' // Imprime el PATH para verificar las ubicaciones de Node.js y npm
                sh 'node --version' // Verifica la versión de Node.js
                sh 'npm --version' // Verifica la versión de npm
                sh 'env' // Imprime las variables de entorno para ver la configuración general
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        // Otras etapas del pipeline
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
