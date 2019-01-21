# -*- coding: utf-8 -*-

"""
This is where all the routes and controllers are defined.
"""

from flask import render_template, Blueprint

api_blueprint = Blueprint('api_blueprint', __name__)

@api_blueprint.route('/')
def index():
    # Controller logic should go here
