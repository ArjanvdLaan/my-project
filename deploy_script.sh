# SSH into the VPS
ssh -vvv -T -i "/tmp/deploy_key" -o StrictHostKeyChecking=no root@64.226.82.233 << EOF

# Navigate to directory of app
cd ~/flask-app

# Pull latest code
git pull origin master

# activate virtual environment
source venv/bin/activate

# install new dependencies
pip install -r requirements.txt

# Restart Flask app with systemd
sudo systemctl restart flask-app

EOF

