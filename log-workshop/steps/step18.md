Monitors are great for the known unknown, but you can't always predict the unknown. To reproduce your users experience programmatically, Datadog has introduced Synthetics tests.

The first Synthetics test you want to create is an API test to check if your application is up and running:

1. Go to the Synthetics view.
2. Create a new **API Test**.
3. Use `https://[[HOST_SUBDOMAIN]]-5000-[[KATACODA_HOST]].environments.katacoda.com/` as URL.
4. Enter a name for your test.
5. Click on **Test URL**
6. Create a new Assertion: if `body` contains `Datadog APM Water Management Example`.
7. Enter a small notification message.
8. Save your test.

Now every time your test runs, you will have access to its results, and how your backend behaved:

![api_test](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/api_test.png)

Because API tests inject a custom id when reaching the endpoint, Datadog can display the associated trace and logs:

![api_test_with_trace](https://raw.githubusercontent.com/l0k0ms/workshops/master/log-workshop/assets/images/api_test_with_trace.png)