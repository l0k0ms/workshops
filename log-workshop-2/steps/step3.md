The following configuration lines in your `docker-compose.yml` file at the root of the workshop directory allows to enable log collection.

```
 agent:
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

[Refer to the Datadog Agent log collection documentation to learn more.](https://docs.datadoghq.com/agent/docker/logs)
