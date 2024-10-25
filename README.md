# ee-25-test

Testing EE builds against the AAP 2.5 ee-minimal base image.  This repo uses git-lfs for storing large files.

Before running the `build-ee.sh` script, set your Automation Hub token in the following environment variables:
```
export ANSIBLE_GALAXY_SERVER_CERTIFIED_TOKEN=<your_token>
export ANSIBLE_GALAXY_SERVER_VALIDATED_TOKEN=<your_token>
```
