# NEED FOR SPEED
Need for Speed is an individual project built in one day which has per objective to demonstrate knowledge on the following areas:

* Ability to write code that is easy to change.
* Ability to test-drive my code.
* Ability to build with objects.
* Ability to fluidly work with Ruby.

## Domain Model
```
As a driver,
So that I drive a car,
I'd like a garage to release a car.
```
| Objects | Messages |
|--|--|
|Driver||
|Car||
|Garage|release_car|
```
As a driver,
So that I drive a good car,
I'd like to see if a car is working.
```
| Objects | Messages |
|--|--|
|Driver||
|Car|working?|
|Garage||
```
As a member of the crew
So I can return cars I've driven
I want to park my car at the garage
```
| Objects | Messages |
|--|--|
|Driver||
|Car||
|Garage|park_car|
```
As a member of the crew
So I can decide whether to use a garage
I want to see a car that has been parked
```
| Objects | Messages |
|--|--|
|Driver||
|Car||
|Garage|car|
```
As a member of the crew,
So that I am not confused,
I'd like garages not to release cars when there are none inside.
```
| Objects | Messages |
|--|--|
|Driver||
|Car||
|Garage|release_car(raise_error)|

## Diagram of Correlation

Garage <== release_car ==> Car </br>
Car <== working? ==> true/false </br>
Garage <== park_car ==> Car </br>
Garage <== car ==> Car </br>
Garage <== release_car(raise_error) ==> Car </br>

## Note
This project is inspired in the Boris Bikes project that you can find [here](https://github.com/makersacademy/course/blob/master/boris_bikes/0_challenge_map.md).
