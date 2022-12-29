pipeline {
    agent any
    stages {
        stage('Pre stage') {
            steps {
		echo "Running ${env.BUILD_ID} on ${env.JENKINS_URL}"
		sh 'whoami'
            }
        }
	stage('Run python script') {
            steps {
                echo 'Starting main job...'
                sh 'python3 main.py'
            }
        }
    }
}
