1. In order to get started, launch the application by clicking on the `application_build`{{execute}} command.

2. After seeing the logs flowing in your terminal click on `APPLICATION DASHBOARD` tab of the terminal in oder to see the application running or access this link:

    https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/

    Refresh the Application page, click around, add a pump, try adding a city. This begins to generate metrics, APM traces, and logs for your application.

3. Go to Datadog, to see your application corresponding data:

    * [In the live processes view](https://app.datadoghq.com/process)
    * [In the containers view](https://app.datadoghq.com/containers)
    * [In the APM Services view](https://app.datadoghq.com/apm/services)
    * [In the APM Services Map view](https://app.datadoghq.com/service/map?env=workshop)
    * [In the container map view](https://app.datadoghq.com/infrastructure/map?fillby=avg%3Aprocess.stat.container.io.wbps&sizeby=avg%3Anometric&groupby=short_image&nameby=name&nometrichosts=false&tvMode=false&nogrouphosts=true&palette=YlOrRd&paletteflip=false&node_type=container)

Tab back over to your terminal, and look over the container logs, go to your https://app.datadoghq.com/logs and notice that there is no log yet...

Our first mission should you choose to accept it, configure the Datadog Agent to start forwarding your logs into your Datadog Application.