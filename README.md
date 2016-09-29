# Rännak (_Road Trip_)

#### By Caleb Stokka, Leah Nelson

 ### _A Rails application for planning road trips using the Google Maps API_

## Setup

* Clone repo
```
$ git clone https://github.com/leahcnels/road-trip-planner.git
```

* Install necessary packages
```
$ bundle
```
* Set up database (ActiveRecord)
```
$ postgres
$ rails db:create db:schema:load
```
* Visit [Google Maps Javascript API](https://developers.google.com/maps/documentation/javascript/) to get your own API key
* Set up .env file for API key
```
$ touch .env
$ atom .env
```
* Add this line to .env file
```
GMAPS_API_KEY=YOUR API KEY
```
* Start your rails server
```
$ rails s
```

## Contact

leahcnels@gmail.com / caleb.stokka@gmail.com

## License

This software is licensed under the MIT License

Copyright &copy; 2016 Leah Nelson, Caleb Stokka
