/*SELECT
    *
FROM
    pais
ORDER BY
    cod_pais;

INSERT INTO pais VALUES (
    18,
    'França'
);*/

SET SERVEROUTPUT ON;

// INSERT

CREATE OR REPLACE PROCEDURE prd_insert_pais (
    p_cod_pais NUMBER,
    p_nom_pais VARCHAR2
) AS
BEGIN
    INSERT INTO pais VALUES (
        p_cod_pais,
        p_nom_pais
    );

    COMMIT;
END;

// UPDATE

CREATE OR REPLACE PROCEDURE prd_update_pais (
    p_cod_pais NUMBER,
    p_nom_pais VARCHAR2
) AS
BEGIN
    UPDATE pais
    SET
        cod_pais = p_cod_pais,
        nom_pais = p_nom_pais
    WHERE
        cod_pais = p_cod_pais;

    COMMIT;
END;

// DELETE 

SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE prd_delete_pais (
    p_cod_pais NUMBER
) AS
BEGIN
    DELETE from pais 
    WHERE
        cod_pais = p_cod_pais;
    COMMIT;
END;

call prd_delete_pais (102);

exec prd_insert_pais(102,'Argentina');

EXECUTE prd_insert_pais(102,'Argentina');

CALL prd_insert_pais(102, 'Argentina');

BEGIN
    prd_insert_pais(102, 'Argentina');
END;

EXECUTE prd_UPDATE_pais(102,'Republica Tcheca');


select * from cliente c inner join pedidos p ; // continuar