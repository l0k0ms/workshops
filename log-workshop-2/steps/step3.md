Since this application is running over Docker container, in order to collect all monitoring data, the Datadog Agent runs as a container alonside the one of your application. The Datadog Agent container is configured via environment variables and mounting volumes on the underlying host:


```yaml
agent:
    image: "datadog/agent:6.13.0"
    environment:
      - DD_API_KEY
      - DD_APM_ENABLED=true
      - DD_PROCESS_AGENT_ENABLED=true
      - DD_TAGS='env:log-workshop'
      - DD_LOGS_ENABLED=true
      - DD_LOGS_CONFIG_CONTAINER_COLLECT_ALL=true
    ports:
      - "8126:8126"
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock:ro
      - /proc/:/host/proc/:ro
      - /sys/fs/cgroup/:/host/sys/fs/cgroup:ro
      - /etc/passwd:/etc/passwd:ro
      - /opt/datadog-agent/run:/opt/datadog-agent/run:rw
    labels:
      com.datadoghq.ad.logs: '[{"source": "agent", "service": "agent"}]'
```

By default the Agent needs only your Datadog API key in order to start collecting metrics from your other containers, but with extra configuration it can also collects your application Traces, your logs, and your processes data:

### Trace collection

To allow for Trace collection coming from other containers, the port `8126` is open on the Agent container

Next, the `DD_APM_ENABLED` environment variable is set to `true`. Although enabled by default, setting this variable lets other people know you are using APM.

### Log collection

More precisely for logs, the following configuration lines in your `docker-compose.yml` file at the root of the workshop directory allows to enable log collection:

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
