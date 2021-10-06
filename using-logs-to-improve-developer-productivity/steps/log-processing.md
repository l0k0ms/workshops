To get the most out of your logs you need to process them to enforce:

* A Structure
* A Standard
* A Norm

You'll use the [Log configuration page](https://app.datadoghq.com/logs/pipelines) of Datadog. The process is always the same:

1. Create a [pipeline](https://docs.datadoghq.com/logs/processing/pipelines/) to only process a defined subset of your logs in a given way.
2. Add [processors](https://docs.datadoghq.com/logs/processing/processors/) to your pipeline to define your processing strategy in a sequential way.
3. Standardize your list of just-extracted-attributes, thanks to the [Standard Attribute](https://docs.datadoghq.com/logs/processing/attributes_naming_convention/) section.
