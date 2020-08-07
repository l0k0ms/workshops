# Collection

Datadog is a Saas product, meaning if you want to see your logs in Datadog you need to collect them from your hosts, containers, applications, browsers, and serverless functions and send them to Datadog.

Details on how to collect logs from your environment can be seen:

* [In the Datadog Log collection documentation.](https://docs.datadoghq.com/logs/log_collection/?tab=http)
* [In the Getting started section of your Datadog application.](https://app.datadoghq.com/logs/onboarding)

For this workshop, we are going to cover log collection from a Docker environment thanks to [the Agent](https://docs.datadoghq.com/agent/).

## Running the Agent

To run the Agent:

* [Connect to your Datadog application](https://app.datadoghq.com).
* Enable the log management product by [entering the log menu](https://app.datadoghq.com/logs/activation) and lick **Getting Started**:

    ![log enable](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/log-enable.png)

* Reach out to the Docker Agent installation command, and copy past it in the terminal on the right of this panel.

    ![log getting started](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/logs-gs.png)

This should have installed the Agent and log collection is enabled, check that the Agent is running with `docker ps`{{execute}}

## Log generation

Once the Agent is up and running, let's generate some fake Apache logs with:

`docker run --name flog -d -it --rm mingrammer/flog -f apache_combined -l -n 100000 -d 0.2`{{execute}}

This uses the [mingrammer/flog](https://github.com/mingrammer/flog) in order to generate fake log in the `apache_combined` format.
