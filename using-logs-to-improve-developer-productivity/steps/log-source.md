We saw how you could create pipelines to parse and enrich your logs, in order to manipulate them and monitor them.

To reduce your time-to-value so that you can focus on what you do best: building amazing applications, Datadog has already created out-of-the-box pipelines that are automatically imported when the right `source` tag is set.
The full list of OOTB pipelines and their corresponding source can be seen in the upper right corner of the [Log configuration page](https://app.datadoghq.com/logs/pipelines) under the **Browse Pipeline Library** button:

![OOTB pipelines](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/ootb-pipelines.png)

Exercise:

1. Kill the previous container emitting logs: `docker kill flog`{{execute}}
2. Launch it again with the right `source` tag:
`docker run -d --label com.datadoghq.ad.logs='[{"source": "apache", "service": "apache"}]' -it --rm mingrammer/flog -f apache_combined -l -n 100000 -d 0.2`{{execute}}

Now go to the log configuration page to see the Apache pipeline activated automatically:

![apache pipeline](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/apache_pipeline.png)

In your log explorer you also now have Apache saved views that allow you to focus on specific log use-cases:

![apache saved views](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/apache_saved_views.png)
