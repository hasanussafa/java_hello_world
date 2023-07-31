pipeline {
    /*agent { label 'linux'}*/
    agent any

    environment {
       
        DOCKERHUB_CREDENTIALS = credentials('java_hello_world')
       
    }
    
    stages {
        
        stage('gitclone') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/hasanussafa/java_hello_world.git']])
            
            
                
            }
        }
        
        stage('Build') {
            steps {
                sh '/usr/local/bin/docker build -t hasanussafa/java_hello_world:latest .'
                
            }
        }
     
        stage('Login') {
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | /usr/local/bin/docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            
            }
        }
        
        stage('Push') {
            steps {
                sh '/usr/local/bin/docker push hasanussafa/java_hello_world:latest'
                
            }
        }
        
    }
    post {
        always {
            sh '/usr/local/bin/docker logout'
        
        }
    }
}
