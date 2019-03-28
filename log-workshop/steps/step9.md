Most of the time all your logs won't be in JSON format, and if they are their attributes my differ between two log sources.

Let's take the following log emitted by the iot-frontend service:

![not parsed](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/not_parsed_log.png)

```
172.20.0.1 - - [12/Oct/2018 11:37:43] "GET /simulate_sensors HTTP/1.1" 200 -
```

And let's transform it to extract the IP address, the date, the method, the URL, the scheme, and the status code: For this we are going to follow the Datadog Attribute Naming convention.

Let's start to go to the pipeline section again and create a new pipeline:

![frontend pipeline](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/frontend_pipeline.png)

Note: As a best practice it's recommended to set a filter for your pipeline in order to ensure that only logs matching a specific request will enter it.

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

Now all your `iot-frontend` service logs are correctly parsed:

![log parsed](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/log_parsed.png)