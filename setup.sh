# Create virtual environment 
python3 -m venv .venv
. .venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Copy systemctl service to /etc/systemd/system/
if [ "$USE_GCP_OR_AZURE" ]; then
	sudo cp honeypot-checker-server-other.service /etc/systemd/system/
	TASK="honeypot-checker-server-other"
else
	sudo cp honeypot-checker-server.service /etc/systemd/system/
	TASK="honeypot-checker-server"
fi


# Enable systemctl task
sudo systemctl enable --now $TASK
sudo systemctl restart $TASK
sleep 3
sudo systemctl status $TASK
