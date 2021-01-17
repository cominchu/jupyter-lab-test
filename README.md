
## commands

```sh
# build
$ docker-compose up -d --build
# connect
$ docker-compose exec python3 bash
# install dependencies
$ sh ./opt/install_jupyterlab.sh
# setup jupyter-lab
$ jupyter-lab --no-browser --port=8888 --ip=0.0.0.0 --allow-root
# you can access JupyterLab: http://localhost:8888/lab
```

```sh
# rm
$ docker-compose down
```

## requirements.txt

- This file is python environments after `sh ./opt/install_jupyterlab.sh`.
- Probably, I will add `pyproject.toml` and lock file produced by poetry instead of requirements.txt.

## link

- docker
  - https://qiita.com/reflet/items/4b3f91661a54ec70a7dc
  - https://hub.docker.com/_/python
