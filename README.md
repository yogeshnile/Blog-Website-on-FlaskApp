# Blog Website on FlaskApp :notebook:
In this repo created a simple blog website using Flask App.

[![](https://camo.githubusercontent.com/2fb0723ef80f8d87a51218680e209c66f213edf8/68747470733a2f2f666f7274686562616467652e636f6d2f696d616765732f6261646765732f6d6164652d776974682d707974686f6e2e737667)](https://python.org)

In this website you can add, edit and delect blog. All blog are store in the [mysql](https://github.com/yogeshnile/Blog-Website-on-FlaskApp/blob/master/blog.sql) database.

## Database :dvd:
First to all in your pc are should be already installed [XAMPP](https://www.apachefriends.org/download.html) server.

Create a first database on your myphpadmin. Make sure database name should be **blog** than upload a [blog.sql](https://github.com/yogeshnile/Blog-Website-on-FlaskApp/blob/master/blog.sql) file in your database.

# Technology used in Project :hotsprings:

<img target="_blank" src="https://github.com/yogeshnile/technology/blob/master/Flask.png" width="300">     <img target="_blank" src="https://github.com/yogeshnile/technology/blob/master/flask-sqlalchemy.png" width="400">     <img target="_blank" src="https://github.com/yogeshnile/technology/blob/master/pymysql.png" width="400">


Website admin and password store in the [config.json](https://github.com/yogeshnile/Blog-Website-on-FlaskApp/blob/master/config.json) file

```json
"admin-user":"yogesh",
"admin-pass":"hello"
```
# Directory Tree :cactus:
```bash
.
├── blog.sql
├── config.json
├── LICENSE
├── main.py
├── README.md
├── static
│   ├── css
│   │   ├── clean-blog.css
│   │   └── clean-blog.min.css
│   ├── gulpfile.js
│   ├── img
│   │   ├── 2.png
│   │   ├── about-bg.jpg
│   │   ├── admin.jpg
│   │   ├── contact-bg.jpg
│   │   ├── edit.png
│   │   ├── home-bg.jpg
│   │   ├── kali.jpg
│   │   ├── php.jpg
│   │   ├── post-bg.jpg
│   │   ├── post-sample-image.jpg
│   │   ├── python.jpg
│   │   ├── ubuntu.jpg
│   │   └── windows.jpg
│   ├── js
│   │   ├── clean-blog.js
│   │   ├── clean-blog.min.js
│   │   ├── contact_me.js
│   │   └── jqBootstrapValidation.js
│   ├── mail
│   │   └── contact_me.php
│   ├── package.json
│   ├── package-lock.json
│   ├── scss
│   │   ├── _bootstrap-overrides.scss
│   │   ├── clean-blog.scss
│   │   ├── _contact.scss
│   │   ├── _footer.scss
│   │   ├── _global.scss
│   │   ├── _masthead.scss
│   │   ├── _mixins.scss
│   │   ├── _navbar.scss
│   │   ├── _post.scss
│   │   └── _variables.scss
│   └── vendor
│       ├── bootstrap
│       │   ├── css
│       │   │   ├── bootstrap.css
│       │   │   ├── bootstrap.css.map
│       │   │   ├── bootstrap-grid.css
│       │   │   ├── bootstrap-grid.css.map
│       │   │   ├── bootstrap-grid.min.css
│       │   │   ├── bootstrap-grid.min.css.map
│       │   │   ├── bootstrap.min.css
│       │   │   ├── bootstrap.min.css.map
│       │   │   ├── bootstrap-reboot.css
│       │   │   ├── bootstrap-reboot.css.map
│       │   │   ├── bootstrap-reboot.min.css
│       │   │   └── bootstrap-reboot.min.css.map
│       │   └── js
│       │       ├── bootstrap.bundle.js
│       │       ├── bootstrap.bundle.js.map
│       │       ├── bootstrap.bundle.min.js
│       │       ├── bootstrap.bundle.min.js.map
│       │       ├── bootstrap.js
│       │       ├── bootstrap.js.map
│       │       ├── bootstrap.min.js
│       │       └── bootstrap.min.js.map
│       ├── fontawesome-free
│       │   ├── css
│       │   │   ├── all.css
│       │   │   ├── all.min.css
│       │   │   ├── brands.css
│       │   │   ├── brands.min.css
│       │   │   ├── fontawesome.css
│       │   │   ├── fontawesome.min.css
│       │   │   ├── regular.css
│       │   │   ├── regular.min.css
│       │   │   ├── solid.css
│       │   │   ├── solid.min.css
│       │   │   ├── svg-with-js.css
│       │   │   ├── svg-with-js.min.css
│       │   │   ├── v4-shims.css
│       │   │   └── v4-shims.min.css
│       │   └── webfonts
│       │       ├── fa-brands-400.eot
│       │       ├── fa-brands-400.svg
│       │       ├── fa-brands-400.ttf
│       │       ├── fa-brands-400.woff
│       │       ├── fa-brands-400.woff2
│       │       ├── fa-regular-400.eot
│       │       ├── fa-regular-400.svg
│       │       ├── fa-regular-400.ttf
│       │       ├── fa-regular-400.woff
│       │       ├── fa-regular-400.woff2
│       │       ├── fa-solid-900.eot
│       │       ├── fa-solid-900.svg
│       │       ├── fa-solid-900.ttf
│       │       ├── fa-solid-900.woff
│       │       └── fa-solid-900.woff2
│       └── jquery
│           ├── jquery.js
│           ├── jquery.min.js
│           ├── jquery.min.map
│           ├── jquery.slim.js
│           ├── jquery.slim.min.js
│           └── jquery.slim.min.map
└── templates
    ├── about.html
    ├── contact.html
    ├── dashboard.html
    ├── edit.html
    ├── index.html
    ├── layout.html
    ├── login.html
    └── post.html

15 directories, 101 files
```


## Bug / Feature Request :man_technologist:
If you find a bug (the website couldn't handle the query and / or gave undesired results), kindly open an issue [here](https://github.com/yogeshnile/Blog-Website-on-FlaskApp/issues/new) by including your search query and the expected result.

If you'd like to request a new function, feel free to do so by opening an issue [here](https://github.com/yogeshnile/Blog-Website-on-FlaskApp/issues/new). Please include sample queries and their corresponding results.


## Connect with me! 🌐
Known on internet as **Yogesh Nile**

[<img target="_blank" src="https://img.icons8.com/bubbles/100/000000/linkedin.png" title="LinkedIn">](https://bit.ly/2Ky3ho6)  [<img target="_blank" src="https://img.icons8.com/bubbles/100/000000/github.png" title="Github">](https://bit.ly/2yoggit) [<img target="_blank" src="https://img.icons8.com/bubbles/100/000000/twitter.png" title="Twitter">](https://bit.ly/3dbLJLC) [<img target="_blank" src="https://img.icons8.com/bubbles/100/000000/telegram-app.png" title="Telegram"/>](https://t.me/yogeshnile) [<img target="_blank" src="https://img.icons8.com/bubbles/100/000000/instagram-new.png" title="Instagram">](https://bit.ly/3b9Qeo4)  [<img target="_blank" src="https://img.icons8.com/bubbles/100/000000/instagram.png" title="Instagram Personal">](https://bit.ly/32SXHV0)

## Email Me :e-mail:

[<img target="_blank" src="https://img.icons8.com/bubbles/100/000000/secured-letter.png" title="Mail me">](mailto:yogeshnile.work4u@gmail.com)
