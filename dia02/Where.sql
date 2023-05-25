-- Databricks notebook source
select descUF, count(*) QDE
from silver.pizza_query.pedido
--where flKetchup = true
group by descUF
order by QDE desc
limit 6

-- COMMAND ----------

select count(*), -- linhas não nulas
        count(1),-- linhas não nulas
        count(idPedido) -- linhas não nulas da coluna idPedido
from silver.pizza_query.pedido

-- COMMAND ----------

select count(*)
from silver.pizza_query.pedido
where flKetchup is not null

-- COMMAND ----------

select descUF, 
  count(*) as qtePedidos
from silver.pizza_query.pedido
where descUF != 'São Paulo'

group by descUF
having qtePedidos >= 75 --havendo/tendo

order by qtePedidos desc

limit 5

-- COMMAND ----------

select *
from silver.pizza_query.produto
where descItem like 'suco%'

-- COMMAND ----------

select *
from silver.pizza_query.produto
where descItem like '%laranja%'

-- COMMAND ----------

select descUF, flKetchup, count(*) QDE
from silver.pizza_query.pedido
group by descUF, flKetchup
order by descUF, flKetchup


