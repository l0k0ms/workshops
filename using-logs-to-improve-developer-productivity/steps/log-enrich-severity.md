Now that the logs are parsed and each value can be manipulated, let's push our processing further by enriching the logs.

The goal of this exercise is to assign a severity based on the status code of the log. An access log by definition doesn't have any severity attached, but there is a way to assign your log a severity depending on the value of the `http.status_code` attribute.

Exercise:

1. Create a [category processor](https://docs.datadoghq.com/logs/processing/processors/#category-processor) in your pipeline, set target category attribute to `http.status_code_category` and add four categories to it:

    * `@http.status_code:[200 TO 299]`:  `ok`
    * `@http.status_code:[300 TO 399]`:  `notice`
    * `@http.status_code:[400 TO 499]`:  `warning`
    * `@http.status_code:[500 TO 599]`:  `error`

2. Remap the newly created attribute as the status of the log with to the [Status Remapper](https://docs.datadoghq.com/logs/processing/processors/#log-status-remapper).
