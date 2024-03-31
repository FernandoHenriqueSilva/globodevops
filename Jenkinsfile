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
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {
                    docker.image("fernandohs99/app_globo:${env.BUILD_ID}").push("${env.BUILD_ID}")
                    }
                }
            }
        }
    }
}

    