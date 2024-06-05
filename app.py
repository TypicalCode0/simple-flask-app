from flask import Flask, send_file

app = Flask(__name__)

@app.route('/')
def home():
    return '<h1>Welcome to My Simple Flask App!</h1><img src="/image">'

@app.route('/image')
def image():
    return send_file('image.jpg', mimetype='image/jpeg')

if __name__ == '__main__':
    app.run(host='0.0.0.0')
