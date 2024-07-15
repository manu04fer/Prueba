from flask import Flask, request, jsonify
from flask_cors import CORS, cross_origin

application = Flask(__name__)
cors = CORS(application)
application.config["CORS_HEADERS"] = "Content-Type"

@application.route("/api/")
def indice ():
    diccionario = {
        "mensaje":"Java, C++, python, dart, javascript"
    } 
    return diccionario