# PHP Documentor

## **Official website documentation** [:fontawesome-solid-link:](https://docs.phpdoc.org/3.0/){:target="_blank"}

## **Installation and usage**

### **Global installation**
- Download the latest **PHAR file** [:fontawesome-solid-download:](https://phpdoc.org/phpDocumentor.phar){:download="phpDocumentor.phar"}   
- Mark it as executable and move it to your bin folder (Mac/Linux):  
```sh
chmod +x phpDocumentor.phar  
sudo mv phpDocumentor.phar /usr/local/bin/phpDocumentor
```
### **Running PHPDocumentor**
- Run PHPDocumentor in your folder:  
```sh
phpDocumentor run -d . -t docs/api --ignore=vendor
```
- Open the directory docs/api to access the file **index.html** where you can consult your documentation.