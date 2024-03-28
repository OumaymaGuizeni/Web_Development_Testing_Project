from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def Main_Page():
    return render_template('index.html')

@app.route('/our_team')
def our_team_page():
    return render_template('our_team.html')

@app.route('/content')
def content_page():
    return render_template('content.html')

if __name__ == '__main__':
    app.run(debug=True)
