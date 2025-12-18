pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'feature_test', url: 'https://github.com/yamadak377/your-c-project.git'
            }
        }
        stage('Build') {
            steps {
                // MinGWのパスを通す（例: C:\mingw64\bin）
                bat 'set PATH=C:\\Users\\user\\mingw64\\bin;%PATH% && make clean && make'
            }
        }
        stage('Test') {
            steps {
                // 実行して結果を確認
                bat '.\\hello.exe'
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: '*.exe', fingerprint: true
        }
    }
}
