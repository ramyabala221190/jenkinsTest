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
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                echo "${environment}"
                // bat('echo Y | xcopy /i /s /e "./dist/jenkins-test/*.*" "../../node/"')
               
                fileOperations([fileCopyOperation(
                                  flattenFiles: true, //includes only files 
                                  includes: 'dist/*/**',
                                  targetNameExpression: 'C:/Users/User/node/web/'+${environment})]
                                  )

            }
        }
    }
}