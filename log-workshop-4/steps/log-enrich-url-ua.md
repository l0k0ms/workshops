After assigning a severity to our logs, let's just purely enrich it by parsing the URL and the User-Agent in order to extract more information from those two attributes.

Exercise:

1. Create [an URL parser](https://docs.datadoghq.com/logs/processing/processors/#url-parser) to extract all query parameters from your requested URL in `http.url` and pass them into `http.url_details`.

2. Create [a User-Agent parser](https://docs.datadoghq.com/logs/processing/processors/#user-agent-parser) to extract all User Agent information from the attribute `http.useragent` and pass them into the attribute `http.useragent_details`
