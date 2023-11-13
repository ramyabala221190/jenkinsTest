pipeline {
    agent any

      tools {nodejs "Node"}

    stages {
        stage('Clone'){
            steps{
                echo 'Cloning..'
                git 'https://github.com/ramyabala221190/jenkinsTest.git'
            }
        }
        stage('Install'){
            steps{
                echo 'Installing..'
                sh 'npm install'            
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'npm run build'

            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'

            }
        }
    }
}