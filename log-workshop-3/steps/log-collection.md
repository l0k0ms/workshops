Since this application is running over Docker containers, in order to collect all monitoring data, the Datadog Agent runs as a container alongside the one of your application. The Datadog Agent container is configured via environment variables and mounting volumes on the underlying host:

```yaml
agent:
    image: "datadog/agent:7.21.0"
    environment:
      - DD_API_KEY
      - DD_APM_ENABLED=true
      - DD_LOGS_ENABLED=true
      - DD_LOGS_CONFIG_CONTAINER_COLLECT_ALL=true
      - DD_PROCESS_AGENT_ENABLED=true
      - DD_DOCKER_LABELS_AS_TAGS={"my.custom.label.team":"team"}
      - DD_TAGS='env:ruby-shop'
    ports:
      - "8126:8126"
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock:ro
      - /proc/:/host/proc/:ro
      - /sys/fs/cgroup/:/host/sys/fs/cgroup:ro
    labels:
      com.datadoghq.ad.logs: '[{"source": "datadog-agent", "service": "agent"}]'
```

By default, the Agent needs only your Datadog API key to start collecting metrics from your other containers, but by adding extra configurations, the Agent can also collect your application Traces, logs, and processes data:

### Trace collection

To allow for Trace collection coming from other containers, the port `8126` is open on the Agent container.

Next, the `DD_APM_ENABLED` environment variable is set to `true`. Although enabled by default, setting this variable lets other people know you are using APM.

[Learn more on the Datadog APM documentation](https://docs.datadoghq.com/tracing/send_traces/#containers)

### Log collection

The following configuration lines in your `docker-compose.yml` file at the root of the workshop directory allow to enable log collection for all running containers:

```yaml
 agent:
   environment:
     # (...)
     - DD_LOGS_ENABLED=true
     - DD_LOGS_CONFIG_CONTAINER_COLLECT_ALL=true
   volume:
     # (...)
     - /opt/datadog-agent/run:/opt/datadog-agent/run:rw
```

| Configuration                                    | type         | Explanations                                    |
| -------                                          | -----        | ------                                          |
| DD_LOGS_ENABLED=true                             | env variable | Enables log collection                          |
| DD_LOGS_CONFIG_CONTAINER_COLLECT_ALL=true        | env variable | Enables log collection for all containers       |
| /opt/datadog-agent/run:/opt/datadog-agent/run:rw | volume       | Used to store pointers on container current log |

[Refer to the Datadog Agent log collection documentation to learn more.](https://docs.datadoghq.com/agent/docker/log/)
