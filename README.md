docker-gitbucket
================

dockerfile for gitbucket. run on tomcat

1. create gitbucket repositories directory

`mkdir ~/gitbucket`

2. docker build

`git clone`

`cd docker-gitbucket`

`sudo docker.io build ubuntu:gitbucket .`

3. docker run 

`sudo docker.io run -d -p 8080:8080 -v ~/gitbucket:/root/.gitbucket:rw ubuntu:gitbucket`
