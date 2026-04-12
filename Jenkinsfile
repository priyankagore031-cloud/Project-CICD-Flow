pipeline {
agent any

tools {
        maven 'Maven'
    }

stages {
    stage('Build') {
        steps {
        bat 'mvn clean package'        }
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
