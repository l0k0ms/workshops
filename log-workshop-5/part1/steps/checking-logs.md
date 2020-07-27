Go now in the [log explorer page](https://app.datadoghq.com/logs) of your Datadog Account to see the log flowing in:

![log-flowing](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/log-flowing.png)

As you can see logs are received but are not parsed, in order to go beyond the collection we need to parse those logs in order to extract information.

Switch to the pattern view to see the global pattern that are in your logs:

![pattern_1](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/pattern_1.png)

As you can see the date and user-agents information are messing with the log clustering detection feature, parsing will allow us to change this.