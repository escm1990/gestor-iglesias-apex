-- Bloqueo: si la línea está cerrada no se puede actualizar ni borrar
CREATE OR REPLACE TRIGGER BD_UD_DET_MOVIMIENTO_LOCK
BEFORE UPDATE OR DELETE ON DET_MOVIMIENTO
FOR EACH ROW
BEGIN
  IF :OLD.CIERRE_DIARIO_ID IS NOT NULL THEN
    RAISE_APPLICATION_ERROR(-20001, 'No se puede modificar/eliminar un detalle incluido en un cierre diario.');
  END IF;
END;
/