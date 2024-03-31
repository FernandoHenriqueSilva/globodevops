pipeline {
    agent any

    stages {
        stage('Build Image') {
            steps {
                    script {
                        docker.build("app_globo:${env.BUILD_ID}")
                    }
            }
        }
        stage ('Push Image') {
           steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
                    docker.image('app_globo:vbeta').push("${env.BUILD_ID}")
                    }
                }
            }
        }
    }
}

    