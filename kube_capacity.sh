# Get cluster current capacity
kube-capacity

# Get cluster current capacity with pods breakdown
kube-capacity --pods

# Get cluster current capacity and utilization
kube-capacity --util

# Displaying available resources
kube-capacity --available

# Roll over all clusters in your kubectl contexts
for a in $(kubectl ctx); do echo -e "\n---$a"; kubectl ctx $a; kube-capacity; done

# Roll over all clusters in your kubectl contexts and get just summary of each cluster
for a in $(kubectl ctx); do echo -e "\n---$a"; kubectl ctx $a; kube-capacity| grep -B 1 "\*"; done