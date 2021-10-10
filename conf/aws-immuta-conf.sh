#!/bin/bash

export PREFIX="art-immuta"

export AWS_PROFLE="${PREFIX}-iam"
export AWS_REGION="us-east-1"
export SSH_PUB_KEY="${PREFIX}-sshkey"


#=======
# EKS
#=======
export EKS_CLUSTER_NAME="${PREFIX}-eks"
export EKS_K8S_VERSION="1.17"
export EKS_NODEGROUP_NAME="${PREFIX}-eks-workers"
export EKS_EC2_INSTANCE_TYPE="m5.xlarge"
export EKS_NUMBER_OF_NODES=3
#============


#============
# S3
#============
export S3_BUCKET="${PREFIX}-s3"
export S3_BUCKET_PREFIX="backups"
