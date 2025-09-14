CREATE OR REPLACE PACKAGE BODY pkg_cierres AS
  PROCEDURE generar_cierre_diario(p_fecha IN DATE, p_usuario IN VARCHAR2) IS
  BEGIN
    -- Calcular ingresos/egresos del día e insertar en CIERRE y DET_CIERRE
    NULL;
  END;

  PROCEDURE generar_cierre_mensual(p_mes IN NUMBER, p_anio IN NUMBER, p_usuario IN VARCHAR2) IS
  BEGIN
    -- Acumular todos los cierres diarios del mes
    NULL;
  END;

  PROCEDURE generar_cierre_anual(p_anio IN NUMBER, p_usuario IN VARCHAR2) IS
  BEGIN
    -- Acumular todos los cierres mensuales del año
    NULL;
  END;
END pkg_cierres;
/
