Let's dive into the APM section of Datadog where your services performances can be monitored:

1. Go into [_APM_ -> _Services_](https://app.datadoghq.com/apm/services)
2. Select the `log-workshop` environment.

You should see the list of all services currently reporting to Datadog:

![List of services](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/list_of_services.png)

Click on the `iot-frontend` Service to go more in depth of its performances analyses:

![Service overview](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/service_overview.png)

Select the `GET /simulate_sensors` endpoint to break down the services perfomances down to this particular endpoint:

![endpoint analysis](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/endpoint_analysis.png)

When selecting a trace at the bottom of the `GET /simulate_sensors` ressources page you can see how your request behaved accross all your services:

![Classic Trace](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/trace_classic.png)

Notice that host metrics and logs associated to this particular request can be seen:

![logs with traces](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/logs_with_trace.png)
