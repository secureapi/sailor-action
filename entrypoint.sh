#!/bin/sh -l

echo "Hello $1"
cat > .secureapi.yml << EOL
url: "$1"
username: "$2"
accessKey: "$3"
EOL
sailor run
