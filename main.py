from flask import Flask, jsonify, request

app = Flask(__name__)


@app.route('/')
def helloworld():
        return "Hello, Devops World!"
@app.route('/health')		
def health_check():
	return 'OK', 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=9001)

