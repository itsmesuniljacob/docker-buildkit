if (process.env.ENVIRONMENT === 'PROD') {
    require('elastic-apm-node').start({
      // Override the service name from package.json
      // Allowed characters: a-z, A-Z, 0-9, -, _, and space
      serviceName: 'test-services',
      // Set the service environment
      environment: 'production',

    });
  }

const hello="Hello World"
console.log(hello);