pipeline {
    agent any
    
    tools {
        nodejs 'my-node' // Nombre del tool de Node.js configurado en Jenkins
    }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
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
