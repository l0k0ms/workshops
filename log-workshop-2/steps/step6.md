Our application is running over Docker containers, as such Datadog has a Container centric page:

* [Containers view](https://app.datadoghq.com/containers)

Where you can see all containers running with their associated:

* Processes
* Metrics
* Logs

![Container view](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/container_view.png)

When zooming on a given container, you can see the processes running inside it with its key metrics:

![Container in-depth details metrics](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/container_focus_with_metrics.png)

and the corresponding logs being emitted in real-time by this container:

![Container in depth details logs](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-2/images/container_focus_with_logs.png)
