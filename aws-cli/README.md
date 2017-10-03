## AWS Cli

The latest AWS Cli in docker container

### Installation

In order usage need to create bash script file with commands bellow

```
docker pull vitalibo/aws-cli:latest
docker run -it --rm --volume `pwd`:/mnt --workdir /mnt \
  -e AWS_ACCESS_KEY_ID=$1 -e AWS_SECRET_ACCESS_KEY=$2 -e AWS_DEFAULT_REGION=$3 \
  vitalibo/aws-cli:latest bash
```

### Usage

To run AWS Cli in new environment, you must specify AWS Access Key, AWS Secret Key and AWS Region and pass into bash script. Like this one:

```
aws-cli.sh <AWS_ACCESS_KEY_ID> <AWS_SECRET_ACCESS_KEY> <AWS_DEFAULT_REGION>
```

After this steps you can run your scripts in new AWS Cli environment.

### Links

- [Docker Hub](https://hub.docker.com/r/vitalibo/aws-cli/)
