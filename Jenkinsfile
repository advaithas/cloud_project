pipeline {
    agent any

    stages {

	stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], 
                          doGenerateSubmoduleConfigurations: false, extensions: [],
                          submoduleCfg: [], 
                          userRemoteConfigs: [
                              [url: 'https://github.com/adavitha/cc_project.git']
                          ]
                ])
            }
        }

        
                stage('Build Docker Images') {
           	steps {

                    script {
                        docker.withRegistry('https://registry.hub.docker.com','docker-registry-credentials')
                        {
                            bat 'docker push advaitha246/uc1-service:latest'          	
                        }
                        docker.withRegistry('https://registry.hub.docker.com','docker-registry-credentials')
                        {
                            bat 'docker push advaitha246/uc2-service:latest'          	
                        }
                        docker.withRegistry('https://registry.hub.docker.com','docker-registry-credentials')
                        {
                            bat 'docker push advaitha246/uc3-service:latest'          	
                        }
                    }
                
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                script{
		    bat 'kubectl apply -f mongo.yaml'
                    bat 'kubectl apply -f kubernetes.yaml'
                }
            }
        }
    }
}
