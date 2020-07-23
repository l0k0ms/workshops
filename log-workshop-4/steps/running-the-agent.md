In order to collect logs from your environment, the first thing you need to do is to run the Datadog Agent.

While the application is installing, [connect to your Datadog application](https://app.datadoghq.com). You should see a new account available just for the workshop.

To start log collection, enable the log management product and in the getting started reach out to the Docker Agent instructions to run it:

https://a.cl.ly/o0uv5wqm

Check that the Agent is running with `docker ps`{{execute}}

Once the Agent is running let's generate some fake logs with:

`docker run -d  -it --rm mingrammer/flog -f apache_combined -l -n 100000 -d 0.2`{{execute}}

This uses the [mingrammer/flog](https://github.com/mingrammer/flog) in order to generate fake log in the `apache_combined` format.
