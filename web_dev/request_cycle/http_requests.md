#Release 0: View HTTP Requests

1. What are some common HTTP status codes?
  * 404 Not Found: server can not find requested page
  * 403 Forbidden: server understands request refuses to respond further
  * 500 Internal Server Error: generic server error when attempting to fulfill the request
  * 503 Service Unavailable: server unavailable due to being overloaded or being under maintenance
  * 504 Gateway Timeout: upstream server not responding to proxy/gateway server in a timely manner

2. What is the difference between a GET request and a POST request? When might each be used?
  * GET: get requests are sent to receive data from a resource
  * POST: post requests submits data to a resource

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
  A cookie is a set of data received from the server and stored locally. Cookies are utilized in HTTP requests by tracking and sending local changes to the server which the server can then send data based on those changes.