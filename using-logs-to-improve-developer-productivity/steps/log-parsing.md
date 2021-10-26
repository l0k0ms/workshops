Time for your first exercise. The goal here is to parse the collected Apache logs to extract all useful information and assign them to a standard attribute.

_Pro tip: To help you in this exercise, check the examples from the [Datadog Log Parsing documentation](https://docs.datadoghq.com/logs/processing/parsing/)._

1. Copy a log from the log explorer (open a log > on the right side of the gray zone) .
2. Go to the [log configuration page](https://app.datadoghq.com/logs/pipelines).
3. Create a first [pipeline](https://docs.datadoghq.com/logs/processing/pipelines/) with a filter `service:flog`.
4. Create a [Grok processor](https://docs.datadoghq.com/logs/processing/processors/?tab=ui#grok-parser) in this pipeline.
5. Add the copied log from `flog` in the **log sample** section.
6. Define your first parsing rule to extract the following information:

```text
rule %{ip:network.client.ip} %{notSpace:http.ident:nullIf("-")} %{notSpace:http.auth:nullIf("-")} \[%{date("dd/MMM/yyyy:HH:mm:ss Z"):date}\] "%{word:http.method} %{notSpace:http.url} HTTP\/%{number:http.version}" %{integer:http.status_code} %{integer:network.bytes_written} "%{notSpace:http.referer}" "%{data:http.useragent}"
```

Your grok parser should look like this:

![Grok config](https://raw.githubusercontent.com/l0k0ms/workshops/master/using-logs-to-improve-developer-productivity/images/grok-config.png)

An explanation of the rule:

| Text                                                                  | Pattern                                   |
| --------------------------------------------------------------------- | ----------------------------------------- |
| 172.20.0.1                                                            | %{ip:network.client_ip}                   |
| cassin5575                                                            | %{notSpace:http.auth:nullIf("-")}         |
| [26/06/2019:09:22:54 +0000]                                           | \[%{date("dd/MM/yyyy:HH:mm:ss Z"):date}\] |
| GET                                                                   | %{word:http.method}                       |
| /simulate_sensors                                                     | %{notSpace:http.url}                      |
| 1.1                                                                   | %{number:http.version}                    |
| 200                                                                   | %{number:http.status_code}                |
| 2345                                                                  | %{integer:network.bytes_written}          |
| http://www.dynamicmodels.net/cross-platform/open-source/revolutionary | %{notSpace:http.referer}                  |
| Mozilla/5.0 (X11; Linux i686; rv:5.0) Gecko/2002-04-12 Firefox/37.0   | %{data:http.useragent}                    |


**Note:** Those attributes follow the [Datadog Standard attributes Naming convention](https://docs.datadoghq.com/logs/processing/attributes_naming_convention/#default-standard-attribute-list).
