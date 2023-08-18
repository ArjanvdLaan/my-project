# Exit script on any error
set -e

# SSH into the VPS
ssh -vvv -T -i "~/.ssh/github_actions" -o StrictHostKeyChecking=no root@64.226.82.233 << EOF

# Navigate to directory of app
cd ~/Flask-app

# Pull latest code
git pull origin master

# activate virtual environment
source ~/venv/bin/activate

# install new dependencies
pip install -r requirements.txt

# Restart Flask app with systemd
sudo systemctl restart flask-app

EOF

