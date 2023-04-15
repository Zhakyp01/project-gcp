#!/bin/bash

sudo apt update
# install kubectl and gcp plugin
sudo apt-get install kubectl -y
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin -y
sudo apt-get -y install tinyproxy && sudo apt=get -y install kubectl && sudo systemctl start tinyproxy && sudo systemctl enable tinyproxy

# gcloud container clusters get-credentials ${cluster_name} --zone ${zone} --project ${project_id}
# gcloud container clusters get-credentials private-cluster-1 --zone us-central1-a --project student-project-379814
gcloud container clusters get-credentials preview-deploys --zone us-west1-b --project my-project-test-382316
curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
sudo apt-get install apt-transport-https -y
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all   main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm -y
# kubectl create secret generic test-db-secret --from-literal=PGHOST=${} --from-literal=username=postgres --from-literal=password=postgres

 

curl -LJO "https://gitlab-runner-downloads.s3.amazonaws.com/latest/deb/gitlab-runner_amd64.deb"
sudo dpkg -i gitlab-runner_amd64.deb -y
sudo curl -L --output /usr/local/bin/gitlab-runner "https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64"
sudo chmod +x /usr/local/bin/gitlab-runner
sudo useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash
sudo gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
sudo gitlab-runner status
sudo echo 'gitlab-runner ALL=(ALL:ALL) ALL' >> /etc/sudoers.d/gitlab-runner
sudo echo 'gitlab-runner ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/gitlab-runner
sudo gitlab-runner register \
  --non-interactive \
  --url "https://gitlab.com/" \
  --registration-token "GR13489412-DDDfKer3xVjzH4tvxv" \
  --description "shell-runner" \
  --executor "shell"

# export PGHOST=${db_endpoint}
# export PGPASSWORD="postgres"
sudo apt-get update
sudo apt-get install postgresql-client
# kubectl create ns gcp
# kubectl create secret generic postgres-secret -n gcp --from-literal=PGPASSWORD="\$(echo -n 'postgres' | base64)" --from-literal=PGUSER="\$(echo -n 'postgres' | base64)" --from-literal=PGDATABASE="\$(echo -n 'postgres' | base64)" --from-literal=PGHOST="\$(echo -n '${db_endpoint}' | base64)"
# psql -h $PGHOST -p 5432 -U postgres -d postgres > /home/ubuntu/pos.sql
# echo "Tables created successfully!"
