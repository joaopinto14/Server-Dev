# Server-Dev

Everything you need to set up a development server on your desktop.

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