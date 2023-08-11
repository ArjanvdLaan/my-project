#  Navigate to directory of app
cd ~/flask-app

# Pull latest code
# git pull origin master

source venv/bin/activate

# install new dependencies
pip install -r requirements.txt

# Restart Flask app with systemd
systemctl restart  flask-app
