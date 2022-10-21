pipeline {
    agent any
    tools {
       // maven 'Maven 3.8.6'
        //jdk 'jdk19'
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                     echo "JAVA_HOME = ${JAVA_HOME}"
                '''
            }
        }

        stage ('Build') {
            steps {
                sh 'mvn build' 
            }
            post {
                success {
                    junit 'target/surefire-reports/**/*.xml' 
                }
            }
        }
    }
}