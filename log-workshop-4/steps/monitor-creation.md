Let's create a monitor notification now that send an alerts when there are too much 5xx logs for any url path.

### Exercise

1. Create the query in log analytics that displays the top 100 URL paths with a 5xx error.
2. Export your log analytics as a monitor and define `2` as a threshold.
3. Create a monitor notification template that inlines the `http.url_details.path` in the notification.