--what is the date of the next time the bear has to fast?
select NextFast = dateadd(day, 14, DateOfLastFast)
from feedingschedule f
where f.AnimalType like '%bear'
and f.FastInterval is not null

--I need to know how many animals their are per cage?
select Count = count(*), f.cagenumber
from feedingschedule f 
group by f.cagenumber

--how much do the animals have to eat per serving?
select PoundsPerFeeding = f.PoundsPerDay / ((len(TimeOfDay) - len(replace(TimeOfDay, '-', ''))) + 1), f.AnimalName
from feedingschedule f 
