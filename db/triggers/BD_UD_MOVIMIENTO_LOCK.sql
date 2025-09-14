-- Bloqueo a nivel encabezado si alguna línea está cerrada
CREATE OR REPLACE TRIGGER BD_UD_MOVIMIENTO_LOCK
BEFORE UPDATE OR DELETE ON MOVIMIENTO
FOR EACH ROW
DECLARE
  v_cnt NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_cnt
  FROM DET_MOVIMIENTO dm
  WHERE dm.MOVIMIENTO_ID = :OLD.ID
    AND dm.CIERRE_DIARIO_ID IS NOT NULL;

  IF v_cnt > 0 THEN
    RAISE_APPLICATION_ERROR(-20002, 'No se puede modificar/eliminar un movimiento con líneas incluidas en un cierre.');
  END IF;
END;
/