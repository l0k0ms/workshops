Let's look closer into our logs.

![original log](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/original_log.png)

The python encapsulation is extracted but left as is in our log message.

Let's remove all duplicated information in order to keep in our message only the core content of our log:

Go the the [Log configuration page](https://app.datadoghq.com/logs/pipelines) and start by cloning our python pipeline

![Duplicating pipeline](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/duplicating_pipeline.png)

Now that we can edit our pipeline:

1. Open the processor: `Grok Parser: Parsing python default format`
2. Comment the `python_format` rule.
3. Create a new grok parsing rule in order to properly extract the message:
    ```
    python_format_workshop (%{_python_prefix}|%{_datadog_prefix})\s+%{data:tmp_msg}
    ```
4. Save your new processor

The final Grok parser should look like this:

![grok_parser_edited](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/grok_parser_edited.png)

In order to finish the new processing strategy, create a new message remaper processor:

![message_remapper](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/message_remapper.png)

If you followed the instructions above, your Redis logs should look like this now:

![logs_properly_processed](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/images/logs_properly_processed.png)
