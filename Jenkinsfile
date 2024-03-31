pipeline {
    agent any

    stages {
        stage('Build Image') {
            steps {
                    script {
                        docker.build('app_globo:vbeta')
                    }
            }
        }
    }
}

    