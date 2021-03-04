pipeline {
    
    // GENERAL SETTINGS 
    agent any
    tools{
        maven 'Maven'
    }

    // STAGES
    stages {
        stage('Build') {
            steps {
                //sh 'mvn clean package -DskipTests'
                echo 'App successfully built'
            }
        }
        // stage('Test') {
        //     steps {
        //         echo 'Testing..'
        //     }
        // }
        // stage('Deploy') {
        //     steps {
        //         echo 'Deploying....'
        //     }
        // }
    }
}
