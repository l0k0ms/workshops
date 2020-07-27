Now that the log are parsed and each value can be manipulated, let's push our processing further by enriching our logs.

The goal of this exercise is to assign a severity based on the status code of the log. An access log by definition doesn't have any status attached, but there is a way to assign your log a status depending on the value of the `http.status_code` attribute.

Exercise:

1. Create a [category processor](https://docs.datadoghq.com/logs/processing/processors/#category-processor) in your pipeline, and add four categories to it:

    * `@http.status_code:[200 TO 299]`:  `ok`
    * `@http.status_code:[300 TO 399]`:  `notice`
    * `@http.status_code:[400 TO 499]`:  `warning`
    * `@http.status_code:[500 TO 599]`:  `error`

    The value should be assgined to a new attribute: `http.status_code_category`

2. Remap the newly created attribute as the status of the log thanks to the [Status Remapper](https://docs.datadoghq.com/logs/processing/processors/#log-status-remapper).
3. Create [an URL parser](https://docs.datadoghq.com/logs/processing/processors/#url-parser) to extract all query parameters from your requested URL in `http.url` and pass them into `http.url_details`.
4. Create a temporary message in the attribute `msg_tmp` thanks to the [String Builder processor](https://docs.datadoghq.com/logs/processing/processors/#string-builder-processor) for your log that includes:

    `Request %{http.method} %{http.url_details.path} with response %{http.status_code}`

5. Remap this temporary message in `msg_tmp` as the official log message with a [Message remapper](https://docs.datadoghq.com/logs/processing/processors/#log-message-remapper).
