from flask import Flask, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  # permite chamadas do Next.js

@app.route("/stats")
def stats():
    # Dados dummy para testar integração
    return jsonify({
        "total_despesas": 1200.50,
        "categorias": {
            "alimentação": 400,
            "transportes": 200,
            "lazer": 300,
            "outros": 300.50
        }
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
