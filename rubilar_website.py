from flask import Flask, render_template
import socket

app = Flask(__name__)

@app.route('/')
def index():
    ip_address = socket.gethostbyname(socket.gethostname())
    return render_template('index.html', name='Sebastian Rubilar', ip_address=ip_address)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8889,  debug=True)
