# wiremock-docker
# Info

- Wiremock Docker image acts as a mock server and host mock contracts/mock service to access data and functionality. 
These contracts can be consumed by UI/Microservices in-case actual service is not available.
- This service will be hosted to cloud/local and an endpoint would get exposed to developers to get it consumed.
- Developers can directly call the wiremock service to consume the wiremock contracts. This will also be useful to create integration testing for microservices.
- Copy your mock contracts to the mappings folder. Some examples has been given in the same folder.
- As you soon as you commit the code, it will be deployed to cloud/local and you can access the contracts by hitting URL pattern for e.g:  http://35.196.25.142/product/p0001

# Application-SetUp

1. Clone the GIT repository for local setup.
2. Install Docker.
3. Build the Docker image : Docker build -t wiremock-standalone .
4. Run the Docker image <You can change the port> : docker run -d -p 80:8080 wiremock-service:latest
5. Create your mock contracts and copy them to mappings folder and commit the code.
6. See the sample contracts in the mappings folder to understand the patterns.

# Access-Points

For e.g: http://127.0.0.1/product/p0001

# API
See above
