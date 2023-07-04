# myapp

> App myapp is for practicing application delivery workflows and twelve-factor methodology.

# Summary

App myapp is for practicing application delivery workflows and twelve-factor methodology—see https://12factor.net/ page. The following procedure illustrates how to get up and running quick. Downstream deployment workflows can freely inject settings—config and secrets—as environment variables—excellent!

## Getting started

The following procedure describes how to build and run myapp.

1. Get this code.

   ```
   git clone git@github.com:mbigras/myapp.git
   cd myapp
   ```

1. Build your _`myapp:latest`_ Docker image.

   ```
   docker build --tag=myapp:latest .
   ```

1. Run your _`myapp`_ Docker container—accommodate the special case where _`myapp`_ Docker container already exists.

   ```
   docker rm --force myapp
   docker run \
   	--name=myapp \
   	--rm \
   	--interactive \
   	--env=ENV=docker-desktop \
   	--env=COLOR=periwinkleblue \
   	--env=CORNERS=round \
   	--env=PASSWORD=mylastname \
   	--env=TOKEN=t0k3n" \
   	--env=PORT=8080 \
   	--publish=8080:8080 \
   	myapp:latest
   ```
