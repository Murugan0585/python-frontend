from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>Hello from Python Frontend (Flask)!</h1>"

if __name__ == "__main__":
    # Listen on all interfaces so container can expose port
    app.run(host="0.0.0.0", port=5000)
