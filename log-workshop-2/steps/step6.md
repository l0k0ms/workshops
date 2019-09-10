To gain more visibility about which container emitted which logs and to bind your logs with the previously implemented APM and metrics, let's use Labels to specify the `source` and the `service` tags for each container logs.

**The source tag is key to enable the integration pipeline**

Datadog has a wide range of log integrations. To enable the Log integration pipelines in Datadog, pass the source name as a value for the source attribute with a docker label. See the [full list of supported log sources](https://docs.datadoghq.com/logs/guide/integration-pipeline-reference/).

**The service tag is key for binding metrics traces and logs.**

This application is already set up for APM. So, let's add the service tags to the `iot-frontend`, `noder`, `pumps`, `redis`, `sensor`, `db` and `adminer` containers to bind the traces and the logs together:

1. Update your `docker-compose.yml` file at the root directory of the workshop by clicking on: `add_labels`{{execute}}

2. **Reload your application**: `application_reload`{{execute}}

3. Generate some actions: https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/

4. Go to your Log explorer view to see the new service tags flowing in.