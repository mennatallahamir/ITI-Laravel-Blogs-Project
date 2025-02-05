# ITI Laravel Blogs Project

<div align="center">
  
  


  <h2 align="center">Laravel Blogs Project</h2>

  A Laravel web application for browsing and managing blog posts.
  <br>
  Supports CRUD (Create, Read, Update, Delete) functionality for managing articles.
  <br>  <br>
  This is a coursework project for Field Trainning 1.

</div>

## ⚙ Installation

First clone this repository, install the dependencies.

```
git clone https://github.com/mennatallahamir/ITI-Laravel-Blogs-Project.git
composer install
```

Then import the necessary database provided in the database folder in **XAMPP**.

```
blog.sql
```

And create the storage links and clear previous caches.

```
rm public/storage
php artisan optimize:clear       
php artisan storage:link
```
Lastly, serve the application.
```
php artisan serve
```