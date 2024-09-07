# Honeypot Checker Server

In tandem with the AWS Lambda function that checks each honeypot, this
repository contains code for a simple FastAPI HTTP server, which returns 1 if
the traffic logger task (`scapy-writer`) is running and 0 otherwise.

## How to Run the Server

This server is meant to be run on each of our honeypots. Since they are all
`systemctl`-basedsystems, they can be set to run on system startup with a
`systemctl` task.

Clone this repository and run the `./setup.sh` script to write the task and
start the server.

Please note that the honeypots should be configured to accept HTTP traffic on
port 80. Additionally, Python 3 should be installed.


