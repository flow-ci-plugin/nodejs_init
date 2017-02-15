# ************************************************************
#
# those are default envs that you can use them at any step.
#
# ************************************************************

echo '===============DEFAULT ENVS======================='

echo "\$FLOW_PROJECT_NAME = $FLOW_PROJECT_NAME"
echo "\$FLOW_USER_ID = $FLOW_USER_ID"
echo "\$FLOW_PROJECT_ID = $FLOW_PROJECT_ID"
echo "\$FLOW_PROJECT_GIT_URL = $FLOW_PROJECT_GIT_URL"
echo "\$FLOW_PROJECT_LANGUAGE = $FLOW_PROJECT_LANGUAGE"
echo "\$FLOW_GIT_HOST = $FLOW_GIT_HOST"
echo "\$FLOW_JOB_ID = $FLOW_JOB_ID"
echo "\$FLOW_EVENT_ID = $FLOW_EVENT_ID"
echo "\$FLOW_EVENT_NUMBER = $FLOW_EVENT_NUMBER"
echo "\$FLOW_PHP_OLD_VERSION = $FLOW_PHP_OLD_VERSION"

echo '=================================================='
# ************************************************************
#
# This step will init your project
#
#   Variables used:
#     $FLOW_VERSION
#
#   Outputs:
#     $FLOW_NVM_VERSION
#     $FLOW_NODE_VERSION
#     $FLOW_NPM_VERSION
#
# ************************************************************

source $HOME/.nvm/nvm.sh
source $HOME/.rvm/scripts/rvm

flow_cmd "rvm use 2.1.0" --echo
flow_cmd "nvm --version" --echo
flow_cmd "nvm use $FLOW_VERSION" --echo
flow_cmd "node --version" --echo
flow_cmd "npm --version" --echo

FLOW_NVM_VERSION="$(nvm --version 2>&1)"
FLOW_NODE_VERSION="$(node -v 2>&1)"
FLOW_NPM_VERSION="$(npm -v 2>&1)"


