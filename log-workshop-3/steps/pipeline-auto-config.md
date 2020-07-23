All logs are centralized in the [Datadog log explorer](https://app.datadoghq.com/logs):

In this view you can search your logs, detect log patterns, build analytics upon your logs:

Before we move beyond the collection note that [some logs are not properly wrapped](https://app.datadoghq.com/logs?cols=core_host%2Ccore_service&from_ts=1595485432543&index=&live=true&messageDisplay=inline&query=service%3Astore-frontend%20status%3Aerror&stream_sort=desc&to_ts=1595486332543):



In order to fix this we need to configure our container annotations with a [log processing rule](https://docs.datadoghq.com/agent/logs/advanced_log_collection?tab=docker#multi-line-aggregation).

In the `docker-compose-files/docker-compose-fixed-instrumented-no-log.yml` file edit the `labels` parameter for the `frontend` container with the following configuration:

```yaml
    labels:
      com.datadoghq.ad.logs: '[{ \
                                "source": "ruby", \
                                "service": "store-frontend", \
                                "log_processing_rules": [{ \
                                    "type": "multi_line", \
                                    "name": "log_start_with_date", \
                                    "pattern" : "\\d{4}-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])" \
                                    }] \
                             }]'
      my.custom.label.team: "frontend"
```

Then restart your application to take into account this new label: `app_restart`{{execute}}