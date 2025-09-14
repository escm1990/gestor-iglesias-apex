CREATE OR REPLACE PACKAGE pkg_inventario AS
  PROCEDURE registrar_bien(
    p_id_iglesia IN NUMBER,
    p_id_bien IN NUMBER,
    p_id_tipo_bien IN NUMBER,
    p_id_ubicacion IN NUMBER,
    p_nombre IN VARCHAR2,
    p_valor IN NUMBER,
    p_usuario IN VARCHAR2
  );

  PROCEDURE mover_bien(
    p_id_bien IN NUMBER,
    p_id_nueva_ubicacion IN NUMBER,
    p_usuario IN VARCHAR2
  );
END pkg_inventario;
/
