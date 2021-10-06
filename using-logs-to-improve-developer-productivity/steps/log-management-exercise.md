Let's remove the highest cardinality status code from the logs, but keep track of the overall amount received as a metric:

1. Remove all logs with `2xx` status code from your index by using [an index filter](https://docs.datadoghq.com/logs/indexes#indexes-filters).
2. [Generate a metric](https://docs.datadoghq.com/logs/logs_to_metrics/) `nb.logs.per_status.per_status_code` from your logs that counts the number of logs received for the `flog` service, tagged by `http.status_code` and `status`

#### Bonus

Import the [Log Estimated usage dashboard](https://docs.datadoghq.com/resources/json/estimated_log_usage_dashboard_configuration.json) in your account.
