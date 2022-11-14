

-- produtos cadastrados com preço maior que a média manualmente, média fixa

select avg(ListPrice)
from Production.Product ;

select * from Production.Product 
where ListPrice > 438.6662

-- Seleciona produtos com preço maior que média, valor da média calculado automaticamente e sempre atual.

select * from Production.Product 
where ListPrice < (select avg(ListPrice) from Production.Product)

-- seleciona todos os campos de person.person para os dados onde titulo do trabalho é 'Marketing Specialist'!!!
-- Usa subquery 


select * from Person.Person
where BusinessEntityID in (select BusinessEntityID from HumanResources.Employee 
where JobTitle = 'Marketing Specialist');


select * from Person.Person
join HumanResources.Employee on Person.BusinessEntityID = HumanResources.Employee.BusinessEntityID and 
JobTitle = 'Marketing Specialist';

-- seleciona todos os campos de person.adress onde o estado é Alberda!!!
-- Usa inner join

select * from Person.Address
join Person.StateProvince on Person.Address.StateProvinceID = Person.StateProvince.StateProvinceID and 
Person.StateProvince.Name = 'Alberta';

-- Mesma coisa do caso anterior, mas neste caso usa subquery!!!
-- Usa subquery

select * from Person.Address
where StateProvinceID in (select StateProvinceID from Person.StateProvince where Name = 'alberta');