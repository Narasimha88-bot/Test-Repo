pipeline {
    agent { label 'slave_node'}
    tools {
        maven 'maven3.9'
    }
    stages {
        stage("checkout stage"){
            steps {
                git branch: 'main', url: 'https://github.com/Narasimha88-bot/Test-Repo.git'

            }
            
        }
        stage('package stage'){
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }
        stage('docker build'){
            steps {
                sh 'docker build -t apache-tomcat:latest .'
            }
        }
    }
    post {
        success {
            echo 'Pipeline completed successfully.'
        }
        failure {
            echo 'Pipeline failed. Kindly check the logs for more details.'
        }
    }
}