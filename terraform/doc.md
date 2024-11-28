! Under construction

# To get configuration
aws eks update-kubeconfig --region "us-east-1" --name "eks-simple"

# To get dns name of load balancer
aws elb describe-load-balancers --query "LoadBalancerDescriptions[1].DNSName" --output text 