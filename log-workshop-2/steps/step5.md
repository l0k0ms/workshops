Logs should now be showing in your [log explorer view](https://app.datadoghq.com/logs). You can see that Datadog assigns a service name to your logs based upon the docker image name that emitted it:

![redis_log](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/redis_log.png)

It works automatically with known images, but if you have a custom application name, the service name may not match the services in APM.

![non_matching_service_name](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/non_matching_service_name.png)
