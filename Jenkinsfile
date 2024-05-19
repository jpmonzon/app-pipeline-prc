pipeline {
    agent any
    
    tools {
        nodejs 'my-node' // Nombre del tool de Node.js configurado en Jenkins
    }
    stages {
        stage('Preparation') {
            steps {
                sh 'node --version'
                sh 'npm --version'
                sh 'env' // Imprime las variables de entorno para verificar configuraciones
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
