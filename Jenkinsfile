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
        stage('validate stage'){
            steps {
                mvn clean validate
            }
        }
    }
}