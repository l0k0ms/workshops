## Live tail

Now that we have filtered out our Agent logs and all of our Debug logs, our explorer view is cleaner, but what if we still want to consult those logs that we filtered out?

It's still possible to view these logs with the [Live tail](https://app.datadoghq.com/logs/livetail).

The live tail page displays all logs after the Pipeline section but before the index filter one. If you enter the following query: `service:agent`, you can see the parsed agent log even if they won't be indexed:

![agent_log_live_tail]()
