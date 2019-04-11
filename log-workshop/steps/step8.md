Let's look closer into our logs.


### Redis logs

It seems that our Redis logs are not correctly parsed:

![Redis logs not parsed](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/redis_log_not_parsed.png)

Let's go the the [Log configuration page](https://app.datadoghq.com/logs/pipelines) and see what happened:

1. Open the Redis Pipeline
2. Open the `Grok Parser: Parsing Redis logs` processor.

It seems that the parser is not matching our logs, let's find out why:

![Parser not parsing](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/parser_not_parsing.png)

Open the *Advanced Settings* section and look at the `_date` Token:

![advanced setting](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/advanced_rules.png)

The date format is wrong.

To fix this pipeline, let's start by cloning it:

![duplicate pipeline](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/duplicate_pipeline.png)

Then re-open the processor, and fix the `_date` token to `_date %{date("dd MMM yyyy HH:mm:ss.SSS"):date}`

If you enter a log in the `Test against a sample` section you should see it parsed:

![Parsing redis logs](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/parsing_redis_logs.png)
