SELECT * FROM cars.car_dekho;
use cars;
 -- READ DATA--
 select*from car_dekho;
 
 -- Total Cars: To get a count of total records--
 select count(*) from car_dekho;
 
 
 -- The manager ask the employee.How many cars will be in 2023--
 select count(*) from car_dekho where year=2023;
 
 
 -- The manager asked the employee .How many cars is available in 2020,2021.2023;
  select count(*) from car_dekho where year =2020; #74
  select count(*) from car_dekho where year =2021; #7
  select count(*) from car_dekho where year =2022; #7
  
  -- Group By--
select count(*) from car_dekho where year in (2020,2021,2022) group by year;


-- Client ask me to print the total of all cars by year.i don't see all the details--
  select year, count(*) from car_dekho group by year;
  
  
-- Client asked to car dealer agent .How many diesel cars will be there in 2020?--
select count(*) from car_dekho where year=2020 and fuel="Diesel";


-- Client request a car dealer agent .How many petrol cars will there be in 2020?--
select count(*) from car_dekho where year=2020 and fuel="Petrol";

-- The manager told the employee ro give a print All the fuel cars(Petrol,Diesel,and CNG) come by all year--
select year, count(*) from car_dekho where fuel="Petrol" group by year;
select year, count(*) from car_dekho where fuel="Diesel" group by year;
select year, count(*) from car_dekho where fuel="CNG" group by year;



-- Mananger said that were more then 100 cars given in a year , which year had more than 100 cars?--
select year,count(*)from car_dekho group by year having count(*)>100;
select year,count(*)from car_dekho group by year having count(*)<100;


-- The manager said to the employee. All cars count detail between 2015 and 2023; we need a complete list--
select count(*) from car_dekho where year between 2015 and 2023;

-- The manager said to the employee. All cars details between 2015 to 2023 we need complete list--
select*from car_dekho where year between 2015 and 2023;