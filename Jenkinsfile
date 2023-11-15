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
        stage('Build using prod configuration') {
            when{
                ${environment} "prod"
            }
            steps {
                echo 'Building using prod config..'
                bat 'npm run build:prod'

            }
        }
        stage('Build using dev configuration'){
              when{
                ${environment} "dev"
            }
            steps{
                echo 'Builing using dev config'
                bat  'npm run build:dev'

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
                echo "${environment}"               
                fileOperations([fileCopyOperation(
                                  flattenFiles: true, //includes only files 
                                  includes: 'dist/*/**',
                                  targetLocation: 'C:/Users/User/node/web/${environment}')]
                                  )

            }
        }
    }
}