# Laravel quickstart

## **Installation**

### **Generating ssh key**
Use your GitHub email address:
```sh
ssh-keygen -t ed25519 -C "your_email@example.com"
```

### **Setup**
```sh
mkdir my-laravel-app
cd my-laravel-app
ddev config --project-type=laravel --docroot=public --create-docroot --php-version=8.3
ddev config --database=postgres:16
ddev composer create --prefer-dist --no-install --no-scripts laravel/laravel -y
ddev composer install
ddev exec "php artisan key:generate"
ddev get ddev/ddev-adminer
ddev auth ssh
ddev restart
ddev launch
```
### **Composer.json**
You need to modify the PHP version in the composer.json file (default one is 8.1):
```sh
    "require": {
        "php": "^8.3",
```