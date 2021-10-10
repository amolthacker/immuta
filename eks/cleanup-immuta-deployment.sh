#!/bin/bash

release="${1:-immuta}"
namespace="${2:-default}"

echo "Namespace: ${namespace}"
echo "Release: ${release}"

resource_types=(
    deployments
    replicasets
    statefulsets
    daemonsets
    cronjobs
    jobs
    configmaps
    secrets
    services
    endpoints
    ingress
    serviceaccounts
    roles
    rolebindings
    pvc
    pods
)

for resource in "${resource_types[@]}"; do
    echo "==> ${resource}"
    kubectl --namespace ${namespace} delete ${resource} -l app.kubernetes.io/name=immuta,app.kubernetes.io/instance=${release} --force --cascade=false --grace-period 0
done
