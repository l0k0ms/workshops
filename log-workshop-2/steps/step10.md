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
        DD_LOGS.addLoggerGlobalContext('service', 'browser');
        DD_LOGS.logger.log('Page loaded');
    </script>
    ```

    This sends a custom log everytime the page is loaded to Datadog and will forward any errors being logged in the browser console.

3. Replace the `<CLIENT_TOKEN>` placeholder with a [client token associated with your Datadog application](https://app.datadoghq.com/account/settings#api).
4. Open the `docker_compose.yml` file and build the frontend image:

    ```
    frontend:
        (...)
        build: .
        #image: "burningion/distributed-tracing-workshop-frontend:latest"
    ```

4. Reload the application to apply this new logging configuration: `application_reload`{{execute}}
5. Reload your application Dashboard: https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/ to generate some browser logs.
