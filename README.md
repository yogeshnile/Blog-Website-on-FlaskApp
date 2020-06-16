# Blog-Website-on-FlaskApp :notebook:
In this repo created a simple blog website using Flask App.

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


## Contributing :man_technologist:
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Follow on a Social Media :busts_in_silhouette:
- [LinkedIn](https://bit.ly/2Ky3ho6)
- [Instagram](https://bit.ly/3b9Qeo4)
- [Instagram Personal](https://bit.ly/32SXHV0)
- [Twitter](https://bit.ly/3dbLJLC)
