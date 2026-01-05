/*
I am a zookeeper. I take care of the animals. I feed them and make sure their happy, but it is pretty complicated to make sure that every animal gets their specific food 
that they like and the perfect amounts. It is hard for me to keep track when to feed the animals and how much each animal has to eat.  
We would like to record all these information.



The cage number, the animal type, name of animal, the day they were born, the age of the animals, meals, treats,  Pounds per day, time of day that meal is given, 
date they got their treats,  how often do they have to fast, date they last fasted

FeedingSchedule

FeedingScheduleId pk
CageNumber int not null greater than zero
AnimalType varchar(25) not null not blank
AnimalName varchar(30) not null not blank unique
DOB date not null before the current date not more than 250 years
Age based on DOB
MealContent varchar(40) not null not blank
Treats varchar(25) not null not blank
PoundsPerDay int not null greater than zero
TimeOfDay varchar(100) not null not blank
DateOfFirstTreat birthday or after fast
FastInterval varchar(30) not blank
DateOfLastFast date 
constraint FastInterval and DateOfLastLast either both null or both not
constraint DateOfLastLast after DOB before current
*/



