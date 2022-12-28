start: start-docker-compose start-local-tunnel

start-docker-compose:
	docker-compose up -d

clean:
	docker-compose down
        @echo "Cleaning up..."

start-local-tunnel:
	lt --port 8080 --subdomain gabriel-aurora-jenkins-720sxb

create-jenkins-casc-image:
	docker build -t jenkins:jcasc .

run-on-basic-container:
	docker run --name jenkins --rm -p 8080:8080 --env JENKINS_ADMIN_ID=admin --env JENKINS_ADMIN_PASSWORD=password jenkins:jcasc

update-jenkins-image:
	@echo "Updating jenkins image..."

