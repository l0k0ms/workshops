We saw how to manipulate your logs and how you could monitor them, but in Log management there is the word **management**.

The whole idea of logging without limit is that it's not because a log is sent to Datadog, a log is "ingested" a log is "processed" that you necesseraly want to index it for search/analytics/monitor use-cases.

But at the same time you might not want to lose any information, any KPI coming from those logs.

## Exercise

1. Remove all logs with 2xx and 3xx status code from your indexes.
2. Generate a metrics from your logs counting the amount of request received, tagged by `http.status_code` and `status`
3. Create a monitor that evaluates the ratio of 2xx request compared to the global amount.
4. Create a SLO that evaluates the previously created monitor with a target of 99.9%.
