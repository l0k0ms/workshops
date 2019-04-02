Execute this command in a new terminal `log_bomb`{{execute}} This should generate a huge amount of logs within Datadog.

In order to understand what we have, use the pattern view of Datadog and look at all the pattern available:

https://app.datadoghq.com/logs/patterns

Create now a pipeline to parse those logs. Useful processors could be:

### Grok parser

Create a Grok parser processor to parse your full text logs and transform it into a JSON.

![Grok parser](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/grok_parser.png)

#### The full grok rule is:

```
rule %{ip:network.client_ip} - - \[%{date("dd/MMM/yyyy HH:mm:ss")}\] "%{word:http.method} %{notSpace:http.url} HTTP\/%{number:http.version}" %{number:http.status_code} %{notSpace:http.referer}
```

| Text                   | Pattern                             |
| -----                  | ----                                |
| 172.20.0.1             | %{ip:network.client_ip}             |
| [12/Oct/2018 11:44:58] | \[%{date("dd/MMM/yyyy HH:mm:ss")}\] |
| GET                    | %{word:http.method}                 |
| /simulate_sensors      | %{notSpace:http.url}                |
| HTTP/1.1               | HTTP\/%{number:http.version}        |
| 200                    | %{number:http.status_code}          |
| -                      | %{notSpace:http.referer}            |

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