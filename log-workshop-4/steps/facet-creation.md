Now that the logs are properly parsed, to go beyond collection you need to be able to manipulate your logs.

In order to be able to manipulate a log attribute, you need to create a [facet or a measure](https://docs.datadoghq.com/logs/explorer/facets/) out of it.

### Exercise

1. Create a facet on the following attribute:

    * `http.url_details.path`
    * `http.method`
    * `http.status_code`

2. Use those facet to filter your log poll.
3. Create an analysis that displays the relative share of request count per status code.
