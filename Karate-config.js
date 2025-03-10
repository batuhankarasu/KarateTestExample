function fn() {
  var env = 'test'; // get java system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev'; // a custom 'intelligent' default
  }
  var config = { // base config JSON
    baseUrl: 'https://api.openweathermap.org/data/2.5/weather',
    baseUrlPet: 'https://petstore.swagger.io'
  };
  if (env == 'test') {
    // over-ride only those that need to be
    config.someUrlBase = 'https://api.openweathermap.org';
  }
  // don't waste time waiting for a connection or if servers don't respond within 5 seconds
  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);
  return config;
}