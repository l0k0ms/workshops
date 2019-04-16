![empty log explorer](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/empty_log_explorer.png)

There are no logs listed yet in your Log Explorer page, because the Datadog Agent is not configured to gather them, to change this let's follow these steps:

1. Add the following configuration lines in your `docker-compose.yml` file at the root of the workshop directory:

```
 datadog:
   environment:
     (...)
     - DD_LOGS_ENABLED=true
     - DD_LOGS_CONFIG_CONTAINER_COLLECT_ALL=true
   volume:
     (...)
     - /opt/datadog-agent/run:/opt/datadog-agent/run:rw
```


| Configuration                                    | type         | Explanations                                    |
| -------                                          | -----        | ------                                          |
| DD_LOGS_ENABLED=true                             | env variable | Enables log collection                          |
| DD_LOGS_CONFIG_CONTAINER_COLLECT_ALL=true        | env variable | Enables log collection for all containers       |
| /opt/datadog-agent/run:/opt/datadog-agent/run:rw | volume       | Used to store pointers on container current log |


[Refer to the Datadog Agent log collection documentation to learn more.](https://docs.datadoghq.com/logs/log_collection/docker/)

**Finally reload your application**: `application_reload`{{execute}}
