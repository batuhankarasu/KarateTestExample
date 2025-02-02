Feature: KarateExample.feature


  Background:
    * configure charset = null
    * configure ssl = true
    * url baseUrl
    * print baseUrl
    * def sehirAdi = 'Ankara'
    * def ulkekodu = 'tr'
    * def appidKey = 'f57944d9dd4122f54c55072ef691b147'

    Scenario: HavaDurumuSehireGore
      * param q = sehirAdi
      * param appid = appidKey
      * method get
      * status 200
      * print response
      * match response.coord.lon == 32.8543
      * match response.coord.lat == 39.9199
      * match response.weather[0].main == '#string'
      * match response.weather[0].description == '#string'
      * print response.weather[0].icon
      * match response.weather[0].icon == '#string'
      * print response.main.temp
      * match response.main.temp == '#number'
      * match response.wind.speed == '#number'
      * match response.sys.id == 6947
      * match response.sys.country == 'TR'
      * match response.timezone == 10800
      * match response.name == 'Ankara'

    Scenario: HavaDurumuSehireVeUlkeyeGore
      * param q = sehirAdi+','+ulkekodu
      * param appid = appidKey
      * method get
      * status 200
      * print response
      * match response.coord.lon == 32.8543
      * match response.coord.lat == 39.9199
      * match response.weather[0].id == 804
      * match response.weather[0].main == '#string'
      * match response.weather[0].description == '#string'
      * match response.main.temp == '#number'
      * match response.main.feels_like == '#number'
      * match response.main.temp_min == '#number'
      * match response.main.temp_max == '#number'
      * match response.main.pressure == '#number'
      * match response.main.humidity == '#number'
      * match response.main.sea_level == '#number'
      * match response.main.grnd_level == '#number'
      * match response.visibility == '#number'
      * match response.wind.speed == '#number'
      * match response.wind.deg == '#number'
      * match response.wind.gust == '#number'
      * match response.clouds.all == '#number'
      * match response.dt == '#number'
      * match response.sys.type == '#number'
      * match response.sys.id == 6947
      * match response.sys.country == 'TR'
      * match response.sys.sunrise == '#number'
      * match response.sys.sunset == '#number'
      * match response.timezone == 10800
      * match response.id == 323786
      * match response.name == 'Ankara'
      * match response.cod == '#number'







