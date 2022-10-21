pipeline { 
    agent any  
        tools {
        maven 'Maven 3.6.3'
        jdk 'jdk11'
    }

    stages ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
            }
        }

    stages { 
        stage('Build') { 
            steps { 
               echo 'This is a minimal pipeline.' 
            }
        }
    }
}