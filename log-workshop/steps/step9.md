Now that our logs are correctly labeled, we can manipulate them during processing in Datadog.

Let's go to the [Pipeline page](https://app.datadoghq.com/logs/pipelines) of Datadog and see what we have:

![pipeline_page](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/pipeline_page.png)

The `source` tag already enabled the `Agent`, `Redis`, and `Python` integration pipeline,

Which now automatically parse `Agent`, `Redis`, and `Python` logs:

![redis_log](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/redis_log.png)