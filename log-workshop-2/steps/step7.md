Let's dive into the APM section of Datadog to monitor your services performance:

1. Go into [_APM_ -> _Services_](https://app.datadoghq.com/apm/services)
2. Select the `log-workshop` environment.

You should see the list of all services currently reporting to Datadog:

![List of services](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/list_of_services.png)

Click on the `iot-frontend` service to go more in-depth into its performances analyses:

![Service overview](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/service_overview.png)

Select the `GET /simulate_sensors` endpoint to break down performance of the the services to this particular endpoint:

![endpoint analysis](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/endpoint_analysis.png)

When selecting a trace at the bottom of the `GET /simulate_sensors` resources page, you can see how your request behaved across all of your services:

![Classic Trace](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/trace_classic.png)

View the host metrics and logs associated with this particular request:

![logs with traces](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/logs_with_trace.png)
