## Description

This is a playbook to install swift with the zerocloud middleware and ui enabled.

## Notes

_Pending ansible pull request https://github.com/ansible/ansible/pull/3930_

The rax module will need to be patched in the interim to support disk_config.

You'll need a version of ansible with the rax module and the pyrax libraryinstalled.

## How to setup

1. Create/choose ssh key for the new servers, let's denote its location by `PRV_KEY` and its name by `KEY_NAME`

2. Create/choose PyRax credentials file for your account, it usually looks like this:

    <pre>[rackspace_cloud]
    username = my_username
    api_key = 11111111111111111111111
    identity_type = rackspace</pre>

3. Copy `rackspace_vars.yaml.example` to `rackspace_vars.yaml`

4. Edit `rackspace_vars.yaml` file and change first variables to the credentials file location (full path only), `KEY_NAME` and region name, respectively.
Example:

    <pre>credentials: /home/zerovm/.rax-cred
    key_name: zerovm
    region: IAD</pre>

5. Set up environment variables:

    <pre>export RAX_REGION=IAD
    export RAX_CREDS_FILE=/home/zerovm/.rax-cred</pre>

6. Now run `./rax-deploy.sh` with the `PRV_KEY` filename as argument.