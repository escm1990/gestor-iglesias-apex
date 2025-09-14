CREATE TABLE MOVIMIENTO (
  ID                NUMBER PRIMARY KEY,
  IGLESIA_ID        NUMBER NOT NULL REFERENCES IGLESIA(ID),
  FECHA             DATE   NOT NULL,
  DESCRIPCION       VARCHAR2(300),
  COMPROBANTE       VARCHAR2(80), -- nro. interno/recibo
  EVENTO_ID         NUMBER REFERENCES EVENTO(ID), -- opcional: ofrendas asociadas a un culto, por ejemplo
  ESTADO            CHAR(1) DEFAULT 'A' CHECK (ESTADO IN ('A','A','N','C')), 
  -- (A=Activo, N=Anulado, C=Cerrado por cierre diario/mensual)
  -- Auditoría
  USUARIO_INGRESO   VARCHAR2(100),
  FECHA_INGRESO     DATE,
  USUARIO_MODIFICA  VARCHAR2(100),
  FECHA_MODIFICA    DATE
);