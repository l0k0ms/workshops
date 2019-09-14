#!/bin/bash

echo "Testing if the API Key is set." | wall -n

if grep -q 'export DD_API_KEY=' ~/.bashrc
then
	echo "done"
	echo "The Datadog API key is correctly set!" | wall -n
else
	echo "There seems to be an error, enter your Datadog API key to continue!" | wall -n
fi
