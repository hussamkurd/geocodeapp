# README

Simple application to check coordinates within specific countries

# Installation
After download the project you just need to make sure bundle is installed with
`bundle install`

# Start
You just need to run the rails server with 
`rails server -p 10524`
Then you can run the api and pass the longitude and latitude to it as get veriables 
`http://localhost:10524/check_longlat_within_country?lat=52.520008&long=13.404954`
# Config
you can simply identify the country list in `config/gecode_config.rb`
by adding countries in the `RESTRICTED_COUNTRY_LOCATION` array


