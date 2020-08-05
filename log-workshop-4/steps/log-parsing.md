Time for your first exercise, the goal here is to parse the collected Apache log in order to extract all useful information and assign them to a standard attribute.

_Pro tip: To help you in this exercise, check the exemples from the [Datadog Log Parsing documentation](https://docs.datadoghq.com/logs/processing/parsing/)._

Exercise:

1. Go in the [log configuration page](https://app.datadoghq.com/logs/pipelines).
2. Create a first [pipeline](https://docs.datadoghq.com/logs/processing/pipelines/) with a filter `service:flog`.
3. Create a [Grok processor](https://docs.datadoghq.com/logs/processing/processors/?tab=ui#grok-parser) in this pipeline
4. Add a log from `flog` in the **log sample** section.
5. Define your first parsing rule in order to extract the following information:

```text
rule %{ip:network.client.ip} %{notSpace:http.ident:nullIf("-")} %{notSpace:http.auth:nullIf("-")} \[%{date("dd/MMM/yyyy:HH:mm:ss Z"):date}\] ".*
```

Note the `.*` at the end of the rule `.` means any character, `*` means any number of times. Adding this at the end of your rule allows it to match only the beginning of your log.

The goal now is to extract all other information from your log with new `%{MATCHER:ATTRIBUTE}` groups:

| Matcher    | Attribute               | Description                                  |
| ---------- | ----------------------- | -------------------------------------------- |
| `word`     | `http.method`           | The HTTP method associated with the request. |
| `notSpace` | `http.url`              | The URL associated with the request.         |
| `number`   | `http.version`          | The HTTP version used.                       |
| `integer`  | `http.status_code`      | The status code returned.                    |
| `integer`  | `network.bytes_written` | The amount of bytes of the HTTP response.    |
| `notSpace` | `http.referer`          | The referer of the request.                  |
| `data`     | `http.useragent`        | The User-Agent associated with the request.  |

**Note**: Those attributes follow the [Datadog Standard attributes Naming convention](https://docs.datadoghq.com/logs/processing/attributes_naming_convention/#default-standard-attribute-list).
