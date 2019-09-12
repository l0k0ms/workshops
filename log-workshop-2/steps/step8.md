As told previously, the `service` tag allows to switch between the log explorer view and the corresponding APM service:

### Service link

1. Go into your [Log Search page](https://app.datadoghq.com/logs).
2. Open a log from `iot-frontend` service by clicking on it.
3. On top of the contextual panel, click on the `iot-frontend` Service name:

![iot frontend switch ](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/iot_frontend_switch.png)

You should arrive on this page in Datadog APM:

![iot-frontend-service-page](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/iot-frontend_service_page.png)

### Trace id link

With the Trace ID, we are now able to bind a log to the corresponding trace:

1. Open a log from the `iot-frontend` service.
2. Select the Trace icon next to the service name to see the associated trace:

![associated trace](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/associated_trace.png)
