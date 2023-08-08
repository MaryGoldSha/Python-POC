from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_bmw():
  return 'Hello BMW!'
