# Beyond collection: Standardisation & Normalisation

Now that log collection is covered, it’s time to dive into log management best practices a.k.a Standardisation and Normalisation. After collecting logs, best practices should be implemented as we move into the log management territory: centralizing all logs into a single place raises issues around their manipulation and ultimately their standardisation & normalisation so that logs from different sources can be compared to one another.

Let's do our first modification to clean all python logs, if you select the `python` source and look at available pattern you should see this:

IMAGE

OOTB pipeline are read only, the first thing to do is to clone the pipeline so that we can edit it:

Open the first processor: `Grok Parser: Parsing python default format`

Change the rule `python_format` to be `(%{_python_prefix}|%{_datadog_prefix})\s+%{data:message_extracted}`

IMAGE

Now we assigned the message in an attribute message_extracted. As all other information from our logs is already extracted and assigned to an attribute, we can keep only this `message_extracted` as the official log message.

At the end of the pipeline create a new Message Remapper with the following configuration:


https://a.cl.ly/p9uPWmZr

Now, go back in your log explorer view and check the new patterns:

https://a.cl.ly/z8u8K2BP

You can now see the message properly without any noice.