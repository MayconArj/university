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