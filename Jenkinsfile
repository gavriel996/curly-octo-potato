basicPipeline {
    agent any
    environment {
        //TEST_ID  = credentials('jenkins-secret-test-id')
        //TEST_KEY = credentials('jenkins-secret-test-key')
    }
    stages {
        stage('Preinstall') {
            steps {
		echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
                echo 'Preinstalling...'
                sh 'apk add --no-cache python3 py3-pip'
            }
        }
	stage('Run python script') {
	    environment {
                //IN_STAGE_TEST  = credentials('jenkins-secret-in-stage-test')
            }
            steps {
                echo 'Preinstalling...'
                sh 'python3 main.py'
            }
        }
    }
}
