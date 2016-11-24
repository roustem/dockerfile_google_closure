# Dockerfile for Google Closure Tools

This project is used to build a docker image with Google Closure Tools.

## Usage

Creating image:

```bash
make image
```

Publishing image to Docker Hub:
```bash
docker login
```

Running closure compiler:

```bash
docker run -it --rm -v $PWD:/workdir roustem/google_closure --version
docker run -it --rm -v $PWD:/workdir roustem/google_closure \
	--js_output_file /workdir/out.min.js \
	--language_in ECMASCRIPT5 \
	--language_out ECMASCRIPT5 \
	--use_types_for_optimization \
	/workdir/file1.js \
	/workdir/file2.js \
	/workdir/file3.js
```
