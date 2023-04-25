pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    docker.build('my-notes-app', '-f Dockerfile .')
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    docker.run('--rm my-notes-app python manage.py test')
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    docker.run('--rm -p 8000:8000 my-notes-app')
                }
            }
        }
    }
}

