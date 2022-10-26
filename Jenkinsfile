pipeline {
    agent any
   // tools {
       // maven 'Maven 3.8.6'
        //jdk 'jdk19'
   // }

	environment {
		CredentialsId="d1cdcc3d-8ee2-4906-94f8-d76998ec48b7"
		//GitUrl="ssh://git@aerosource2.aero.org:7999/wgllkr/import-cli.git"
		//DockerImage=getDockerImage()

		//BucketName="swagr-import-cli"
		//Region="us-east-1"
		//JarFileName="import-cli.jar"
	}

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
                sh '''
                docker build --progress=plain -t ericwarriner/test:latest .
                '''
            }
        }

        stage ('Publish Container') {
            steps {
                 withDockerRegistry(registry: [url: "https://registry.hub.docker.com:", credentialsId: 'dockerid']) {

   pushDockerImage()

                 }
            }
        }

    }
}