pipeline {
    agent any
    environment {
        PATH = "C:\\MinGW\\bin;${env.PATH}"
    }
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/himanshu102003/Cpp-Jenkins-Automation.git'
            }
        }

        stage('Build') {
            steps {
                script {
                    echo '🔨 Building...'
                    
                    // Ensure MinGW's make is installed & run it
                    sh 'mingw32-make || { echo "❌ Build failed!"; exit 1; }'

                    echo '✅ Building done...'
                }
            }
        }

        stage('Execute Program') {
            steps {
                script {
                    echo '🚀 Executing...'

                    // Ensure output.exe exists before running
                    sh '[ -f output.exe ] && ./output.exe || { echo "❌ ERROR: output.exe not found!"; exit 1; }'

                    echo '✅ Executing done...'
                }
            }
        }
    }
}
