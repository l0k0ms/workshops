
To remove all logs with 2xx status code you should add the following index filter:

![index-filter](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/index-filter.png)

In order to keep track of your KPIs the following metric should be generated:

![generate-metric](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/generate-metric.png)

Then you can use this metric in the monitor with a ratio:

![monitor-metric-config](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/monitor-metric-config.png)

Your SLO configuration should then look like this:

![slo-config](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/slo-config.png)

Bonus:

After enabling the metrics you should get a dashboard like this:

![log-dashboard](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/log-dashboard.png)
