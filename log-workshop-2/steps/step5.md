
Now that the data is reporting to Datadog, let's enable the corresponding integration in the application in order to pre-configure it:

1. Go in [_Integrations_ -> _Integrations_](https://app.datadoghq.com/account/settings).
2. Enable the [Datadog - Docker](https://app.datadoghq.com/account/settings#integrations/docker) integration.
3. Enable the [Datadog - Redis](https://app.datadoghq.com/account/settings#integrations/redis) integration.
4. Refresh the integration page.

Once it's done you should see that both integrations are installed:

![installed integration](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/installed_integrations.png)

Out of the box those two integrations have installed two Dashboards:

* [Docker Dashboard](https://app.datadoghq.com/screen/integration/52/docker---overview)
* [Redis Dashboard](https://app.datadoghq.com/screen/integration/15/redis---overview)

Note that on any given dashboard, you can click on a displayed metric to switch to the corresponding logs:

![metrics switch to logs](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/metrics_switch_to_logs.png)