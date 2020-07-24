Now that the log are parsed and each value can be manipulated, let's enrich our logs by assigning a severity based on the status code of our logs:

An access log by definition doesn't have any status attached, but there is a way to assign your log a status depending on the value of the `http.status_code` attribute.

### Exercise

1. Create a category processor in your pipeline, and add four categories to it:

  | Query                          | Value   |
  | ---                            | ---     |
  | @http.status_code:[200 TO 299] | ok      |
  | @http.status_code:[300 TO 399] | notice  |
  | @http.status_code:[400 TO 499] | warning |
  | @http.status_code:[500 TO 599] | error   |
  The value should be assgined to a new attribute: `http.status_code_category`

2. Remap the newly created attribute as the status of the log thanks to the `Status Remapper`.
3. Create an URL parser to extract all query parameters from your requested URL into `http.url_details`.
4. Create a temporary message thanks to the *String Builder processor* for your log that includes:

    `Request %{http.method} %{http.url_details.path} with response %{http.status_code}`

5. Remap this temporary message as the official log message with a Message remapper.
