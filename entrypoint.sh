#!/bin/sh -l

cat > .secureapi.yml << EOL
url: "$1"
username: "$2"
accessKey: "$3"
EOL
sailor run
