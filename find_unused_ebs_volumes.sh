!#/bin/sh

region=$1

aws ec2 describe-volumes --region ${region} --filters Name=status,Values=available|jq '.Volumes[] | "\(.AvailabilityZone) \(.VolumeId)"'  > ununsed_volume.lst

echo "Unused volume List AZ wise"

cat unused_volume.lst
