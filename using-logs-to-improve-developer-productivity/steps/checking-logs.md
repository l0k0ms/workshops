# Checking logs

Go now in your [log explorer page](https://app.datadoghq.com/logs) of your Datadog Account to see the log flowing in:

![log-flowing](https://raw.githubusercontent.com/l0k0ms/workshops/master/using-logs-to-improve-developer-productivity/images/log-flowing.png)

*Note*: *As it's the first time your are sending logs to a new Datadog organisation it can take logs up to 1min to appear in the log explorer.*

As you can see, logs are received but are not parsed. In order to go beyond just log collection we need to parse those logs to extract information and enrich them with categorization.

## Pattern view

While you are in the log explorer view, switch to the pattern view in the upper left corner of the page to see the global [list of patterns](https://docs.datadoghq.com/logs/explorer/patterns/) from your logs:

![pattern_1](https://raw.githubusercontent.com/l0k0ms/workshops/master/using-logs-to-improve-developer-productivity/images/pattern_1.png)

As you may notice, the date and user-agents information are messing with the log clustering detection feature. Parsing will also allow us to change this.
