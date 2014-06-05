docker-gitbucket
================

dockerfile for gitbucket. run on tomcat

#####docker install for unubtu 14.04LTS

`sudo apt-get install docker.io`

#####pull image unubtu

`sudo docker.io pull ubuntu:14.04`

#####create gitbucket repositories directory

`mkdir ~/gitbucket`

#####docker build

`git clone https://github.com/tenbo07/docker-gitbucket.git`

`cd docker-gitbucket`

`sudo docker.io build ubuntu:gitbucket .`

#####docker run (mount gitbucket dir)

`sudo docker.io run -d -p 8080:8080 -v ~/gitbucket:/root/.gitbucket:rw ubuntu:gitbucket`
