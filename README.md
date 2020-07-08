# ark-docker-setups

Instalation:

- install docker
- install docker-compose
- ensure core project in /home/$USER/core folder

SSH setup:

- create authorized_keys file inside /builder directory
- copy public ssh key into authorized_keys

Build:

- cd builder
- sudo docker-compose build
- sudo docker-compose up -d

- use "ssh -p 122 root@IP" or "docker exec -it builder bash" to access instance and build files

Run nodes:

- cd into desired direcotry
- sudo docker-compose build
- sudo docker-compose up -d
