The `source` and the `service` tags specified with labels for each container logs are the key to gain more visibility about which container emitted which logs and to bind your logs with the previously implemented APM and metrics.

**The source tag is key to enable the integration pipeline**

Datadog has a wide range of log integrations. To enable the Log integration pipelines in Datadog, pass the source name as a value for the source attribute with a docker label. See the [full list of supported log sources](https://docs.datadoghq.com/logs/guide/integration-pipeline-reference/).

**The service tag is key for binding metrics traces and logs.**

It works automatically with known images, but if you have a custom application name, the service name may not match the services in APM so you need to set it up with a custom label:

```yaml
labels:
      com.datadoghq.ad.logs: '[{"source": "python", "service": "users-api"}]'
```
