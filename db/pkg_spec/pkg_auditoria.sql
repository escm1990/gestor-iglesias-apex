CREATE OR REPLACE PACKAGE pkg_auditoria AS
  PROCEDURE set_auditoria_insert(p_usuario IN VARCHAR2);
  PROCEDURE set_auditoria_update(p_usuario IN VARCHAR2);
END pkg_auditoria;
/