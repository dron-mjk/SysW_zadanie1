from flask import Flask, request, render_template




def create_app():
    app = Flask(__name__, template_folder="templates")

    with open("logs.txt", "+a") as logs:
        logs.write("Logi\n")

    return app

app = create_app()
    
@app.route("/", methods=["GET"])
def get_html():

    return render_template("base.html", ip=request.remote_addr)

app.run(host="0.0.0.0", port=5000)
