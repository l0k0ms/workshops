Most of the time all your logs won't be in JSON format, and if they are their attributes my differ between two log sources.

Let's take the following log emitted by the `pumps-service` service:

![pump not parsed](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/pumps_not_parsed_log.png)

```
2019-04-02 08:18:29,867 INFO [flask.app] [thing.py:35] [dd.trace_id=12028140520836558688 dd.span_id=4743440125281857057] - Adding pump <Pump (transient 139911307271920)>
```

And let's transform it to extract:

* The date
* The severity
* The application code file and line
* Datadog Trace ID and Span ID
* The original log message

Let's start to go to the pipeline section again and create a new pipeline:

![pump pipeline](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/pump_pipeline.png)

Note: As a best practice it's recommended to set a filter for your pipeline in order to ensure that only logs matching a specific request will enter it.

### Grok parser

Create a Grok parser processor to parse your full text logs and transform it into a JSON.

![Grok parser](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/pump_log_parsing.png)

#### The full grok rule is:

```
rule  %{word:severity} \[%{notSpace:appname}\] \[%{notSpace:file.name}:%{number:file.line}\] \[dd.trace_id=%{number:dd.trace_id} dd.span_id=%{number:dd.span_id}\] - %{data:msg}
```


### Status remapper

Create a status remapper processor to take the category we just created and remap it as your official log status:

![severity remapper](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/severity_remapping.png)

## Trace ID remapper

Create a Trace ID remapper processor in order to bind your logs to the associated traces:

![Trace ID remapper](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/trace_id_remapper.png)

## Message remapper

Now that all metadata information have been extracted you can remap the `msg` as the official log message.

![message remapper](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/message_remapper.png)

## Duplicate your Pipeline

You can now clone your pipeline and apply it to other services to benefit from the same parsing possibilities:

![duplicate pipeline](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/duplicate_pipeline.png)

To configure a new pipeline over the `iot-frontend` logs:

![cloned duplicate pipeline](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/new_cloned_pipeline.png)

Note: Don't forget to re-activate your previous pipeline.

### Final Log

Now all your `pumps-service` and `iot-frontend` logs are correctly parsed:

![log parsed pumps](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/log_parsed_pumps.png)