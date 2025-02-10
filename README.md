# ITI Laravel Blogs Project

<div align="center">
  
  
![blogs](https://github.com/user-attachments/assets/819d87fa-91ec-44f7-ab2d-665c94c266a1)


  <h2 align="center">Laravel Blogs Project</h2>

  A Laravel web application for browsing and managing blog posts.
  <br>
  Supports CRUD (Create, Read, Update, Delete) functionality for managing articles.
  <br>  <br>
  This is a coursework project for Field Training 1.

</div>

## 📽 Project Video 


 

https://github.com/user-attachments/assets/d6647dfe-6118-43c0-9543-5a01ac6c62b5




## ⚙ Installation

First, clone this repository, install the dependencies.

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
