## Exclusion filter

Let's set up the following Index filters to control which logs get indexed.

![Exclusion filter](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/exclusion_filter.png)

Go to your [Datadog Index page](https://app.datadoghq.com/logs/pipelines/indexes) to create your first filter.

### Removing Agent logs

To clean our log explorer from logs that are not relevant for our use case, let's implement an index filter:

![index filter agent log](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/index_filter_agent_log.png)
