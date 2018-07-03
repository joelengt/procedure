CREATE PROCEDURE proc_sacar_clientes_tipo (IN tipoCliente INT)
  BEGIN
  SELECT * FROM clientes WHERE tipo = tipoCliente;
  END

DELIMITER //
 CREATE PROCEDURE GetAllProducts()
   BEGIN
   SELECT *  FROM products;
   END //
 DELIMITER ;

 
CALL proc_sacar_clientes_tipo(34);

/* PAGINATION */
SELECT id, name
FROM product
ORDER BY id ASC
LIMIT 10
OFFSET 0; /* PAGE 1 */

SELECT id, name
FROM product
ORDER BY id ASC
LIMIT 10
OFFSET 10 /* PAGE 2 */

SELECT id, name
FROM product
ORDER BY id ASC
LIMIT 10
OFFSET 20; /* PAGE 3 */

SELECT id, name
FROM product
ORDER BY id ASC
LIMIT 10
OFFSET 30; /* PAGE 4 */
