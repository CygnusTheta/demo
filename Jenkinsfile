pipeline {
    agent any
   // tools {
       // maven 'Maven 3.8.6'
        //jdk 'jdk19'
   // }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                    echo "JAVA_HOME = ${JAVA_HOME}"
                    echo "PATH = ${PATH}"
                '''
            }
        }

        stage ('Build') {
            steps {
                sh 'mvn compile test' 
            }
            post {
                success {
                    junit 'target/surefire-reports/**/*.xml' 
                }
            }
        }

        stage ('Create Container') {
            steps {
                sh '
                docker build -t testing2:latest .
                '
            }
        }

    }
}