The service tag allows us to switch between our log explorer view and the corresponding APM service:

![iot frontend switch ](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/iot_frontend_switch.png)

1. Open a log from `iot-frontend` service by clicking on it.

2. On top of the contextual panel, click on the `iot-frontend` Service name.

    You should arrive on this page in Datadog APM:

![iot-frontend-service-page](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/iot-frontend_service_page.png)


With the Trace ID, we are now able to bind a log to the corresponding trace:

1. Open a log from the `iot-frontend` service.
2. Select the Trace icon next to the service name to see the associated trace:

![associated trace](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/associated_trace.png)
