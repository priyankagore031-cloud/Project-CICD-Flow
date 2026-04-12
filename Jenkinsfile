pipeline {
agent any

stages {
    stage('Build') {
        steps {
            bat 'C:\Program Files\Maven\\mvn clean package'
        }
    }

    stage('Test') {
        steps {
            echo 'This project is tested'
        }
    }

    stage('Deploy') {
        steps {
            echo 'This project is Deployed successfully'
        }
    }
}

}
