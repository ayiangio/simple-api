#!/bin/bash

# URL of your deployment's service
URL="http://localhost/items"

# Number of requests to send
REQUEST_COUNT=10000

# Interval between requests (in seconds)
INTERVAL=0.5

# Function to send a request and print the response
send_request() {
    RESPONSE=$(curl --header "Content-Type: application/json" --request POST --data '{"id":1000,"name":"sweet chocolate Ilise", "stock":81,"price":23488.67,"rating":4.0}' $URL -s -o /dev/null -w "%{http_code}")
    echo "Response: $RESPONSE"
}

# Loop to send requests
for ((i=1;i<=REQUEST_COUNT;i++)); do
    echo "Sending request $i..."
    send_request
    sleep $INTERVAL
done