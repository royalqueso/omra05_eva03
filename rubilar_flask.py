from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def index():
    ip_address = request.remote_addr
    name = "Sebastian Rubilar"
    return f"La dirección IP desde donde estás conectado es: {ip_address}. Hola, mi nombre es {name}."

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
