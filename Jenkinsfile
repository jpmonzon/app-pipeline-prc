pipeline {
    agent any
    
    tools {
        nodejs 'my-node' // Nombre del tool de Node.js configurado en Jenkins
    }
    stages {
     /* stage('Preparation') {
            steps {
                script {
                    def nodeHome = tool name: 'my-node', type: 'jenkins.plugins.nodejs.tools.NodeJSInstallation'
                    env.PATH = "${nodeHome}/bin:${env.PATH}"
                }
                sh 'echo "Using Node.js version:"'
                sh 'node --version'
                sh 'echo "Using npm version:"'
                sh 'npm --version'
            }
        }*/
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
