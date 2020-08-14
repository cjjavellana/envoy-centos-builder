# Envoy CentOS Build Image 

## Building Envoy Using the CentOS Build Image

1. Build build-image

	```bash
	$ docker build -t envoy-build-image:latest .
	```

2. Checkout Envoy

	```bash
	$ git clone https://github.com/envoyproxy/envoy.git
	```

3. Start Build Image & Mount Envoy

	```bash
	$ docker run -i -v $(pwd):/tmp -m 2g --oom-kill-disable --entrypoint /bin/bash -t envoy-build-image:latest
	```

4. Build
	
	Inside the container
	```bash
	$ cd /tmp/envoy
	$ bazel build -c opt //source/exe:envoy-static
	```
