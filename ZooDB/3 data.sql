use ZooDB 
go 

delete FeedingSchedule
go 
--Dawn, Sunrise, morning, Noon, afternoon, sunset, evening, Dusk, Night and midnight
insert FeedingSchedule(CageNumber, AnimalType, AnimalName, DOB, MealContent, Treats, PoundsPerDay, TimeOfDay, DateOfFirstTreat, FastInterval, DateOfLastFast)
select 1, 'Gorilla', 'Alex', '1999-05-09', 'Potatoes', 'apples & bananas', 20, 'dawn-sunrise-morning-noon-afternoon-sunset', '2025-05-09',  null, null
union select 2, 'Tiger', 'Nala', '2024-08-09', 'horse meat', 'bloodsicles',  15,  'Dawn-morning-afternoon-sunset-dusk-night', '2026-01-05', '1-7', '2026-01-04'
union select 3, 'Lion', 'Leo', '2025-09-07', 'raw beef', 'bloodsicles',  12, 'Dawn-morning-afternoon-sunset-dusk-night-midnight', '2026-01-05', '1-23', '2026-01-04'
union select 4, 'Kangaroo', 'Mbali', '2020-09-09', 'Hay', 'carrots', 20, 'morning',  '2025-09-09', null, null
union select 4, 'Kangaroo', 'Harrison', '2018-08-05', 'Hay', 'carrots',  22, 'morning', '2025-08-05', null, null
union select 5, 'polar bear', 'Syanii', '2019-01-05', 'fish', 'ice cubes', 15, 'sunrise', '2025-01-05',  '1-14 days', '2026-01-02'
union select 6, 'panda bear', 'Ada', '2000-09-02',  'bamboo', 'apples & carrots', 70, 'sunrise-morning-afternoon-sunset-evening-night', '2025-09-02', null, null
union select 7, 'zebra', 'Zulu', '2009-12-05', 'grass hay', 'sugar canes', 7, 'sunrise-afternoon',  '2025-12-05', null, null
