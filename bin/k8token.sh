# kubectl config view -o jsonpath='{.users[?(@.name == "gke_ads-ftc-noc_us-central1-c_cloud-caching")].user.auth-provider.config.access-token}'
set -x
echo "${1}"
echo $(kubectl config view -o jsonpath=\'{.users[?(@.name == "${1}")].user.auth-provider.config.access-token}\')
