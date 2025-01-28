from flask import Flask, render_template

app = Flask(__name__)

# @app.route("/ola")
# def hello_world():
#     return "<p>Olá, mundo!</p>"

@app.route("/")
def main_page():
    return render_template("home.html")

# from model.interface import Interface
# # from model.vingador import Vingador

# def main():
    
#     Interface()

# if __name__ == '__main__':
#     main()