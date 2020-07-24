We saw how to manipulate your logs and how you could monitor them, but in Log management there is the word **management**.

The whole idea of logging without limit is that it's not because a log is sent to Datadog, a log is "ingested", a log is "processed" that you necesseraly want to index it for search/analytics/monitor use-cases. But at the same time you might not want to lose any information, any KPI coming from those logs.

### Exercise

1. Remove all logs with `2xx` status code from your index thanks to [an index filter](https://docs.datadoghq.com/logs/indexes#indexes-filters).
2. [Generate a metric](https://docs.datadoghq.com/logs/logs_to_metrics/) `nb.logs.per_status.per_status_code` from your logs counting the amount of log received for the `flog` service, tagged by `http.status_code` and `status`
3. Create a monitor that evaluates the ratio of 2xx request compared to the global amount and trigger if the ration is below 90%.
4. Create a [monitor based SLO](https://docs.datadoghq.com/monitors/service_level_objectives/monitor/) that evaluates the previously created monitor with a target of 99% for the last 7, 30, and 90 days.

#### Bonus

1. Enable the two telemetry metrics in the Generate metric section.
2. Import the [Log Estimated usage dashboard](https://docs.datadoghq.com/logs/guide/logs-monitors-on-volumes/#estimated-usage-dashboard) in your account.
