from flask import Flask, jsonify
from datetime import datetime
import os

app = Flask(__name__)


@app.route("/")
def home():
    return jsonify({
        "application": "AWS DevOps Demo API",
        "status": "running",
        "environment": os.getenv("ENVIRONMENT", "local")
    })


@app.route("/health")
def health():
    return jsonify({
        "status": "healthy"
    }), 200


@app.route("/info")
def info():
    return jsonify({
        "application": "AWS DevOps Demo API",
        "version": "1.0.0",
        "environment": os.getenv("ENVIRONMENT", "local"),
        "timestamp": datetime.utcnow().isoformat() + "Z"
    })


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)