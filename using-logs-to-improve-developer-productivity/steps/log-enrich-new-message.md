After enriching the log, we can move to an advanced processing capability that will allow you to better leverage the pattern feature of the log explorer.

Since the pattern feature is based on a log status, service, and message, the goal here is to refactor this message and keep only useful information for clustering.

Exercise:

1. Create a temporary message in the attribute `msg_tmp`, using the [String Builder processor](https://docs.datadoghq.com/logs/processing/processors/#string-builder-processor), that includes:

    `Request %{http.method} %{http.url_details.path} with response %{http.status_code}`

2. Remap this temporary message in `msg_tmp` as the official log message with a [Message remapper](https://docs.datadoghq.com/logs/processing/processors/#log-message-remapper).
