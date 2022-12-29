.PHONY: start full stop clean build start-docker-compose delete-docker-image start-local-tunnel update-jobs run-on-basic-container-test

start: start-docker-compose start-local-tunnel

full: build start-docker-compose start-local-tunnel

start-docker-compose:
	docker-compose up -d

clean: stop delete-docker-image

stop:
	docker-compose down

delete-docker-image:
	docker rmi jenkins:jcasc


start-local-tunnel:
	node_modules/localtunnel/bin/lt.js --port 8080 --subdomain gabriel-aurora-jenkins-720sxb

build:
	docker build -t jenkins:jcasc .

run-on-basic-container-test:
	docker run --name jenkins --rm -p 8080:8080 jenkins:jcasc
	
update-jobs:
	rm -rf jobs
	docker cp jenkins-jcasc:/var/jenkins_home/jobs .

