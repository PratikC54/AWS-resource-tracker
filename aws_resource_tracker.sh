#!/bin/bash

#########################
# Author: Pratik
# Date: 22/04/2025
# Version: v1
#
# This script will report the AWS resources usage
#
# #######################

# Resourses that we're going to track : 
#                      AWS S3
#                      AWS EC2
#                      AWS Lambda
#                      AWS IAM Users
#
set -x
# List s3 buckets
echo "Print list of S3 buckets"
aws s3 ls > resourceTracker

# List EC2 instanses
echo "Print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List lambda
 echo "Print list of lambda"
aws lambda list-functions >> resourceTracker

# List IAM Users
 echo "Print list of IAM Users"
aws iam list-users
