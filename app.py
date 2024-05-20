from flask import Flask

# Crear una instancia de la aplicación Flask
app = Flask(__name__)

# Ruta para la página principal
@app.route('/')
def index():
    return '<h1>Bienvenido a mi aplicación web!</h1><p>Esta es una página de ejemplo.</p>'

# Ejecutar la aplicación en el servidor de desarrollo si este archivo es ejecutado directamente
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=80)
