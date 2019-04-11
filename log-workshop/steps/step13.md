Execute this command in a new terminal `log_bomb`{{execute}} This should generate a huge amount of logs within Datadog.

In order to understand what we have, use the pattern view of Datadog and look at all the pattern available:

https://app.datadoghq.com/logs/patterns

Let's now create a pipeline to parse those logs.

### Create a dedicated Pipeline

Let's start to go to the pipeline section again and create a new pipeline to only parse those logs:

![Create a pipeline](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/create_a_pipeline.png)

### Grok parser

Create a Grok parser processor to parse your full text logs and transform it into a JSON.

![Grok parser](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/grok_parser.png)

#### The full grok rule is:

```
rule %{ip:network.client.ip} %{notSpace:http.ident:nullIf("-")} %{notSpace:http.auth:nullIf("-")} %{number:duration} \[%{date("yyyy-MM-dd'T'HH:mm:ssZ"):date}\] "%{word:http.method} %{notSpace:http.url}" %{number:http.status_code} %{integer:network.bytes_written} "%{notSpace:http.referrer}" "%{data:http.useragent}"
```

| Text                   | Pattern                             |
| -----                  | ----                                |
| 172.20.0.1             | %{ip:network.client_ip}             |
| [12/Oct/2018 11:44:58] | \[%{date("dd/MMM/yyyy HH:mm:ss")}\] |
| GET                    | %{word:http.method}                 |
| /simulate_sensors      | %{notSpace:http.url}                |
| 200                    | %{number:http.status_code}          |
| -                      | %{notSpace:http.referer}            |
| -                      | %{data:http.useragent}              |

The previous grok rules implements [Datadog naming convention](https://docs.datadoghq.com/logs/processing/attributes_naming_convention/).

### Category processor

An access log by definition doesn't have any status attached, but there is a way to assign your log a status depending on the value of the http.status_code attribute. For this create a category processor:

And add 4 categories to it:

![create a category](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/create_a_category.png)

All events that match:  Appear under the value name:

|                                |         |
| ---                            | ---     |
| @http.status_code:[200 TO 299] | ok      |
| @http.status_code:[300 TO 399] | notice  |
| @http.status_code:[400 TO 499] | warning |
| @http.status_code:[500 TO 599] | error   |


### Status remapper

Create a status remapper processor to take the category we just created and remap it as your official log status:

![status remapper](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/status_remapper.png)

### Url Parser

Finally, create an url parser to extract all query parameters from your requested URL:

![url parser](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/url_parser.png)

### Final Log

If you succeed correctly the final result should look like this:

![log parsed](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/log_parsed.png)


### Getting further

Add the right facets and measures and try to display the p95 percentiles of bytes sent per URL.