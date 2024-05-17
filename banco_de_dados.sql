-- Aula 17-05-2024

CREATE TABLE Clientes (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome_cliente VARCHAR(255));

INSERT INTO Clientes (nome_cliente) VALUES ('João'), ('Júlia'), ('Flávio'),
('Sérgio'), ('Aníbal'), ('Doris');


SELECT * FROM Clientes;

DELIMITER //
CREATE PROCEDURE ExibirNomesClientes()
BEGIN
	DECLARE fim INT DEFAULT FALSE; -- Variável para sinalizar o término do cursor
    DECLARE cliente_nome VARCHAR(255); -- Variável para armazenar o nome do cliente
    -- Declaração do cursor para selecionar todos os nomes de clientes
    DECLARE cursor_clientes CURSOR FOR
    SELECT nome_cliente FROM Clientes;
    -- Manipulador para percorer o cursor
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET FIM = TRUE;
    -- Abrir o cursor
    OPEN cursor_clientes;
    -- Loop para percorrer o cursor
    read_loop: LOOP
    -- Buscar o próximo nome de cliente
    FETCH cursor_clientes INTO cliente_nome;
    -- Verificar se o loop deve ser encerrado
    IF FIM THEN
		LEAVE read_loop;
	END IF;
    -- Exibir o nome do cliente
    SELECT cliente_nome AS 'Nome do Cliente';
    END LOOP;
    -- Fecha o cursor
    CLOSE cursor_clientes;
    
    END//
    DELIMITER ;
    -- Chamar o stored procedure para exibir os nomes dos clientes
    CALL ExibirNomesClientes();



CREATE PROCEDURE 
