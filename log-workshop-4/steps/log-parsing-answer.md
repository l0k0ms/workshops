
This is the expected configuration: https://a.cl.ly/E0uzx1D6

The rule used is the following:

```text
rule %{ip:network.client.ip} %{notSpace:http.ident:nullIf("-")} %{notSpace:http.auth:nullIf("-")} \[%{date("dd/MMM/yyyy:HH:mm:ss Z"):date}\] "%{word:http.method} %{notSpace:http.url} HTTP\/%{number:http.version}" %{number:http.status_code} %{integer:network.bytes_written} "%{notSpace:http.referer}" "%{data:http.useragent}"
```

With the following explanation:

| Text                        | Pattern                                   |
| -----                       | ----                                      |
| 172.20.0.1                  | %{ip:network.client_ip}                   |
| [26/06/2019:09:22:54 +0000] | \[%{date("dd/MM/yyyy:HH:mm:ss Z"):date}\] |
| GET                         | %{word:http.method}                       |
| /simulate_sensors           | %{notSpace:http.url}                      |
| 200                         | %{number:http.status_code}                |