# docker-nettools
Dockerfile for a simple container with network tools installed. 

This is useful for debugging network connectivity. It allows you to run a docker container on a particular machine and enter 
it using `docker exec` in order to test various network protocols and access. For example, testing if DNS is working between
the container and the host machine. Or testing if the container can properly see other containers running in the same virtual
network. 

There are also helm scripts for deploying it in a Kubernetes cluster. This allows you to test Kubernetes' networking. For example
checking that your pod can see services. 

# Usage for Docker

This docker image contains network tools. You can use it to learn, debug, and test network connectivity between your docker container, the host machine, other docker containers, and the outside network (whether lan, vlan, or internet). 

## Run the container in the bridge network: 
```
docker run -ti --rm danielcaldwell/nettools:1.0 bash
```

## Run the container in the host network: 

```
docker run -ti --rm --network host danielcaldwell/nettools:1.0 bash
```

## Run the container with your ssh files loaded
```
docker run -ti --rm --volume ~/.ssh:/root/.ssh danielcaldwell/nettools:1.0 bash
```

