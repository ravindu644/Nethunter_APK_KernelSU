from flask import Flask, request, Response, redirect, url_for, send_from_directory, abort, render_template_string
import os
import netifaces
import functools

SCRIPT_FOLDER = '/sdcard/nh_files/web-server/web-scripts'
LOOT_FOLDER = '/sdcard/nh_files/web-server/loot'

os.makedirs(SCRIPT_FOLDER, exist_ok=True)
os.makedirs(LOOT_FOLDER, exist_ok=True)

app = Flask(__name__)

USERNAME = 'admin'
PASSWORD = 'strongpassword123'

def check_auth(username, password):
    return username == USERNAME and password == PASSWORD

def authenticate():
    return Response(
        'Login required', 401,
        {'WWW-Authenticate': 'Basic realm="Login Required"'}
    )

def requires_auth(f):
    @functools.wraps(f)
    def decorated(*args, **kwargs):
        auth = request.authorization
        if not auth or not check_auth(auth.username, auth.password):
            return authenticate()
        return f(*args, **kwargs)
    return decorated

INDEX_HTML = '''
<!doctype html>
<title>File Server UI</title>
<h2>Available Script Files:</h2>
<ul>
  {% for file in files %}
    <li><a href="{{ file }}">{{ file }}</a></li>
  {% else %}
    <li><em>No files found</em></li>
  {% endfor %}
</ul>

<h2>Upload a Script File</h2>
<form method=post enctype=multipart/form-data action="{{ url_for('upload_script') }}">
  <input type=file name=file required>
  <input type=submit value=Upload>
</form>

<hr>

<h2>Collected Loot:</h2>
<ul>
  {% for file in loot_files %}
    <li><a href="{{ url_for('serve_loot', filename=file) }}">{{ file }}</a></li>
  {% else %}
    <li><em>No loot files found</em></li>
  {% endfor %}
</ul>
'''

@app.route('/', methods=['GET'])
@requires_auth
def index():
    files = os.listdir(SCRIPT_FOLDER)
    loot_files = os.listdir(LOOT_FOLDER)
    return render_template_string(INDEX_HTML, files=files, loot_files=loot_files)

@app.route('/upload', methods=['POST'])
@requires_auth
def upload_script():
    if 'file' not in request.files:
        return "No file part", 400
    file = request.files['file']
    if file.filename == '':
        return "No selected file", 400

    filename = file.filename
    if '..' in filename or filename.startswith('/'):
        return "Invalid filename", 400

    save_path = os.path.join(SCRIPT_FOLDER, filename)
    file.save(save_path)
    return redirect(url_for('index'))

@app.route('/loot', methods=['POST'])
def receive_loot():
    # Loot receiving remains open (can be locked down if you want)
    try:
        filename = request.args.get('filename', 'loot.txt')
        if '..' in filename or filename.startswith('/'):
            abort(400)

        if 'file' in request.files:
            f = request.files['file']
            save_path = os.path.join(LOOT_FOLDER, filename)
            f.save(save_path)
        else:
            data = request.get_data()
            save_path = os.path.join(LOOT_FOLDER, filename)
            with open(save_path, 'wb') as f:
                f.write(data)

        return 'Loot received\n'
    except Exception as e:
        return f'Error saving loot: {e}\n', 500

@app.route('/loot/<filename>')
@requires_auth
def serve_loot(filename):
    if '..' in filename or filename.startswith('/'):
        abort(400)
    full_path = os.path.join(LOOT_FOLDER, filename)
    if not os.path.isfile(full_path):
        abort(404)
    return send_from_directory(LOOT_FOLDER, filename)

@app.route('/<filename>')
def serve_script(filename):
    if filename == '' or filename == 'upload' or filename == 'loot':
        abort(404)
    if '..' in filename or filename.startswith('/'):
        abort(400)
    if not os.path.isfile(os.path.join(SCRIPT_FOLDER, filename)):
        abort(404)
    return send_from_directory(SCRIPT_FOLDER, filename)

def get_bind_ip():
    addrs = []
    for iface in netifaces.interfaces():
        iface_addrs = netifaces.ifaddresses(iface).get(netifaces.AF_INET, [])
        for addr in iface_addrs:
            ip = addr.get('addr')
            if ip and not ip.startswith('127.'):
                addrs.append(ip)
    addrs = sorted(set(addrs))

    print("Available IP addresses to bind:")
    for i, ip in enumerate(addrs, 1):
        print(f"{i}: {ip}")
    print("0: 0.0.0.0 (all interfaces)")

    while True:
        choice = input("Choose an IP to bind (number): ").strip()
        if choice.isdigit():
            choice = int(choice)
            if choice == 0:
                return '0.0.0.0'
            elif 1 <= choice <= len(addrs):
                return addrs[choice - 1]
        print("Invalid choice. Try again.")

if __name__ == '__main__':
    ip_to_bind = get_bind_ip()
    print(f"[*] Binding to IP: {ip_to_bind}")
    app.run(host=ip_to_bind, port=81, debug=False)
