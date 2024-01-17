/****** CREATING PROCEDURES ******/

-- tarile cu vanzari de peste 500000
create or alter procedure sales_over_half_mil
AS
BEGIN
    select country
    from Sales s inner join Cars c on s.carID = c.carID
                inner join Clients cl on s.clientID = cl.clientID
    group by country
    having sum(c.price) > 500000
END
GO

-- cel mai vandut model de masina din orasul @city primit ca parametru
create or alter procedure sales_in_city(@city varchar(50))
AS
BEGIN
    select top 1 m.brand + ' ' + m.name as model, count(*) as sales
    from Sales s inner join Cars ca on s.carID = ca.carID
				inner join Dealers d on s.dealerID = d.dealerID
				inner join Models m on ca.modelID = m.modelID
				inner join Clients cl on s.clientID = cl.clientID
    where cl.city = @city
	group by (m.brand + ' ' + m.name)
    order by count(*) desc;
END
GO
-- toti dealerii care au vandut masini cu pretul mai mare decat media preturilor masinilor vandute in Romania
create or alter procedure top_dealers
AS
BEGIN
    select d.first_name + ' ' + d.last_name as name, STRING_AGG(m.brand + ' ' + m.name ,'|| ') as models
    from Sales s inner join Cars c on s.carID = c.carID
                inner join Dealers d on s.dealerID = d.dealerID
                inner join Models m on c.modelID = m.modelID
    group by d.first_name, d.last_name
	having max(c.price) >= (select avg(ca.price) 
							from Cars ca inner join Sales s on s.carID = ca.carID
							inner join Clients cl on cl.clientID = s.clientID
							where cl.country = 'Romania')
END
GO
-- suma vanzarilor in fieare an ordonat descrescator dupa suma
create or alter procedure sales_by_year
AS
BEGIN
    select year(s.date) as year, sum(c.price) as amount
    from Sales s inner join Cars c on s.carID = c.carID
    group by year(s.date)
    order by year
END
GO

-- afiseaza toate orasele
create or alter procedure show_cities
AS
BEGIN
    select distinct city
    from Clients
END
GO

-- suma vanzarilor in fiecare tara
create or alter procedure sales_by_country
AS
BEGIN
    select country, sum(c.price) as amount
    from Sales s inner join Cars c on s.carID = c.carID
                inner join Clients cl on s.clientID = cl.clientID
    group by country
END
GO

-- suma vazarilor fiecarui dealer
create or alter procedure sales_by_dealer
AS
BEGIN
    select d.first_name + ' ' + d.last_name as name, sum(c.price) as amount
    from Sales s inner join Cars c on s.carID = c.carID
                inner join Dealers d on s.dealerID = d.dealerID
    group by d.first_name, d.last_name
END
GO