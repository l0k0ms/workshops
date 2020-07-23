Now that the logs are properly parsed, to go beyond collection you need to be able to manipulate your logs:

For this:

1. Create a facet on the following attribute:

    * `http.url_details.path`
    * `http.method`
    * `http.status_code`

2. Use those facet to filter your log poll
3. Create an analysis that displays the relative share of request per status code.
