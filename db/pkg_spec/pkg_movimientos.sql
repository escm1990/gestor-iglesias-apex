CREATE OR REPLACE PACKAGE pkg_movimientos AS
  PROCEDURE registrar_movimiento(
    p_id_iglesia IN NUMBER,
    p_monto IN NUMBER,
    p_tipo_mov IN NUMBER,
    p_usuario IN VARCHAR2
  );

  PROCEDURE registrar_detalle(
    p_id_movimiento IN NUMBER,
    p_id_tipo_mov IN NUMBER,
    p_monto IN NUMBER
  );
END pkg_movimientos;
/