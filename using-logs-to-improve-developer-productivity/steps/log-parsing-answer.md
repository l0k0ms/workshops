**If you reached this page without doing the exercise from the previous step, you are cheating ( ͡° ͜ʖ ͡°)**

Your grok parser should look like this:

![Grok config](https://raw.githubusercontent.com/l0k0ms/workshops/mainsing-logs-to-improve-developer-productivity/images/grok-config.png)

The following rule is used. Copy and paste it in your grok parser to make sure it's correct for the rest of the workshop:

```text
rule %{ip:network.client.ip} %{notSpace:http.ident:nullIf("-")} %{notSpace:http.auth:nullIf("-")} \[%{date("dd/MMM/yyyy:HH:mm:ss Z"):date}\] "%{word:http.method} %{notSpace:http.url} HTTP\/%{number:http.version}" %{integer:http.status_code} %{integer:network.bytes_written} "%{notSpace:http.referer}" "%{data:http.useragent}"
```

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
