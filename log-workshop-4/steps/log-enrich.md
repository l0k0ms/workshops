Now that the log are parsed and each value can be manipulated, let's enrich our logs by assigning a severity based on the status code of our logs:

An access log by definition doesn't have any status attached, but there is a way to assign your log a status depending on the value of the http.status_code attribute. For this create a category processor:

And add four categories to it:

![create a category](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/create_a_category.png)

All events that match:  Appear under the value name:

|                                |         |
| ---                            | ---     |
| @http.status_code:[200 TO 299] | ok      |
| @http.status_code:[300 TO 399] | notice  |
| @http.status_code:[400 TO 499] | warning |
| @http.status_code:[500 TO 599] | error   |


### Exercise

1. Create the category processor in your pipeline
2. Remap the new attribute created as the status of the log thanks to the `Status Remapper`
3. Mandatory bonus: Create an URL parser to extract all query parameters from your requested URL:

![url parser](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/url_parser.png)