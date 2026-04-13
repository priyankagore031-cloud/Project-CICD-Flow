pipeline {
  agent any

    environment {

        IMAGE_NAME = "priyanka031/demo1-java-app"
    }

    stages{

      stage('Git Checkout'){

        steps {

            git 'https://github.com/priyankagore031-cloud/Project-CICD-Flow.git'
        }

      }

     stage('maven build'){

        steps {

            bat "mvn clean package"
        }


     }

     stage('code test'){

        steps {

            echo "Code Tested"
        }


     }

     stage('Build docker image'){

        steps {

            bat "docker build -t %IMAGE_NAME%:1.0 ."
            bat "docker build -t %IMAGE_NAME%:2.0 ."

        }
     }

     stage('Docker Login') {

    steps {
        withCredentials([usernamePassword(
            credentialsId: 'docker-creds',
            usernameVariable: 'DOCKER_USER',
            passwordVariable: 'DOCKER_PASS'
        )]) {
            bat "docker login -u %DOCKER_USER% -p %DOCKER_PASS%"
        }
    }
}

     stage('Push image to docker hub'){

        steps {

            bat "docker push %IMAGE_NAME%:1.0"
            bat "docker push %IMAGE_NAME%:2.0"

        }
    }



     stage('Pull Docker image') {

        steps {

            bat "docker pull %IMAGE_NAME%:1.0"
            bat "docker pull %IMAGE_NAME%:2.0"

        }
    }


     stage('Run Docker Compose File') {

        steps {

            bat "docker-compose up -d"
        }
    }
}

post {

    success {

    echo "Pipeline is successful"
    }

    failure {

    echo "Pipeline is failed"

    }
}
}

