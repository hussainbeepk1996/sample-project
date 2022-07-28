pipeline {
    agent any
    environment{
        PATH = "/opt/maven/bin:$PATH"
    }
    stages {
        stage('clone') {
            steps {
                // Get some code from a GitHub repository
                git 'https://github.com/hussainbeepk1996/first-demo-project.git'
            }
            
        }
        stage('build') {
            steps {
               sh'mvn clean install'
            }
        }
    }
}
