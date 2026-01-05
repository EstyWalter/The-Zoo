
use ZooDB 
go 

drop table if exists FeedingSchedule 

create table dbo.FeedingSchedule(
    FeedingScheduleId int not null identity primary key,
    CageNumber int not null constraint ck_FeedingSchedule_CageNumber_greater_than_zero check (CageNumber > 0),
    AnimalType varchar(25) not null constraint ck_FeedingSchedule_AnimalType_cannot_be_blank check(AnimalType <> ''),
    AnimalName varchar(30) not null unique 
        constraint ck_FeedingSchedule_AnimalName_cannot_be_blank check(AnimalName <> ''),
    DOB date not null constraint ck_FeedingSchedule_DOB_must_be_between_250_years_before_the_current_date_and_the_current_date check(datediff(year, DOB, getdate()) between 0 and 250),
    Age as datediff(year, DOB, getdate()),
    MealContent varchar(40) not null constraint ck_FeedingSchedule_MealContent_cannot_be_blank check(MealContent <> ''),
    Treats varchar(25) not null constraint ck_FeedingSchedule_Treats_cannot_be_blank check(Treats <> ''),
    PoundsPerDay int not null constraint ck_FeedingSchedule_PoundsPerDay_greater_than_zero check(PoundsPerDay > 0),
--AS In order to allow multiple times of days but block anything else, I needed to insert a very long constraint
    TimeOfDay varchar(100) not null constraint ck_FeedingSchedule_TimeOfDay_must_be_from_specified_options check(TimeOfDay <> ''
    and
    replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(
      TimeOfDay,
      'dawn',''),'sunrise',''),'morning',''),'afternoon',''),'noon',''),'sunset',''),'evening',''),'dusk',''),'midnight',''),'night','') not like '%[^-]%'),
    DateOfFirstTreat date,
    FastInterval varchar(30) constraint ck_FeedingSchedule_FastInterval_cannot_be_blank check(FastInterval <> ''),
    DateOfLastFast date,
    constraint ck_FeedingSchedule_DateOfFirstTreat_after_DOB_before_Current_date check(DateOfFirstTreat between DOB and getdate()),
    constraint ck_FeedingSchedule_DateOfLastFast_after_DOB_before_current_date check(DateOfLastFast between DOB and getdate()),
    constraint ck_FeedingSchedule_FastInterval_and_DateOfLastFast_both_null_or_both_not_null check((FastInterval is null and DateOfLastFast is null) or (FastInterval is not null and DateOfLastFast is not null))

)

