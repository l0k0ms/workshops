We saw how to manipulate your logs and how you could monitor them, but in Log management there is the word **management**.

The whole idea of Datadog Logging Without Limits is that: it's not because a log is sent to Datadog, a log is "ingested", a log is "processed" that you necessarily want to index it for search/analytics/monitor use-cases.

**Ingesting and indexing are two different things.**

When ingesting a log in Datadog you can:

* Index it to allow search, analytics, and monitors

**AND/OR:**

* Archive it thanks to [Log archives](https://docs.datadoghq.com/logs/archives/). And retrieve it later thanks to the [Rehydrate from Archives](https://docs.datadoghq.com/logs/archives/rehydrating) feature.

**AND/OR:**

* Generate a metric out of it in order to only track a KPI.
