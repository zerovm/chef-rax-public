## How to setup

1. Create/choose ssh key for the new servers, let's denote its location by `PRV_KEY` and its name by `KEY_NAME`
2. Create/choose PyRax credentials file for your account, it usually looks like this:

    <pre>[rackspace_cloud]
    username = my_username
    api_key = 11111111111111111111111
    identity_type = rackspace</pre>

3. Edit `rackspace_vars.yaml` file and change first variables to the credentials file location (full path only), `KEY_NAME` and region name, respectively.
Example:

    <pre>credentials: /home/zerovm/.rax-cred
    key_name: zerovm
    region: IAD</pre>

4. Set up environment variables:

    <pre>export RAX_REGION=IAD
    export RAX_CREDS_FILE=/home/zerovm/.rax-cred</pre>

5. Now run `./rax-deploy.sh` with the `PRV_KEY` filename as argument.

