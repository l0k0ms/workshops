Let's dive into the APM section of Datadog where your services performances can be monitored:

1. Go into [_APM_ -> _Services_](https://app.datadoghq.com/apm/services)
2. Select the `log-workshop` environment.

You should see the list of all services currently reporting to Datadog:

![List of services](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/list_of_services.png)

Click on the `iot-frontend` service to go more in depth of its performances analyses:

![Service overview](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/service_overview.png)

Select the `GET /simulate_sensors` endpoint to break down the services performances to this particular endpoint:

![endpoint analysis](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/endpoint_analysis.png)

When selecting a trace at the bottom of the `GET /simulate_sensors` ressources page, you can see how your request behaved across all your services:

![Classic Trace](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/trace_classic.png)

Notice that host metrics and logs associated with this particular request can be seen:

![logs with traces](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/logs_with_trace.png)
