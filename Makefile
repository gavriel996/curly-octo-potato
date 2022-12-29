start: start-docker-compose start-local-tunnel

full: build start-docker-compose start-local-tunnel

start-docker-compose:
	docker-compose up -d

stop:
	@echo "Cleaning up..."
	docker-compose down

clean:
	@echo "Cleaning up..."
	stop
	docker rmi jenkins:jcasc

start-local-tunnel:
	lt --port 8080 --subdomain gabriel-aurora-jenkins-720sxb

build:
	docker build -t jenkins:jcasc .

run-on-basic-container-test:
	docker run --name jenkins --rm -p 8080:8080 jenkins:jcasc
	
update-jobs:
	rm -rf jobs
	docker cp jenkins-jcasc:/var/jenkins_home/jobs .

