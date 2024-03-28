from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/our_team')
def page1():
    return render_template('our_team.html')

@app.route('/content')
def page2():
    return render_template('content.html')

if __name__ == '__main__':
    app.run(debug=True)
