pipeline {
    agent { label 'slave_node' }
    tools {
        maven 'maven3.9'
    }
    environment {
        IMAGE = 'narasimhanellore/my-second-repo'
    }
    stages {
        stage('checkout stage') {
            steps { checkout scm }
        }
        stage('package stage') {
            steps { sh 'mvn clean package -DskipTests' }
        }
        stage('docker build') {
            steps { sh 'docker build -t $IMAGE:apache-tomcat1 .' }
        }
        stage('push to the docker hub') {
            when { branch 'main' }
            steps { sh 'docker push $IMAGE:apache-tomcat1' }
        }
    }
    post {
        success { echo 'Pipeline completed successfully.' }
        failure { echo 'Pipeline failed. Kindly check the logs for more details.' }
    }
}