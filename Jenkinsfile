pipeline{
    agent any
    stages("build"){
        steps{
            echo 'build'
            mvn compile
        }
    }
    stages("test"){
        steps{
              echo 'test'
        }
    }
    stages("deploy"){
        steps{
              echo 'deploy'
        }
    }



}