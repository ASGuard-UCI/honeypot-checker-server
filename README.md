# Honeypot Checker Server

In tandem with the AWS Lambda function that checks each honeypot, this
repository contains code for a simple FastAPI HTTP server, which returns 1 if
the traffic logger task (`scapy-writer`) is running and 0 otherwise.

