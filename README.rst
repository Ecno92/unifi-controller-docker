Unifi Controller Docker
=======================

This project provides a way to run the Ubiquiti Unifi Controller using Docker.
I've created this project because I did not like to have an always running controller service running on my pc just to change the Access Point configuration.

Features
--------

* All the dependencies like MongoDB and Java are running in the container.
* The service is only active when you boot up the Docker container.
* Data and logs are synced with the host.


How to use
----------

1. First of all be sure that Docker Engine and Docker Compose are installed.
2. Move into the repository after cloning it.
3. use docker-compose to "up" the container: ``$ docker-compose up -d``
4. Once the image is build and has started go to: https://127.0.1.1:8443 (Browser may complain about https...)

All the data and log files are synced into the ``volumes/`` directory of the repository.
