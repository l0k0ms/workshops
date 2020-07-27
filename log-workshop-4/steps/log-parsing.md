Time for your first exersise, the goal here is to parse the collected Apache log in order to extract all usefull information and assign them to a standard attribute.

*Pro tip: To help you in this exersie, check the exemples from the [Datadog Log Parsing documentation](https://docs.datadoghq.com/logs/processing/parsing/).*

Exercise:

1. Go in the [log configuration page](https://app.datadoghq.com/logs/pipelines).
2. Create a first [pipeline](https://docs.datadoghq.com/logs/processing/pipelines/) with a filter `service:flog`.
3. Create a [Grok processor](https://docs.datadoghq.com/logs/processing/processors/?tab=ui#grok-parser) in this pipeline
4. Add a log from `flog` in the **log sample** section.
5. Define your first parsing rule in order to extract the following information:

    Web access information:

      * The status code: `http.status_code`
      * The referer; `http.referer`
      * The auth: `http.auth`
      * The user-agent: `http.useragent`
      * The method: `http.method`
      * The URL: `http.url`
      * The HTTP version in use: `http.version`

    Network information:

      * The amount of bytes written: `network.bytes_written`
      * The IP that made the request: `network.client.ip`

    Global log information

      * The date of the request `date_access`

**Note**: Those attributes follow the [Datadog Standard attributes Naming convention](https://docs.datadoghq.com/logs/processing/attributes_naming_convention/#default-standard-attribute-list).
