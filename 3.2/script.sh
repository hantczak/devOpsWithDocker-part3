#!/bin/bash

git clone https://github.com/hantczak/GitHubRepositoryViewer.git
ls -a
docker build -t hantczak/github-repository-viewer:latest ./GitHubRepositoryViewer/   
docker login
docker push hantczak/github-repository-viewer:latest
