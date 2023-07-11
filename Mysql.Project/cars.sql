
Create schema Cars;
Use cars;
-- Read data--
Select *from car_dekho;
-- Total Cars; To get account of total records--
select count(*) from car_dekho;
-- The manger asked how many cars will be available in 2023?--
select count(*) from car_dekho where year=2023;
-- The manger asked how many cars will be available in 2020,2021,2022?--
select count(*) from car_dekho where year=2020; #74
select count(*) from car_dekho where year=2021; #7
select count(*) from car_dekho where year=2022; #7
-- Group By--
Select count(*) from car_dekho where year in (2020,2021,2022) group by year;
-- Client asked me to print the total of all cars by year .I don’t see all the details--
select year, count(*)from car_dekho group by year;

-- Client asked to car dealer agent. How many diesel cars will be there in 2020? --
select count(*)from car_dekho where year = 2020 and fuel = "diesel";

-- Client asked to car dealer agent. How many petrol cars will be there in 2020? --
select count(*)from car_dekho where year = 2020 and fuel = "petrol"; #51

-- The manger told the employee to print all the fuel cars(petrol, diesel and CNG) come by all year?--
select year, count(*)from car_dekho where fuel = "petrol" group by year;
select year, count(*)from car_dekho where fuel = "diesel" group by year;
select year, count(*)from car_dekho where fuel = "CNG" group by year;

-- Manager said that there were more than 100 cars in a given year, which year had more than 100 cars?--
select year, count(*)from car_dekho group by year having count(*)> 100;
select year, count(*)from car_dekho group by year having count(*)<50;

-- The manger said to the employees. All cars count details between 2015 and 2023; we need a complete list?--
select count(*) from car_dekho where year between 2015 and 2023;

-- The manager said to the employees. All car details between 2015 and 2023, we need complete list--
select *from car_dekho where year between 2015 and 2023;








