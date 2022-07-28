--1: Utilizando uma *query*, obtenha a quantidade de experiências (`experiences`) atuais, ou seja, com `“endDate”` diferente de `NULL`.
select count("endDate") from experiences;


--2: Utilizando uma query, obtenha a quantidade de graduações (educations) por usuário, incluindo o seu id.
select "userId" as id, count("userId") as educations  from educations group by "userId" ;


--3: Utilizando uma query, obtenha a quantidade de depoimentos(testimonials) que o usuário com id 435 efetuou, incluindo o seu nome. 
select users.name as writer, count("writerId") as "testimonialCount" from testimonials 
join users on testimonials."writerId" = users.id 
where "writerId" = 435 group by users.name ;


--4: Utilizando uma query, obtenha o maior salário das vagas (jobs) ativas (active = true) e o nome das posições (roles) dessas vagas ordenadas de forma ascendente
select max(salary) as maximumSalary, roles.name as role from jobs
join roles on jobs."roleId" = roles.id 
where active = true
group by roles."name" order by maximumSalary asc;