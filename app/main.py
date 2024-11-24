from flask import Flask, request



def create_app():
    app = Flask(__name__)

    with open("logs.txt", "+a") as logs:
        logs.write("Logi\n")

    return app

app = create_app()
    
@app.route("/", methods=["GET"])
def whats_my_ip():
    print(request.args.get("time"))
    return request.remote_addr

app.run(host="0.0.0.0", port=5000)
