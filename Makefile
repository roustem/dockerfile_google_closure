image:
	docker build -t roustem/google_closure .

run:
	docker run -it --rm -v $PWD:/workdir roustem/google_closure
