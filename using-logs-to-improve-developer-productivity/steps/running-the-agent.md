# Collection

Datadog is a SaaS product, to see your logs in Datadog you must collect them from your hosts, containers, applications, browsers, and serverless functions and send them to Datadog.

For details on how to collect logs from your environment, see:

* [In the Datadog Log collection documentation.](https://docs.datadoghq.com/logs/log_collection/)
* [In the Getting started section of your Datadog application.](https://app.datadoghq.com/logs/onboarding)

For this workshop, we are going to cover log collection from a Docker environment via [the Agent](https://docs.datadoghq.com/agent/).

## Running the Agent

To run the Agent:

* [Connect to your Datadog application](https://app.datadoghq.com).
* Select the **Getting Started** entry in [the Logs menu](https://app.datadoghq.com/logs/).
* Find the Docker Agent installation command, and copy-paste it in the terminal.

    ![log getting started](https://raw.githubusercontent.com/l0k0ms/workshops/master/using-logs-to-improve-developer-productivity/images/logs-gs.png)

This installs the Agent and enables log collection. Check that the Agent is running with `docker ps`{{execute}}

## Log generation

Once the Agent is up and running, generate some fake Apache logs with:

`docker run --name flog -d -it --rm mingrammer/flog -f apache_combined -l -n 100000 -d 0.2`{{execute}}

This uses [mingrammer/flog](https://github.com/mingrammer/flog) to generate fake logs in the `apache_combined` format.
