### Category processor

The configuration of the category processor should look like this:

![category-processor](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/category-processor.png)

### Status remapper

The configuration of the status remapper should look like this:

![status-remapper](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/status-remapper.png)

### URL parser

The configuration of the URL parser should look like this:

![url-parser](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/url-parser.png)

### String builder

The configuration of the String builder processor should look like this:

![string-builder](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/string-builder.png)

### Message remapper

The configuration of the message remapper processor should look like this:

![message-remapper](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/message-remapper.png)

### Pipeline overview

Overall your pipeline should look like this:

![pipeline-overview-2](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/pipeline-overview-2.png)

### Final result

If you go back in [your log explorer view](https://app.datadoghq.com/logs) logs should now be properly parsed and have the right status assigned to them:

![log-parsed-2](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/log-parsed-2.png)

As a bonus, because the message of your log is now properly formated, the pattern feature is more accurate:
![pattern_2](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop-4/images/pattern_2.png)
