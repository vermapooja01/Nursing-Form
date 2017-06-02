# Readme

This is a project for the college of nursing, it is a form that is used by the nurses to sign up and analyze patients.

We have multiple usage levels.

## Faculty

Faculty members of the college of Nursing have the ability to add new test cases for students to use as patients for the Simulation Lab
## Students

Students can create new patient analysis submissions

# How to install app

The application can be installed in a Dcokerized environment using Rancher, or it can be installed on a Phusion Passenger stack with either nginx or apache.

## Dockerized Phusion Passenger Environment


## Standalone Phusion Passenger Linux Stack

### Apache

_.htaccess file_

```
PassengerEnabled On
PassengerLoadShellEnvVars On
PassengerAppRoot /var/sentora/hostdata/at/public_html/skunkworks_utep_edu/uteppros/current/$
PassengerRuby /usr/local/rvm/wrappers/ruby-2.2.1/ruby
```

### Nginx