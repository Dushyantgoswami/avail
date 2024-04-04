#!/bin/bash

while true; do
    # Check if the node is running
    if ! pgrep -f 'avail_light' >/dev/null; then
        echo "Node is not running. Restarting..."
        # Restart the node
        curl -sL1 http://avail.sh | bash
        sleep 10  # Wait for 10 seconds before checking again
    fi
    sleep 60  # Check every 60 seconds
done
