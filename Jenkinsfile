pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/himanshu102003/Cpp-Jenkins-Automation.git'
            }
        }
        //stage('Build') {
        //    steps {
          //      sh 'make'
            //}
        //}
        stage('Execute Program') {
            steps {
                sh './output.exe'
            }
        }
    }
}
