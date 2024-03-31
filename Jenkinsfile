pipeline {
    agent any

    stages {
        stage('Build and Push Image') {
            steps {
                script {
                    docker.build("fernandohs99/app_globo:${env.BUILD_ID}")
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {
                        def appGloboImage = docker.image("fernandohs99/app_globo:${env.BUILD_ID}")
                        appGloboImage.push("latest")
                        appGloboImage.push("${env.BUILD_ID}")
                    }
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                script {
                    sh "C:\\Users\\Fernando\\kubectl apply -f deployment.yaml"
                }
            }
        }
    }
}
