Let's create a log monitor that sends an alert when there are too much 5xx logs for any url path:

1. Create a query in the [log analytics page](https://docs.datadoghq.com/logs/explorer/analytics/) that displays the top 100 URL paths with a 5xx status code.
2. Export your log analytics as a monitor and define `2` as the alert threshold.
3. Create a monitor notification template that inlines the `http.url_details.path` in the notification thanks to the following message:

  ```text
  ALERT more than 2 5xx status code have been detected for {{http.url_details.path}} over the last 5mins
  ```