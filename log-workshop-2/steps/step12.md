Let's look closer at our logs.

![original log](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/original_log.png)

The python encapsulation is extracted but left as is in our log message.

Let's remove all duplicated information to keep only the core content of our log in our message:

Go the [Log configuration page](https://app.datadoghq.com/logs/pipelines) and start by cloning our python pipeline.

![Duplicating pipeline](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/duplicating_pipeline.png)

Now that we can edit our pipeline:

1. Open the processor: `Grok Parser: Parsing python default format`.
2. Comment the `python_format` rule.
3. Create a new grok parsing rule to extract the message:
    ```
    python_format_workshop (%{_python_prefix}|%{_datadog_prefix})\s+%{data:tmp_msg}
    ```
4. Save your new processor

The final Grok parser should look like this:

![grok_parser_edited](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/grok_parser_edited.png)

To finish the new processing strategy, create a new message remapper processor:

![message_remapper](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/message_remapper.png)

If you followed the instructions above, your Redis logs should look like this now:

![logs_properly_processed](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/new_python_log.png)
