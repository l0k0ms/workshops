Now that we have filtered out our Agent logs and all our Debug logs, our explorer view is cleaner but we might still want to consult those logs.

It's still possible with the of Datadog. [Live tail page](https://app.datadoghq.com/logs/livetail).

The live tail page displays all logs after the Pipeline section but before the index filter one. If you enter the following query: service:agent you are able to see the parsed agent log even if they won't be indexed:

![agent_log_live_tail](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/agent_log_live_tail.png)
