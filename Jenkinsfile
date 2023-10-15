pipeline {
    agent any

    stages {
        stage("Build zip file"){
            steps{
                zip middlewareScripts${BUILD_NUMBER}.zip * --exclude Jenkinsfile
            }
        }
    }
}