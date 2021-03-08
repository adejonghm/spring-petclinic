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
                nexusArtifactUploader( 
                    artifacts: [
                        [
                            artifactId: 'spring-petclinic', 
                            classifier: 'target/', 
                            file: 'target/spring-petclinic-2.4.2.jar', 
                            type: 'jar'
                        ]
                    ], 
                    nexusVersion: 'nexus3',
                    protocol: 'http',
                    nexusUrl: 'nexus3:8081',
                    groupId: 'org.springframework.samples',
                    version: '2.4.2',
                    repository: 'petclinic-release/',
                    credentialsId: 'nexus_user'
                );
            }
        }
    }
}
