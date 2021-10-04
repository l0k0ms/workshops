Let's remove the highest cardinality status code from the logs, but keep track of the overall amount received as a metric:

1. Remove all logs with `2xx` status code from your index by using [an index filter](https://docs.datadoghq.com/logs/indexes#indexes-filters).
2. [Generate a metric](https://docs.datadoghq.com/logs/logs_to_metrics/) `nb.logs.per_status.per_status_code` from your logs that counts the number of logs received for the `flog` service, tagged by `http.status_code` and `status`

#### Bonus

1. Enable the two telemetry metrics in the Generate metric section.
2. Import the [Log Estimated usage dashboard](https://docs.datadoghq.com/logs/guide/logs-monitors-on-volumes/#estimated-usage-dashboard) in your account.
