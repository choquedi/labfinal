pipeline {
    agent any
    
    stages {
        stage('Construir la imagen docker') {
            steps {
                script {
                    // Construye la imagen Docker
                    docker.build("choquedi/repomod04:lastest")
                }
            }
        }
    }
}