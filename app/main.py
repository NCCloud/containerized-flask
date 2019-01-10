import flask
import platform

app = flask.Flask(__name__)


@app.route('/')
def main_():
    return 'Python Version:' + platform.python_version() + ' Flask Version:' + flask.__version__


if __name__ == '__main__':
    app.run(debug=False, host='0.0.0.0', port=80)
