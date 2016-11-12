#!/bin/sh

autossh -i ~/.ssh/google_compute_engine rhow@$(gcloud compute instances list | ag $1 | awk '{print $5}')
