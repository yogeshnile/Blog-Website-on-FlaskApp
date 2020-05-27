from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy
import pymysql
from datetime import datetime

app = Flask(__name__)
app.config["SQLALCHEMY_DATABASE_URI"] = 'mysql+pymysql://root:@localhost/blog'
db = SQLAlchemy(app)

class Contacts(db.Model):
    #=================contacts table colums name============
    #========== no, name, email, phone_no, msg, date ============
    
    no = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(20), nullable=False)
    email = db.Column(db.String(20), nullable=False)
    phone_no = db.Column(db.String(12), nullable=False)
    msg = db.Column(db.String(200), nullable=False)
    date = db.Column(db.String(120), nullable=True)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/contact', methods = ['GET','POST'])
def contact():
    if(request.method == 'POST'):
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        message = request.form.get('message')


        #=================contacts table colums name============
        #========== no, name, email, phone_no, msg, date ============

        entry = Contacts(name=name, email=email, phone_no=phone, msg=message, date=datetime.now())
        db.session.add(entry)
        db.session.commit()



    return render_template('contact.html')

@app.route('/about')
def about():
    
    return render_template('about.html')

@app.route('/post')
def post():
    
    return render_template('post.html')


app.run(debug=True)