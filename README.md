world_wrap
==========

This is the gem to get all the country list, state, cities list.

I wasted lots of time to find the state, city, country list based on some parameters the is the gem to provide you list of country.

Features: 
* list of all the countries
* list of state only for india
* list of cities only for 3-4 states for india.

Avaiable Features: 
* list or all the counties in the world
* list of all the states of india.
* list of al the cities of india by country wise or by state wise
* list of all the states for us
 
How To Use:

# install gem by using:
$ gem install world_wrap

# include it into your file
include WorldWrap

# to get all the countries in the world
 countries # call this method to get all the countries in hash format

# this will return a hash of countries
 
# to get all the states of a country

states({country: 'in'}) # to get all te states of india country will be code or name return by countries list

# this will return a hash of states

# to get all the cities by a state

cities({state: 'ap'}) # to get cities list by state give state code or name in parameter

# this will return a array of cities list

# to get all the cities by a country

cities({state: 'in'}) # to get cities list by country give country code or name in parameter

# this will return a array of cities list

Contribute: 
* add remanning cities or states for country and states level.
* the key name should me in down case.
* test it properly.
* send me a pull request.
