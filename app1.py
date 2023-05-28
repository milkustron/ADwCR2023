
from flask import Flask

# Create a flask
app = Flask(__name__)

# Create an API end point
@app.route('/hello', methods=['GET'])
def say_hello():
    return "Hello World"

@app.route('/', methods=['GET'])
def say_he():
    return "Hello z innej strony"


if __name__ == '__main__':
    app.run()
