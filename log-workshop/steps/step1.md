While the application is installing, [connect to your Datadog application](https://app.datadoghq.com) to the credentials I provided for this workshop.

If I did not provide credentials, go to [The Datadog Signup page](https://app.datadoghq.com/signup) and create a new Datadog Account.

Once done, run the following command into your terminal by replacing `<DATADOG_API_KEY>` with the [Datadog API key associated with your account](https://app.datadoghq.com/account/settings#api):

`echo "export DD_API_KEY=<DATADOG_API_KEY>" >> ~/.bashrc`{{copy}}

Finally, enable Datadog Log management:

![empty log explorer](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/empty_log_explorer.png)

1. Go in [Datadog Logs section](https://app.datadoghq.com/logs)
2. Click **Getting Started**
3. Select **Start Trial**