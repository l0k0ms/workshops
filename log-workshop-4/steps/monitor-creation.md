Let's create a monitor notification now that send an alerts when there are too much 5xx logs for any url

1. Create the query in log analytics
2. Export your log analytics as a monitor
3. Create a monitor notification template that inlines the `http.url_details.path` in the notification.