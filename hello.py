from flask import Flask
 
app = Flask(__name__)
 
@app.route('/hello')
def helloWorldHandler():
    return 'Hello World from Flask!'