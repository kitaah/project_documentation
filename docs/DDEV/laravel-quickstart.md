# Laravel quickstart

## **Installation**

### **Generating ssh key**
Generating SSH key and adding it to your GitHub account:
```sh
ssh-keygen -t ed25519 -C "your_email@example.com"
```

### **Setup**
```sh
mkdir web-application
cd web-application
ddev config --project-type=laravel --docroot=public --create-docroot --php-version=8.3
ddev config --database=postgres:16
ddev config --timezone=Europe/Paris
ddev composer create --prefer-dist --no-install --no-scripts laravel/laravel -y
ddev composer install
ddev exec "php artisan key:generate"
ddev get ddev/ddev-adminer
ddev restart
ddev auth ssh
ddev launch
ddev npm install -g npm@10.2.5
```
### **Composer.json**
PHP version modification in the **composer.json** file (default version is always 8.1):
```sh
    "require": {
        "php": "^8.3",
```