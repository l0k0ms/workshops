Let's create a log monitor that sends an alert when there are too many 5xx logs for any URL path:

1. Create a query in the [log analytics page](https://docs.datadoghq.com/logs/explorer/analytics/) that displays the top 100 URL paths with a 5xx status code.
2. Export your log analytics as a monitor and define `2` as the alert threshold.
3. Create a monitor notification template that in-lines the `http.url_details.path` in the notification with the following message:

```
ALERT more than 2 5xx status code have been detected for a URL over the last 5mins.
```
