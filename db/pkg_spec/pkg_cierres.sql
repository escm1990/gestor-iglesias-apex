CREATE OR REPLACE PACKAGE pkg_cierres AS
  PROCEDURE generar_cierre_diario(p_fecha IN DATE, p_usuario IN VARCHAR2);
  PROCEDURE generar_cierre_mensual(p_mes IN NUMBER, p_anio IN NUMBER, p_usuario IN VARCHAR2);
  PROCEDURE generar_cierre_anual(p_anio IN NUMBER, p_usuario IN VARCHAR2);
END pkg_cierres;
/