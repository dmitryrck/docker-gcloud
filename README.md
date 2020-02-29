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
