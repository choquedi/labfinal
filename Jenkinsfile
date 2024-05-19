pipeline {
    agent any
    
	stages {
		stage('Construir imagen Docker') {
			steps {
				script {
				dockerImage('choquedi/repomod04:latest').build()
				}
			}
		}
    }
}
