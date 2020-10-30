#!/bin/bash
vncserver-stop
vncserver-start
php -S localhost:8080 -t ../
exit