#!/bin/bash
aws ec2 disassociate-address --association-id eipassoc-0fa33b30
aws ec2 release-address --allocation-id eipalloc-6dc1a250
aws ec2 terminate-instances --instance-ids i-0c7d0efe0cf695110
aws ec2 wait instance-terminated --instance-ids i-0c7d0efe0cf695110
aws ec2 delete-security-group --group-id sg-2647625b
aws ec2 disassociate-route-table --association-id rtbassoc-f9021681
aws ec2 delete-route-table --route-table-id rtb-9fc7a7e6
aws ec2 detach-internet-gateway --internet-gateway-id igw-09b0896e --vpc-id vpc-aecfe7c8
aws ec2 delete-internet-gateway --internet-gateway-id igw-09b0896e
aws ec2 delete-subnet --subnet-id subnet-2e241875
aws ec2 delete-vpc --vpc-id vpc-aecfe7c8
echo If you want to delete the key-pair, please do it manually.
