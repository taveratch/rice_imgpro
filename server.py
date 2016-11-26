from flask import request, Flask
from flask.ext.cors import CORS
from werkzeug.utils import secure_filename
from pprint import pprint
import subprocess, json
import shutil

app = Flask(__name__)
CORS(app)

@app.route('/upload', methods=['POST'])
def upload():
    f = request.files['file']
    path = 'uploads/' + secure_filename(f.filename)
    f.save(path)
    try:
        subprocess.call("python Zx.py " + path + ' result/1.txt result/api_result.png', shell=True)
    except:
        pass
    subprocess.call("python analyse.py result/1.txt result/2.txt", shell=True)
    subprocess.call("python cat.py result/2.txt", shell=True)

    with open('result/api_result.txt') as data_file:
        data = json.load(data_file)

    pprint(data)
    return json.dumps(data)

@app.route('/upload2', methods=['POST'])
def upload2():
    f = request.form['file_src']
    file = open(f, 'r')
    path = 'uploads/' + secure_filename(file.name)
    shutil.copyfile(f, path)

    try:
        subprocess.call("python Zx.py " + path + ' result/1.txt result/api_result.png', shell=True)
    except:
        pass
    subprocess.call("python analyse.py result/1.txt result/2.txt", shell=True)
    subprocess.call("python cat.py result/2.txt", shell=True)

    with open('result/api_result.txt') as data_file:
        data = json.load(data_file)

    pprint(data)
    return json.dumps(data)
