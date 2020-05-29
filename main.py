from flask import Flask, render_template, request, session, redirect
from flask_sqlalchemy import SQLAlchemy
import json
import pymysql
import os
from datetime import datetime
from flask_mail import Mail

local_server = True

with open('config.json','r') as c:
    params = json.load(c)["params"]

app = Flask(__name__)
app.secret_key = 'super-secret-key'
app.config['UPLOAD_FOLDER'] = params['upload_location']
app.config.update(
    MAIL_SERVER = 'smtp.gmail.com',
    MAIL_PORT = '465',
    MAIL_USE_SSL = True,
    MAIL_USERNAME = params['gmail-user'],
    MAIL_PASSWORD = params['gmail-password']
)
mail = Mail(app)
if(local_server):
    app.config["SQLALCHEMY_DATABASE_URI"] = params['local_uri']
else:
    app.config["SQLALCHEMY_DATABASE_URI"] = params['prod_uri']
db = SQLAlchemy(app)

class Contacts(db.Model):
    #=================contacts table colums name============
    #========== no, name, email, phone_no, msg, date ============
    no = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(20), nullable=False)
    email = db.Column(db.String(20), nullable=False)
    phone_no = db.Column(db.String(12), nullable=False)
    msg = db.Column(db.String(200), nullable=False)
    date = db.Column(db.String(50), nullable=True)

class Posts(db.Model):
    #=================posts table colums name============
    #========== no, title, slug, content, date ============
    no = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(20), nullable=False)
    tag_line = db.Column(db.String(50), nullable=False)
    slug = db.Column(db.String(30), nullable=False)
    content = db.Column(db.String(500), nullable=False)
    date = db.Column(db.String(50), nullable=True)
    img_file = db.Column(db.String(50), nullable=True)

@app.route('/')
def home():
    post = Posts.query.filter_by().all()
    return render_template('index.html', posts=post)

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
        # Send a email below funtion use=============
        '''
        mail.send_message(
            'New Message from ' + name,
            sender=email,
            recipients= [params['gmail-user']],
            body= message + "\n" + phone
        )'''
        # Email send block end ====================
    return render_template('contact.html')

@app.route('/about')
def about():
    return render_template('about.html')

@app.route('/post/<string:post_slug>',methods=['GET'])
def post_route(post_slug):
    post = Posts.query.filter_by(slug=post_slug).first()
    return render_template('post.html', post=post)

@app.route('/edit/<string:sno>', methods=['GET','POST'])
def edit(sno):
    if ('user' in session and session['user'] == params['admin-user']):
        if request.method == 'POST':
            box_title = request.form.get('title')
            tline = request.form.get('tline') 
            slug = request.form.get('slug')
            content = request.form.get('content')
            img_file = request.form.get('img_file')
            if sno == '0':
                post = Posts(title=box_title,tag_line=tline,slug=slug,content=content,date=datetime.now(),img_file=img_file)
                db.session.add(post)
                db.session.commit()
            else:
                post= Posts.query.filter_by(no=sno).first()
                post.title = box_title
                post.slug = slug
                post.content = content
                post.tag_line = tline
                post.img_file = img_file
                post.date = datetime.now()
                db.session.commit()
                return redirect('/edit/'+sno)
        posts= Posts.query.filter_by(no=sno).first()
        return render_template('edit.html',post = posts)
    else:
        return render_template('login.html')

@app.route('/delete/<string:sno>', methods=['GET','POST'])
def delete(sno):
    if ('user' in session and session['user'] == params['admin-user']):
        post= Posts.query.filter_by(no=sno).first()
        db.session.delete(post)
        db.session.commit()
        return redirect('/dashboard')
    else:
        return render_template('login.html')

@app.route('/dashboard', methods=['GET','POST'])
def login():
    if ('user' in session and session['user'] == params['admin-user']):
        posts = Posts.query.all()
        return render_template('dashboard.html', post=posts)
    if request.method == 'POST':
        username = request.form.get('uname')
        userpass = request.form.get('pass')
        if (username == params['admin-user'] and userpass == params['admin-pass']):
            session['user'] = username
            posts = Posts.query.all()
            return render_template('dashboard.html', posts = posts)
    else:
        error = 'Wrong user id and Password'
        return render_template('login.html',error=error)

@app.route('/uploader', methods=['GET','POST'])
def upload():
    if ('user' in session and session['user'] == params['admin-user']):
        if request.method == 'POST':
            f = request.files['file1']
            if f.filename == '':
                error = 'file not selected'
                return render_template('dashboard.html',error=error)
            else:
                f.save(os.path.join(app.config['UPLOAD_FOLDER'],f.filename))
                return "upload sucess"
    else:
        return render_template('login.html')

@app.route('/logout')
def logout():
    session.pop('user')
    return render_template('login.html')

app.run(debug=True)