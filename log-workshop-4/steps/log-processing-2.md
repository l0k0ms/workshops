## Pipeline overview

If you followed all previous exercise, your pipeline should look like this:

![pipeline-overview-2](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/pipeline-overview-2.png)

Be aware that processors within a pipeline are applied sequentially so **order does matter**.

## Final result

Go back in [your log explorer view](https://app.datadoghq.com/logs), your logs should now be properly parsed and have the right status assigned to them:

![log-parsed-2](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/log-parsed-2.png)

## Pattern view

Because the message of your log is now properly formatted, and the status correctly assigned the pattern feature is now way more accurate:

![pattern_2](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/pattern_2.png)
