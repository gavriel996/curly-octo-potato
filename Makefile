start: start-docker-compose start-local-tunnel

start-docker-compose:
	docker-compose up -d

clean:
	@echo "Cleaning up..."
	docker-compose down
	docker rmi jenkins:jcasc

start-local-tunnel:
	lt --port 8080 --subdomain gabriel-aurora-jenkins-720sxb

build:
	docker build -t jenkins:jcasc .

run-on-basic-container:
	docker run --name jenkins --rm -p 8080:8080 --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=admin jenkins:jcasc

update-jenkins-image:
	@echo "Updating jenkins image..."
	
update-jobs:
	docker cp jenkins:/var/jenkins_home/jobs .

