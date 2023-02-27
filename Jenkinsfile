pipeline {
    agent any
    

    stages {
       stage ('Login, Build and Push'){
            steps {
                script{
                    withDockerRegistry(credentialsId: 'Docker') {
                        docker.build('jbuggz/flaskapp').push('latest')
                    }   
                }
            }
        }
        stage('AWS Commands'){
            steps {
                script {
                    withAWS(credentials: 'Rando' , region: 'us-east-1'){
                        sh 'aws sts get-caller-identity'
                    }
                }
            }
        }    
    }

}
