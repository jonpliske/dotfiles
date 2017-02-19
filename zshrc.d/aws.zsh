# AWS CLI aliases
alias avpcd="aws ec2 describe-vpcs"
alias avpcdd="avpcd --filters 'Name=isDefault,Values=true'"
alias awsls="aws ec2 describe-instances --query 'Reservations[0].Instances[*].{Id:InstanceId,Ip:PublicIpAddress,State:State.Name}'"

jaws () {
    aws $@ | jq -s '.'
}


