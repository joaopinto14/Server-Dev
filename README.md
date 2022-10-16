# Server-Dev

Everything you need to set up a development web server on your desktop.

<!-- 
## Functionalities:

- [x] Web Server {nginx}
- [x] Php {php, composer, nodejs}
- [x] Database {mariadb}
- [x] PhpMyAdmin
- [x] Redis Server


## Setup

1. Download the latest stable release [here](https://github.com/joaopinto14/Server-Dev/releases/latest)


2. Extract the downloaded file:

    ```bash 
    unzip Server-Dev-Stable.zip
    ```
    OR
    ```bash 
    tar -xf Server-Dev-Stable.tar.gz
    ```

3. Enter into the Server-Dev folder:

    ```bash 
    cd Server-Dev-Stable
    ```

4. Copy the .env.example file to a .env file:

    ```bash 
    cp .env.example .env
    ```
    Make the adjustments you need, to match your needs.
    
    Info: PHP_USER variable is to insert the user name which will edit the files created inside the containers

5. Configuração NGINX

6. Criar/Instalar projeto na pasta www -->






### List of Requirements:

- Docker

### Functionalities:

- [x] Web Server {nginx}
- [x] Php {php, composer, nodejs}
- [x] Database {mariadb}
- [x] PhpMyAdmin
- [x] Redis Server


### TODO:

- [ ] Otimizar o processo de utilização.


### How to use:

- In the directory "web/templates" place the conf files with the following name "xxxx.conf.template"

- In the "web/www" directory place the projects

- To access the PhpMyAdmin container with the following address: http://localhost:8888/

- To run commands  inside containers: 
 
        docker-compose exec -w {project/path/into/container} {container} {command}

    Examples:

     1º

        docker-compose exec -w /var/www/server-dev php npm run dev

    2º
           
        docker-compose exec -w /var/www/server-dev php composer install

    3º

        docker-compose exec -w /var/www/server-dev php php artisan key:generate