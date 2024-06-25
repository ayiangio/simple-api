#!/bin/bash

# URL of your deployment's service
URL="http://localhost/items"

# Number of requests to send
REQUEST_COUNT=10000

# Interval between requests (in seconds)
INTERVAL=0.5

# Function to send a request and print the response
send_request() {

    RESPONSE=$(curl --header "Content-Type: application/json" --request  DELETE  $URL/$1 -s -o /dev/null -w "%{http_code}")
    echo "Response: $RESPONSE testing $1"
}

# Loop to send requests
for ((i=1;i<=REQUEST_COUNT;i++)); do
    echo "Sending request $i..."
    send_request $i
    sleep $INTERVAL
done