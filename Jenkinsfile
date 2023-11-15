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
        post{
          success{
            echo 'Clone step completed'
          }
        }
        stage('Install'){
            steps{
                echo 'Installing..'
                bat 'npm install'            
            }
        }
         post{
          success{
            echo 'Install step completed'
          }
        }
        stage('Build using prod configuration') {
            when{
                //execute the stage only when the env variable with key environment has value prod
                //we are providing value for this key when running the pipeline
                environment name: 'environment', value: 'prod'
            }
            steps {
                echo 'Building using prod config..'
                bat 'npm run build:prod'

            }
        }
         post{
          success{
            echo 'Build(prod) step completed'
          }
        }
        stage('Build using dev configuration'){
              when{
                //execute the stage only when the env variable with key environment has value dev
                //we are providing value for this key when running the pipeline
                environment name: 'environment', value: 'dev'
            }
            steps{
                echo 'Builing using dev config'
                bat  'npm run build:dev'

            }
        }
         post{
          success{
            echo 'Build(dev) step completed'
          }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
         post{
          success{
            echo 'Test step completed'
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
         post{
          success{
            echo 'Deploy step completed'
          }
        }
    }
     post{
          success{
            echo 'All steps completed'
          }
        }
}