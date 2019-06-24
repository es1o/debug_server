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

## ENV variables

* `SERVER_PORT` => port that server listens on
* `ROOT_URL`    => due to limitation of EKS ALB ingress all traffic is redirected to ingress_path/ instead of /. This env variable determines additional paths for endpoint, eg. if ROOT_URL = esio, endpoints `/env` and `/esio/env` will work.
