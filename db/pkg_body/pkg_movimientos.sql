CREATE OR REPLACE PACKAGE BODY pkg_movimientos AS
  PROCEDURE registrar_movimiento(
    p_id_iglesia IN NUMBER,
    p_monto IN NUMBER,
    p_tipo_mov IN NUMBER,
    p_usuario IN VARCHAR2
  ) IS
  BEGIN
    -- Inserción en MOVIMIENTO
    NULL;
  END;

  PROCEDURE registrar_detalle(
    p_id_movimiento IN NUMBER,
    p_id_tipo_mov IN NUMBER,
    p_monto IN NUMBER
  ) IS
  BEGIN
    -- Inserción en DET_MOVIMIENTO
    NULL;
  END;
END pkg_movimientos;
/
