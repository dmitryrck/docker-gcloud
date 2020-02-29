# gcloud and kubectl

`gcloud` and `kubectl` inside docker.

Run:

```shell
$ docker run --rm -it \
  -e HOME \
  -u $(id -u):$(stat -c '%g' /var/run/docker.sock) \
  -v ${HOME}/where-to-save-gcloud:${HOME} \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /etc/passwd:/etc/passwd:ro \
  -v /etc/group:/etc/group:ro \
  -w ${HOME} \
  dmitryrck/gcloud bash
```

# #Protip

This is my `~/.bashrc` after I set up this in my machine (it has to be inside the running container):

```shell
source /etc/bash_completion
source <(kubectl completion bash)
```
