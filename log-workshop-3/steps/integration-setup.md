Now that the data is collected, enable the corresponding integration in Datadog to pre-configure your platform:

1. Go in [_Integrations_ -> _Integrations_](https://app.datadoghq.com/account/settings).
2. Enable the [Datadog - Docker](https://app.datadoghq.com/account/settings#integrations/docker) integration.
3. Enable the [Datadog - SSH](https://app.datadoghq.com/account/settings#integrations/redis) integration.
4. Refresh the integration page.

Once it's enabled, you should see both integrations installed:

![installed integration](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/installed_integrations.png)

Out of the box, the Docker integrations installed a Dashboard:

* [Docker Dashboard](https://app.datadoghq.com/screen/integration/52/docker---overview)

Note that on any given dashboard, you can click on a displayed metric to switch to the corresponding logs:

![metrics switch to logs](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/metrics_switch_to_logs.png)