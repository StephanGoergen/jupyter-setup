# Jupyter Notebook + Anaconda + Docker

## Dockerized data science environment

### Requirements:
  * [docker](https://docs.docker.com/) (`brew cask install docker`)
  * [docker-machine](https://docs.docker.com/machine/get-started/) (comes with recent docker distribution)
  * [virtualbox](https://www.virtualbox.org/) (`brew cask install virtualbox`)

### Installation:
  1. Install docker
  1. Install virtualbox
  1. Create docker machine: `docker-machine create --driver virtualbox dev` 
  1. Pull image: `docker pull sgoergen/jupyter-setup:latest`
  1. Run container: `docker run -dp 8888:8888 -v <PROJECT_DIRECTORY>:/home/ds/notebooks sgoergen/jupyter-setup` or `bash run_container.sh <PROJECT_DIRECTORY>`
  1. Open notebook in browser: `open http://$(docker-machine ip dev):8888`
  1. Enter password: `haskell`

`<PROJECT_DIRECTORY>` is the working directory of your data science project. The docker container has read/write access to that directory. 

### Customization:

If you want to add dependencies, there are two ways:

1) Enter the running container (`docker exec -it sgoergen/jupyter-test bash`) and install the dependency, e.g. `conda install scrapy`. This a fast short-term solution.
2) Add the dependency to respective requirements file and rebuild the image: `bash build_container.sh`.
