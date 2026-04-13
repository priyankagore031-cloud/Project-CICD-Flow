pipeline {
  agent any

    environment {

        IMAGE_NAME = "priyanka031/demo1-java-app"
    }

    stages{
   /*
      stage('Git Checkout'){

        steps {

            git 'https://github.com/priyankagore031-cloud/Project-CICD-Flow.git'
        }

      }
   */

     stage('maven build'){

        steps {

            sh "mvn clean package"
        }


     }

     stage('code test'){

        steps {

            echo "Code Tested"
        }


     }

     stage('Build docker image'){

        steps {

            sh "docker build -t %IMAGE_NAME%:1.0 ."
            sh "docker build -t %IMAGE_NAME%:2.0 ."

        }
     }

     stage('Docker Login') {

    steps {
        withCredentials([usernamePassword(
            credentialsId: 'docker-creds',
            usernameVariable: 'DOCKER_USER',
            passwordVariable: 'DOCKER_PASS'
        )]) {
            sh "docker login -u %DOCKER_USER% -p %DOCKER_PASS%"
        }
    }
}

     stage('Push image to docker hub'){

        steps {

            sh "docker push %IMAGE_NAME%:1.0"
            sh "docker push %IMAGE_NAME%:2.0"

        }
    }



     stage('Pull Docker image') {

        steps {

            sh "docker pull %IMAGE_NAME%:1.0"
            sh "docker pull %IMAGE_NAME%:2.0"

        }
    }


     stage('Run Docker Compose File') {

        steps {

            sh "docker-compose up -d"
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

