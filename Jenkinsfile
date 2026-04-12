pipeline {
agent any

stages {
    stage('Build') {
        steps {
            'mvn clean package'
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
