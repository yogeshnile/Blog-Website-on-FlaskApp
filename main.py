from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/contact')
def about():
    
    return render_template('contact.html')

@app.route('/about')
def contact():
    
    return render_template('about.html')

@app.route('/post')
def post():
    
    return render_template('post.html')


app.run(debug=True)