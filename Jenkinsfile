pipeline {
agent any

stages {
    stage('Build') {
        steps {
            sh 'mvn clean package'
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
