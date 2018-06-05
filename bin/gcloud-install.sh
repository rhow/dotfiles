GCLOUD_VER=174.0.0
INSTALL_DIR=~/Programs

# set -x
set -e

if [ ! -f ${INSTALL_DIR}/google-cloud-sdk-${GCLOUD_VER}-linux-x86_64.tar.gz ];
then
    wget --quiet --no-clobber https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GCLOUD_VER}-linux-x86_64.tar.gz
    mv google-cloud-sdk-${GCLOUD_VER}-linux-x86_64.tar.gz ${INSTALL_DIR}/
    tar xzf ${INSTALL_DIR}/google-cloud-sdk-${GCLOUD_VER}-linux-x86_64.tar.gz -C ${INSTALL_DIR}
fi

if [ -h /usr/bin/gcloud ]
then
    sudo rm /usr/bin/gcloud
fi
sudo ln -s ${INSTALL_DIR}/google-cloud-sdk/bin/gcloud /usr/bin/gcloud
     
if [ -h /usr/bin/gsutil ]
then
    sudo rm /usr/bin/gsutil
fi
sudo ln -s ${INSTALL_DIR}/google-cloud-sdk/bin/gsutil /usr/bin/gsutil

if [ -h /usr/bin/kubectl ]
then
    sudo rm /usr/bin/kubectl
fi
sudo ln -s ${INSTALL_DIR}/google-cloud-sdk/bin/kubectl /usr/bin/kubectl

sudo ln -s ${INSTALL_DIR}/google-cloud-sdk/bin/docker-credential-gcr /usr/bin/docker-credential-gcr
sudo ln -s ${INSTALL_DIR}/google-cloud-sdk/bin//docker-credential-gcloud /usr/bin/docker-credential-gcloud

gcloud --quiet components install alpha beta kubectl

# If listed in kubectl config view | grep cmd-path
# sudo mkdir -p /usr/lib/google-cloud-sdk/bin
# sudo ln -s ~/Programs/google-cloud-sdk/bin/gcloud /usr/lib/google-cloud-sdk/bin/gcloud
