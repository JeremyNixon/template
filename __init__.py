from flask import Flask
from flask_sqlalchemy import SQLAlchemy
import json
import urllib3

app = Flask(__name__)

import routes
    
