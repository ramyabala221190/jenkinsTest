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
                bat 'npm install'            
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
                bat 'npm run build'

            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                bat 'npm run test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                bat("xcopy ./dist ../node /O /X /E /H /K")

            }
        }
    }
}