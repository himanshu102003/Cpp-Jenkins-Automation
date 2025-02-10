pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/himanshu102003/Cpp-Jenkins-Automation.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Buildling... 
              sh 'make'
                echo 'Building done....'
            }
        }
        stage('Execute Program') {
            steps {
                echo 'executing...'
                sh './output.exe'
                echo 'executing done...'
            }
        }
    }
}
