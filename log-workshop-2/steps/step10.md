## Browser logging

To reduce even further the MTTR, let's be pro-active and log directly from the user-perspective with Datadog browser log managment. [Instructions can be found in the in-app documentation](https://app.datadoghq.com/logs/onboarding/client)

1. Open the `frontend/static/index.html` file.
2. In the `<head>` add the following lines:

```html
<script type="text/javascript" src="https://www.datadoghq-browser-agent.com/datadog-logs-us.js"></script>
<script>
    // Set your client token
    DD_LOGS.init({
        clientToken: '<CLIENT_TOKEN>',
        forwardErrorsToLogs: true,
    });

    DD_LOGS.addLoggerGlobalContext({'service': 'browser','http.url': window.location.href });
    DD_LOGS.logger.log('Page loaded'});
</script>
```