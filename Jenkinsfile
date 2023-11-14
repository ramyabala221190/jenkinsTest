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
                // bat('echo Y | xcopy /i /s /e "./dist/jenkins-test/*.*" "../../node/"')
                def srcFileName = new File('C:/Users/User/angular/jenkinsTest/dist/jenkins-test/*').name
def escapedSrcFolder = new File('C:/Users/User/angular/jenkinsTest/dist/jenkins-test/*').getParent().replace('/', '\\\\')
def escapedDestFolderPath = 'C:/Users/User/node/'.replace('/', '\\\\')
dir(escapedSrcFolder) {
    fileOperations([
        fileCopyOperation(
            flattenFiles: true,
            includes: srcFileName,
            targetLocation: escapedDestFolderPath
        )
    ])
}

            }
        }
    }
}