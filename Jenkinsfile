pipeline {
    agent any

    stages {
        stage("Build zip file"){
            steps{
                  sh  'zip middlewareScripts${BUILD_NUMBER}.zip * --exclude Jenkinsfile'
            }
        }
    }
}