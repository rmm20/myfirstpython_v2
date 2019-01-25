from flask import Flask, Response

app = Flask(__name__)

@app.route("/")
def hello():
    return Response("Fiz o meu primeiro build usando Dockerfile")

if __name__ == "__main__":
    app.run("0.0.0.0", port=80, debug=True)
