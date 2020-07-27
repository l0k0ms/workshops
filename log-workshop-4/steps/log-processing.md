In order to get the most out of your logs you need to process them in order to enforce:

* A Structure
* A Standart
* A Norm

In order to achieve this, you are going to use the [Log configuration page](https://app.datadoghq.com/logs/pipelines) of Datadog. The process is always the same:

* 1 - You create a [pipeline](https://docs.datadoghq.com/logs/processing/pipelines/) to only process a defined subset of your logs in a given way.
* 2 - You add [processors](https://docs.datadoghq.com/logs/processing/processors/) to your pipeline to actually define your processing strategy in a sequential way.
* 3 - You standardize your list of just-extracted-attribute, thanks to the [Standard Attribute](https://docs.datadoghq.com/logs/processing/attributes_naming_convention/) section.
