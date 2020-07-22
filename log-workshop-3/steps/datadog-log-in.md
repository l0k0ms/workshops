While the application is installing, [connect to your Datadog application](https://app.datadoghq.com) with the credentials provided for this workshop.

If you didn't receive credentials, go to [The Datadog Signup page](https://app.datadoghq.com/signup) and create a new Datadog Account.

Once done, run the following command into your terminal by replacing `<DATADOG_API_KEY>` with the [Datadog API key associated with your account](https://app.datadoghq.com/account/settings#api):

`echo "export DD_API_KEY=<DATADOG_API_KEY>" >> ~/.bashrc`{{copy}}

After seeing the logs flowing in your terminal click on the `APPLICATION DASHBOARD` tab of the terminal to see the application running or access this link:

    https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/

Refresh the Application page, click around to begin generating metrics, APM traces, and logs for your application.
