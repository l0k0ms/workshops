Let's go further. Execute this command `log_bomb`{{execute}} This should generate a huge amount of logs within Datadog.

Your mission, shall you accept it, is to:

1. Understand what those logs are ([patterns](https://app.datadoghq.com/logs/patterns) might help you).
2. Parse them to extract all attributes possible following the [Datadog Naming convention](https://docs.datadoghq.com/logs/processing/attributes_naming_convention/).
3. Assign a Log status depending of the Status Code.

The relation between Log status and status code is:

| Status Code  |Log Status |
| ---          | ---       |
| [200 TO 299] | ok        |
| [300 TO 399] | notice    |
| [400 TO 499] | warning   |
| [500 TO 599] | error     |

If you succeed, the final result should look like this:

![log parsed](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/log_parsed.png)
