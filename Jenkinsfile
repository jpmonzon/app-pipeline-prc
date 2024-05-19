pipeline {
    agent any
    tools {
        nodejs "my-node" // Asegúrate de que este nombre coincida con el que has configurado en Jenkins
    }
    stages {
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        // Otros stages...
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
