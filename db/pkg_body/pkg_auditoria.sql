CREATE OR REPLACE PACKAGE BODY pkg_auditoria AS
  PROCEDURE set_auditoria_insert(p_usuario IN VARCHAR2) IS
  BEGIN
    -- Aquí se podría obtener :NEW desde el trigger
    NULL;
  END;

  PROCEDURE set_auditoria_update(p_usuario IN VARCHAR2) IS
  BEGIN
    -- Aquí se podría obtener :NEW desde el trigger
    NULL;
  END;
END pkg_auditoria;
/
