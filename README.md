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

## Diagram of Correlation

Garage <== release_car ==> Car 

## Note
This project is inspired in the Boris Bikes project that you can find [here](https://github.com/makersacademy/course/blob/master/boris_bikes/0_challenge_map.md).
