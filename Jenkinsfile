pipeline {
    agent any
	
	environment {
        // Reemplaza con tu nombre de usuario de DockerHub
        DOCKER_HUB_USER = 'choquedi'
        // Reemplaza con el nombre de la credencial que creaste en Jenkins
        DOCKER_HUB_CREDENTIALS_ID = '239d88ce-b234-47e4-8b20-a3eb7ef61926'
    }
    
    stages {
        stage('Construir la imagen docker') {
            steps {
                script {
                    // Construye la imagen Docker
                    docker.build("choquedi/repomod04:lastest")
                }
            }
        }
		
		 stage('Publicar en DockerHub') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', DOCKER_HUB_CREDENTIALS_ID) {
                        docker.image("${DOCKER_HUB_USER}/repomod04:latest").push()
                    }
                }
            }
        }
    }
}