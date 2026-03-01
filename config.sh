# Minor edit
#!/bin/bash

# Configuration variables
PIPELINE_NAME="my-pipeline"
BUILD_DIRECTORY="build"
TEST_DIRECTORY="test"
DEPLOY_DIRECTORY="deploy"

# Load environment variables
if [ -f ".env" ]; then
  source .env
fi