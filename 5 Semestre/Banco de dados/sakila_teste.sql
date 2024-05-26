select * from film;
select * from language;

-- INNER JOIN OU JOIN = TRAZ O QUE HÁ EM COMUM ENTRE AS DUAS TABELAS (TODO DADO TEM UMA REFERÊNCIA NA OUTRA TABELA)
select title, name from film
inner join language
on film.language_id = language.language_id;

-- LEFT JOIN = MANTEM A TABELA DA ESQUERDA E TRAZ O QUE TIVER EM COMUM NA DIREITA
select title, name from film
left join language
on film.language_id = language.language_id;


-- LEFT JOIN = MANTEM A TABELA DA DIREITA E TRAZ O QUE TIVER EM COMUM NA ESQUERDA
select title, name from film
right join language
on film.language_id = language.language_id;


-- -------------------------------------

select first_name, last_name, address from customer
right join address
on customer.address_id = address.address_id;

select first_name, last_name, address from customer
left join address
on customer.address_id = address.address_id;

-- AMBIGUIDADE
# com erro
select store_id, first_name
from store
join staff
on store.manager_staff_id = staff.id;

# com sucesso
select store.store_id, staff.first_name
from store
join staff
on store.manager_staff_id = staff.staff_id;

-- COM RELACIONAMENTO DE MUITOS PARA MUITOS

select film.title, category.name
from film
join film_category on film.film_id = film_category.film_id
join category on category.category_id = film_category.category_id;

-- EX: ADICIONAR O IDIOMA DO FILME NA QUERY
select film.title, category.name, language.name
from film
join film_category on film.film_id = film_category.film_id
join category on category.category_id = film_category.category_id
join language on language.language_id = film.language_id;

-- UTILIZANDO O ALIAS
select f.title, c.name, l.name
from film AS f
join film_category on f.film_id = film_category.film_id
join category as c on c.category_id = film_category.category_id
join language as l on l.language_id = f.language_id;

show tables;

select * from customer;
select * from address;




/*
select <campo1>, <campo2>, <campon>
from <tabela_esquerda>
join <tabela_direita>
on <chave_relação_tabela_esquerda> = <chave_relação_tabela_direita>
*/

select * from film;

select first_name, last_name, phone
from customer
left join address
on customer.address_id = address.address_id;

select first_name, last_name, address
from customer
right join address
on customer.address_id = address.address_id;

select store.store_id, staff.first_name
from store
join staff
on store.manager_staff_id = staff.staff_id;






select * from film;
select * from category;

SELECT film.title, 
(SELECT language.name
FROM language
WHERE film.language_id = language.language_id) AS name
FROM film;

/*
select <campo1>, <campo2>, <campon>
from <tabela_esquerda>
join <tabela_direita>
on <chave_relação_tabela_esquerda> = <chave_relação_tabela_direita>
*/

select film.title, category.name, language.name, actor.first_name
from film
join film_category
on film.film_id = film_category.film_id
join category
on category.category_id = film_category.category_id
join language
on film.language_id = language.language_id
join film_actor
on film.film_id = film_actor.film_id
join actor
on film_actor.actor_id = actor.actor_id;

SELECT f.title, c.name, l.name
FROM film AS f
JOIN film_category AS fc USING(film_id)
JOIN category AS c USING(category_id)
JOIN language AS l USING(language_id)
WHERE c.name = "Comedy";

SELECT c.country, COUNT(city)
FROM city
JOIN country AS c using(country_id)
GROUP BY (c.country);

-- ALTER JOIN
select c.country, city.city
from city
left join country as c using(country_id)
UNION
select c.country, city.city
from city
right join country as c using(country_id);

-- SUBQUERIES
select rental_id, (select avg(amount) from payment)
as avg_amount from payment;

select * from payment;
select sum(amount) from payment