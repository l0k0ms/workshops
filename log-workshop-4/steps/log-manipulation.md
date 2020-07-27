Now that logs are properly processed and implement logging best practices, you can leverage all of the other features of Datadog:

* Extended Log search over the log list thanks to [Facets and Measures](https://docs.datadoghq.com/logs/explorer/facets/).
* [Log analytics](https://docs.datadoghq.com/logs/explorer/analytics/).
* [Log monitors](https://docs.datadoghq.com/monitors/monitor_types/log/).

In order to be able to manipulate a log attribute, you need to create a [Facet or a Measure](https://docs.datadoghq.com/logs/explorer/facets/) out of it.

Use facets when you need:

* **To filter your logs against specific value(s)**. For instance, create a facet on an environment tag to scope troubleshooting down to development, staging, or production environments.
* **To get relative insights for values**. For instance, create a facet on http.network.client.geoip.country.iso_code to see the top countries most impacted per number of 5XX errors on your NGINX web access logs, enriched with the Datadog GeoIP Processor.
* **To count unique values**. For instance, create a facet on user.email from your Kong logs to know how many users connect every day to your website

Use measures when you need:

* **To aggregate values from multiple logs**. For instance, create a measure on the size of tiles served by the Varnish cache of a map server and keep track of the average daily throughput, or top-most referrers per sum of tile size requested.
* **To range filter your logs**. For instance, create a measure on the execution time of Ansible tasks, and see the list of servers having the most runs taking more than 10s.
* **To sort logs against that value**. For instance, create a measure on the amount of payments performed with your Python microservice. You can then search all the logs, starting with the one with the highest amount.
