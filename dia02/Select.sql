-- Databricks notebook source
select * 
from silver.pizza_query.pedido

-- COMMAND ----------

select descItem, 
    vlPreco
from silver.pizza_query.produto
