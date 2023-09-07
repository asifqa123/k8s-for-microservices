#!/bin/sh

# Perform the Kubeadm reset pre-flight checks
sudo kubeadm reset phase preflight

# Print a message at the end of the script
echo "NOW RUN THE JOIN COMMAND FROM MASTER TO WORKER NOE"