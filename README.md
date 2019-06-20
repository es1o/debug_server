# debug_server

This is a repository with simple web server that exposes some debug information from kubernetes environment.

## Endpoints

All outputs as json.

### GET /env

Prints all environemnt variables.

### GET /healthz

Returns health status.

## Sample k8s yaml file

`kubectl apply -f sample.yaml` - creates deployment with debug_server
