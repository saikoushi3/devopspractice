#!/bin/bash
#
#
#
#
############################
# author :koushik
# date   :20 march 2025
#  version :v1
#
#
#  thi script will report aws resource
#
#
set -x
#  ############################ aws s3
#  aws ec2
#  aws lambda
#  aws IAM user

#  list s3 bucket
 echo " print list of s3 buckets" > aws-usage-info
aws s3 ls >>aws-usage-info


# list of ec2 Instances
echo "LIst of ec2 Instances"  >>aws-usage-info

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'  >>aws-usage-info



# list of Lmbda funtions
echo "list of of lambda functions" >>aws-usage-info

aws lambda list-functions  >>aws-usage-info


# list of IAM users
#
echo "list of IAM users" >>aws-usage-info

 aws iam list-users | jq '.Users[].UserName' >>aws-usage-info

