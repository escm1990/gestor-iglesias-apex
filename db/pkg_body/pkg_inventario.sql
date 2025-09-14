
CREATE OR REPLACE PACKAGE BODY pkg_inventario AS
  PROCEDURE registrar_bien(
    p_id_iglesia IN NUMBER,
    p_id_bien IN NUMBER,
    p_id_tipo_bien IN NUMBER,
    p_id_ubicacion IN NUMBER,
    p_nombre IN VARCHAR2,
    p_valor IN NUMBER,
    p_usuario IN VARCHAR2
  ) IS
  BEGIN
    -- Inserción en BIEN
    NULL;
  END;

  PROCEDURE mover_bien(
    p_id_bien IN NUMBER,
    p_id_nueva_ubicacion IN NUMBER,
    p_usuario IN VARCHAR2
  ) IS
  BEGIN
    -- Registrar movimiento en MOVIMIENTO_BIEN
    NULL;
  END;
END pkg_inventario;
/
