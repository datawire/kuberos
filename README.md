# Kuberos Service

The [Kuberos](https://github.com/negz/kuberos) service provides Authentication to a Kubernetes cluster.

# Configuration

The following environment variables need to be set so that Forge can successfully deploy the service:

| Name                | Description                                              |
| ------------------- | -------------------------------------------------------- |
| KUBE_API_SERVER_URL | URL of the Kubernetes API server                         |
| KUBE_API_SERVER_CA  | Certificate authority data for the Kubernetes API server |
| OIDC_CLIENT_SECRET  | OpenID Connect client secret                             |
| OIDC_CLIENT_ID      | OpenID Connect client ID                                 |

