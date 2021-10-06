## Pipeline overview

If you followed all previous exercises, your pipeline looks like this:

![pipeline-overview-2](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/pipeline-overview-2.png)

Be aware that processors within a pipeline are applied sequentially so **order does matter**.

## Final result

Go back to [your log explorer view](https://app.datadoghq.com/logs). Your logs are properly parsed and have the right status assigned to them:

![log-parsed-2](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/log-parsed-2.png)

## Pattern view

Because the message of your log is properly formatted and the status correctly assigned, the pattern feature is much more accurate:

![pattern_2](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/pattern_2.png)
