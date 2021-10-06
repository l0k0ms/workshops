After the break, we'll discover how to go beyond log collection with a real app example.

To do:

1. Kill all running containers to have a fresh start: `docker container kill $(docker ps -q)`{{execute}}

2. Pull the Storedog containers `docker-compose -f docker-compose-fixed-instrumented.yml pull`{{execute}}

3. Start the Storedog application with the following command: `app_start`{{execute}}

After a couple of minutes, click on the `Storedog` tab of the terminal to see the application running, or click this link:

    https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/

You should see this page:

![app_homepage](https://raw.githubusercontent.com/l0k0ms/workshops/master/using-logs-to-improve-developer-productivity/images/app_homepage.png)

Refresh the Application page, click around to begin generating metrics, APM traces, and logs for your application.

Alternatively you can run `generating_traffic`{{execute}} in the terminal to generate traffic constantly.
