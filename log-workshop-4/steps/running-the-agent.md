In order to collect logs from your environment, the first thing you need to do is to run the Datadog Agent.

[Connect to your Datadog application](https://app.datadoghq.com). You should see a new account available just for the workshop.

To start log collection, enable the log management product by [entering the log section](https://app.datadoghq.com/logs/activation):

![log enable](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/log-enable.png)

After clicking **Getting Started** reach out to the Docker Agent instructions to run it:

![log getting started](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/logs-gs.png)

Check that the Agent is running with `docker ps`{{execute}}

Once the Agent is running let's generate some fake Apache logs with:

`docker run -d  -it --rm mingrammer/flog -f apache_combined -l -n 100000 -d 0.2`{{execute}}

This uses the [mingrammer/flog](https://github.com/mingrammer/flog) in order to generate fake log in the `apache_combined` format.
