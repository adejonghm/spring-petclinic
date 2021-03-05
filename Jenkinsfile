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
                sh 'mvn package -DskipTests'
            }
        }
        
        stage('Upload Artifact to Nexus') {
            steps{
                nexusArtifactUploader artifacts: [
                    [
                        artifactId: 'spring-petclinic', 
                        classifier: 'target/', 
                        file: 'target/spring-petclinic-2.4.2.jar', 
                        type: 'jar'
                    ]
                ], 
                credentialsId: 'nexus3', 
                groupId: 'org.springframework.samples', 
                nexusUrl: 'localhost:8081', 
                nexusVersion: 'nexus3', 
                protocol: 'http', 
                repository: 'petclinic-release', 
                version: '2.4.2'
            }
        }
    }
}
