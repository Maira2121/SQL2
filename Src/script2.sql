-- -------------------------------------------------------------------------------------------
-- Consulta donde se obtiene los productos vendidos digitando tipo de documento y número de documento.
-- -------------------------------------------------------------------------------------------
USE store;

SELECT p.product_name, c.cust_number_ID FROM detail_sale_product as dsp
JOIN sale s ON s.sale_id = dsp.sale_id
JOIN customer c ON c.cust_id = s.customer_id
JOIN product p ON p.product_id = dsp.product_id
WHERE c.type_ID_abreviation = 'CC' AND C.cust_number_ID = '123'
GROUP BY dsp.product_id;

-- -------------------------------------------------------------------------------------------
-- Consulta productos por nombre, mostrando su proveedor.
-- -------------------------------------------------------------------------------------------
SELECT p.product_name, p2.name_provider FROM product as p
JOIN providers p2 ON p.providers_id
WHERE p.product_name = 'LECHE'; -- Se puede utilizar Like tambien.