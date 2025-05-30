CREATE OR REPLACE PROCEDURE insert_produto (
    p_cod_produto      NUMBER,
    p_nom_produto      VARCHAR2,
    p_cod_barra        VARCHAR2,
    p_sta_ativo        VARCHAR2,
    p_dat_cadastro     DATE,
    p_dat_cancelamento DATE,
    meu_erro           exception
) IS
BEGIN
    IF
        length(p_nom_produto) > 3
        AND regexp_like(p_nom_produto, '[0-9]')
    THEN
        INSERT INTO produto (
            cod_produto,
            nom_produto,
            cod_barra,
            sta_ativo,
            dat_cadastro,
            dat_cancelamento
        ) VALUES (
            p_cod_produto,
            p_nom_produto,
            p_cod_barra,
            p_sta_ativo,
            p_dat_cadastro,
            p_dat_cancelamento
        );
        COMMIT;
    END IF;
EXCEPTION
    WHEN minha_ex THEN
        raise_application_error('NOME N�O VALIDO');
END;