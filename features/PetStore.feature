Feature: PetStore

  Background:

    * url baseUrlPet
    * path '/v2/pet'

    Scenario: Kedi
      * request read('pets.json')
      * method post
      * status 200
      * print response
      * match response.id == 9223372036854774858
      * match response.category.id == 0
      * match response.category.name == 'kedi'
      * match response.name == 'hera'
      * match response.photoUrls[0] == '#string'
      * match response.tags[0].id == 0
      * match response.tags[0].name == '#string'
      * match response.status == 'available'
      * def x = response.id

    Scenario: Batu



