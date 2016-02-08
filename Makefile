build:
	docker build -t sjsrey/lima .

run:
	docker run -d -p 8888:8888 -v $(shell pwd):/home/jovyan/work sjsrey/lima
