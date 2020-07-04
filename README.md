# Blog Website on FlaskApp :notebook:
In this repo created a simple blog website using Flask App.

[![](https://camo.githubusercontent.com/2fb0723ef80f8d87a51218680e209c66f213edf8/68747470733a2f2f666f7274686562616467652e636f6d2f696d616765732f6261646765732f6d6164652d776974682d707974686f6e2e737667)](https://python.org)

In this website you can add, edit and delect blog. All blog are store in the [mysql](https://github.com/yogeshnile/Blog-Website-on-FlaskApp/blob/master/blog.sql) database.

## Database :dvd:
First to all in your pc are should be already installed [XAMPP](https://www.apachefriends.org/download.html) server.

Create a first database on your myphpadmin. Make sure database name should be **blog** than upload a [blog.sql](https://github.com/yogeshnile/Blog-Website-on-FlaskApp/blob/master/blog.sql) file in your database.

### Requirements :warning:
```python
from flask import Flask, render_template, request, session, redirect
from flask_sqlalchemy import SQLAlchemy
import json
import pymysql
import os
from datetime import datetime
from flask_mail import Mail

```


Website admin and password store in the [config.json](https://github.com/yogeshnile/Blog-Website-on-FlaskApp/blob/master/config.json) file

```json
"admin-user":"yogesh",
"admin-pass":"hello"
```


## Bug / Feature Request :man_technologist:
If you find a bug (the website couldn't handle the query and / or gave undesired results), kindly open an issue [here](https://github.com/yogeshnile/Blog-Website-on-FlaskApp/issues/new) by including your search query and the expected result.

If you'd like to request a new function, feel free to do so by opening an issue [here](https://github.com/yogeshnile/Blog-Website-on-FlaskApp/issues/new). Please include sample queries and their corresponding results.


## Connect with me! 🌐
Known on internet as **Yogesh Nile**

[<img target="_blank" src="https://img.icons8.com/bubbles/100/000000/linkedin.png" title="LinkedIn">](https://bit.ly/2Ky3ho6)  [<img target="_blank" src="https://img.icons8.com/bubbles/100/000000/github.png" title="Github">](https://bit.ly/2yoggit) [<img target="_blank" src="https://img.icons8.com/bubbles/100/000000/twitter.png" title="Twitter">](https://bit.ly/3dbLJLC) [<img target="_blank" src="https://img.icons8.com/bubbles/100/000000/telegram-app.png" title="Telegram"/>](https://t.me/yogeshnile) [<img target="_blank" src="https://img.icons8.com/bubbles/100/000000/instagram-new.png" title="Instagram">](https://bit.ly/3b9Qeo4)  [<img target="_blank" src="https://img.icons8.com/bubbles/100/000000/instagram.png" title="Instagram Personal">](https://bit.ly/32SXHV0)

## Email Me :e-mail:

[<img target="_blank" src="https://img.icons8.com/bubbles/100/000000/secured-letter.png" title="Mail me">](mailto:yogeshnile.work4u@gmail.com)
