Logs are now showing in your log explorer view. You can see that Datadog assign a service name to your logs based upon the docker image name that emitted it.

It works fine with know images, but with your custom application name, the service name doesn't match the APM services.

In order to gain more visibility about which container emitted which logs and in order to bind your logs with the previously implemented APM and metrics, let's use Labels to specify the `source` and the `service` tags for each container logs.

**The source tag is key to enable the integration pipeline**

Datadog has a range of Log supported integrations. In order to enable the Log integration pipelines in Datadog, pass the source name as a value for the source attribute with a docker label.

**The service tag is key for binding metrics traces and logs.**

The application is already instrumented for APM. Let's add the service tags to the iot-frontend, noder, pumps, redis, sensor, db and adminer containers in order to be able to bind their traces and their logs together.

Update your `docker-compose.yml` file at the root directory of the workshop with the following labels:

```
version: '3'
services:
  agent:
    (...)
    labels:
      com.datadoghq.ad.logs: '[{"source": "agent", "service": "agent"}]'

  frontend:
    (...)
    labels:
      com.datadoghq.ad.logs: '[{"source": "python", "service": "iot-frontend"}]'

  noder:
    (...)
    labels:
      com.datadoghq.ad.logs: '[{"source": "nodejs", "service": "users-api"}]'

  pumps:
    (...)
    labels:
      com.datadoghq.ad.logs: '[{"source": "python", "service": "pumps-service"}]'

  redis:
    (...)
    labels:
      com.datadoghq.ad.logs: '[{"source": "redis", "service": "redis"}]'

  sensors:
    (...)
    labels:
      com.datadoghq.ad.logs: '[{"source": "python", "service": "sensors-api"}]'

  db:
    (...)
    labels:
      com.datadoghq.ad.logs: '[{"source": "postgresql", "service": "postgres"}]'

```

**Reload your application**: `application_reload`{{execute}} And go generate some actions:

https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/

Finally, go to your Log explorer view to see the new service tags flowing in: