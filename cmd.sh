#!/bin/bash - 
#===============================================================================
#
#          FILE: cmd.sh
# 
#         USAGE: ./cmd.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 02/08/2019 19:29
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
set -e

if [ "$ENV" = 'DEV' ]; then
    echo "Running Development Server"
    exec python "identidock.py"
else 
    echo "Running Production Server"
    exec uwsgi --http 0.0.0.0:9090 --wsgi-file /app/identidock.py --callable app --stats
    0.0.0.0:9191
fi


