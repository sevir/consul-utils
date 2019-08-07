#!/bin/bash

consul agent -server -data-dir /var/consul -bootstrap -ui-dir=/opt/consul-ui/dist -client=0.0.0.0 -advertise=192.168.42.13 -bind=192.168.42.13 -syslog -dc=vagrant-dc > /dev/null &