# dkdde/composer

## Docker Data Volume Container Composer

This Docker image `dkdde/composer` consists of

* defined version of [Composer](https://getcomposer.org/)

to be run as [Docker Data Volume Container](https://docs.docker.com/engine/tutorials/dockervolumes/). PHP is _not_ included.

### Installation/Setup

Download latest Docker image:

    $ docker pull dkdde/composer

or a specific version (tag):

    $ docker pull dkdde/composer:1.6.5

In this case `1.6.5` references version `1.6.5` of Composer. See list of available tags at the [Docker Hub project page](https://hub.docker.com/r/dkdde/composer/tags/). 

### Usage

Create data volume container, name it `composer` and expose `/composer`:

    $ docker create -v /composer --name composer dkdde/composer:latest

Mount and run Composer executable (with PHP v7.0):

    $ docker run -it --volumes-from composer php:7.0-cli /composer/composer help

Try another PHP version (e.g. v7.1):

    $ docker run -it --volumes-from composer php:7.1-cli /composer/composer help

### Development

[Clone project](https://github.com/dkd/docker-dkdde-composer) and copy `composer.phar` into the project directory:

    $ git clone https://github.com/dkd/docker-dkdde-composer.git
    $ cd docker-dkdde-composer

Rename `composer.phar` to `composer` and make it executable:

    $ mv composer/composer.phar composer/composer
    $ chmod +x composer/composer

Build image, tag appropriately and push to Docker Hub:

    $ docker build . --tag dkdde/composer
    $ docker push dkdde/docker-dkdde-composer
