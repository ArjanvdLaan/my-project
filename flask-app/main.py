# Import what we need from flask
from flask import Flask

# Create a Flask app inside `app`
app = Flask(__name__)


# Assign a function to be called when the path `/` is requested
@app.route("/")
def index():
    return "Hellooooooooo00000000oooioueeeeeeeeeeaaaaaaaaouoiuooowww, worldyyyyyyyyyyyyyyyyiiiiioooooo!"


@app.route("/cow")
def cow():
    return "MOoo0000oooOOOO0000oooOO00000000000OOOOOOOOOOOOOOOOOEEEEEEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAIIIUUUUUUUOOOOOOOOOOOOOO!"
