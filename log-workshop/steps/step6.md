Now that our logs are correctly labeled we are able to manipulate them during processing in Datadog.

Let's go to the [Pipeline page](https://app.datadoghq.com/logs/pipelines) of Datadog and see what we have:

The `source` tag already enabled the `Agent`, `Redis`, and `Python` integration pipeline,

Which now automatically parse `Agent`, `Redis`, and `Python` logs.

### Exclusion filter

Let's set up the following Index filters:

![Exclusion filter](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/exclusion_filter.png)


### Removing Agent logs

In order to clean our log explorer from logs that are not relevant for our use case let's implement an index filter:

![index filter agent log](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/index_filter_agent_log.png)

### Learn more about Logging without limits.

#### Removing Debug log

As a general best practice, we also advise you to add an index filter on your Debug logs:

![removing debug logs](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/removing_debug_logs.png)

Our log explorer view now only contains logs from our containers and no more from the Datadog Agent all logs matching the following query: service:agent are no longer reporting:

![agent filtered out](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/agent_filtered_out.png)
