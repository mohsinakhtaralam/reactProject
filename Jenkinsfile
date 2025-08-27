pipeline {
    agent {
            label 'agent_all'
        }

    environment {
        CONTAINER_IMAGE  = 'nestjs_image' // Replace with your Docker Hub credentials ID
        CONTAINER_NAME   = 'nestjs_container'
        PORT             = '3000'
    }

    stages {
        stage('Clone Repository from git hub') {
            steps {
                // git branch: 'main', url: 'https://github.com/mohsinakhtaralam/projectalpha2.git'
                git branch: 'main', url: 'https://github.com/mohsinakhtaralam/reactProject.git'
            }
        }

        stage('Docker container image build') {
            steps {
                
                    sh "docker build -t ${CONTAINER_IMAGE} ."
               
            }
        }

        stage('Stop and Remove Existing Container') {
            steps {
                sh """
                    docker stop ${CONTAINER_NAME} || true
                    docker rm ${CONTAINER_NAME} || true
                """
            }
        }
        stage('start container') {
            steps {
               
                    sh "docker run -d --name ${CONTAINER_NAME} -p ${PORT}:${PORT} ${CONTAINER_IMAGE}"
               
        }
    }
}
}
