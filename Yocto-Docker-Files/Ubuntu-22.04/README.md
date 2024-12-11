Build Docker:
'sudo docker build -t ubuntu22.04 .'

Run Dockers:
'sudo docker run --mount type=bind,source=/home/{user-name}/DockerFiles/Ububtu22.04,target=/mnt/SharedFiles -it ubuntu22.04 bash'
