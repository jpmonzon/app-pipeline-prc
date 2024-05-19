pipeline {
    agent any
    tools {
        nodejs "my-node"
    }
    stages {
        stage('Verify Node.js Installation') {
            steps {
                sh 'node --version'
                sh 'npm --version'
            }
        }
        stage('Checkout') {
            steps {
                git url: 'https://github.com/jpmonzon/app-pipeline-prc', credentialsId: 'aff89bd5-5d40-4f6d-a7c5-e146851730c0'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
        stage('Deploy') {
            steps {
                script {
                    def remoteHost = "user@your-server.com"
                    def remoteDir = "/path/to/your/app"

                    sh "scp -r * ${remoteHost}:${remoteDir}"
                    sh "ssh ${remoteHost} 'cd ${remoteDir} && npm install && npm run start'"
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
