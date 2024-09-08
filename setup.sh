# Create virtual environment 
python3 -m venv .venv
. .venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Copy systemctl service to /etc/systemd/system/
sudo cp honeypot-checker-server.service /etc/systemd/system/

# Enable systemctl task
sudo systemctl enable --now honeypot-checker-server
sudo systemctl restart honeypot-checker-server
sleep 3
sudo systemctl status honeypot-checker-server
