--------------------------------------------------------
-- Archivo creado  - jueves-octubre-17-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_ID_BOLETA
--------------------------------------------------------

   CREATE SEQUENCE  "TECHNOFOOD"."SEQ_ID_BOLETA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ID_DET_PEDIDO
--------------------------------------------------------

   CREATE SEQUENCE  "TECHNOFOOD"."SEQ_ID_DET_PEDIDO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ID_INSUMO
--------------------------------------------------------

   CREATE SEQUENCE  "TECHNOFOOD"."SEQ_ID_INSUMO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ID_MESA
--------------------------------------------------------

   CREATE SEQUENCE  "TECHNOFOOD"."SEQ_ID_MESA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ID_PEDIDO
--------------------------------------------------------

   CREATE SEQUENCE  "TECHNOFOOD"."SEQ_ID_PEDIDO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ID_PRODUCTO
--------------------------------------------------------

   CREATE SEQUENCE  "TECHNOFOOD"."SEQ_ID_PRODUCTO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ID_RECETA
--------------------------------------------------------

   CREATE SEQUENCE  "TECHNOFOOD"."SEQ_ID_RECETA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ID_RESERVA
--------------------------------------------------------

   CREATE SEQUENCE  "TECHNOFOOD"."SEQ_ID_RESERVA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence SEQ_ID_USUARIO
--------------------------------------------------------

   CREATE SEQUENCE  "TECHNOFOOD"."SEQ_ID_USUARIO"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table BOLETA
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."BOLETA" 
   (	"ID_BOLETA" NUMBER(*,0), 
	"NOMBRE_EMPRESA" VARCHAR2(50 BYTE), 
	"FECHA" DATE, 
	"TOTAL" NUMBER(*,0), 
	"PEDIDO_ID_PEDIDO" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DETALLE_PEDIDO
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."DETALLE_PEDIDO" 
   (	"ID_DET_PEDIDO" NUMBER(*,0), 
	"CANTIDAD" NUMBER(*,0), 
	"PRODUCTO_ID_PRODUCTO" NUMBER(*,0), 
	"MESA_ID_MESA" NUMBER(*,0), 
	"ESTADO_ID_EST_PE" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ESTADO
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."ESTADO" 
   (	"ID_EST_PE" NUMBER(*,0), 
	"ESTADO_PEDIDO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INSUMO
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."INSUMO" 
   (	"ID_INSUMO" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(80 BYTE), 
	"CANTIDAD_KG" NUMBER(*,0), 
	"BEBIDAS" NUMBER(*,0), 
	"PROVEEDOR" VARCHAR2(60 BYTE), 
	"STOCK" NUMBER(*,0), 
	"STOCK_CRITICO" NUMBER(*,0), 
	"TIPO_INSUMO_ID_TIPO_INS" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MESA
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."MESA" 
   (	"ID_MESA" NUMBER(*,0), 
	"ASIENTOS" NUMBER(*,0), 
	"ESTADO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PEDIDO
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."PEDIDO" 
   (	"ID_PEDIDO" NUMBER(*,0), 
	"FECHA" DATE, 
	"USUARIO_ID_USUARIO" NUMBER(*,0), 
	"TOTAL" NUMBER(*,0), 
	"DETALLE_PEDIDO_ID_DET_PEDIDO" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRODUCTO
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."PRODUCTO" 
   (	"ID_PRODUCTO" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"DESCRIPCION" VARCHAR2(50 BYTE), 
	"PRECIO" NUMBER(*,0), 
	"FOTO" VARCHAR2(250 BYTE), 
	"TIPO_PRODUCTO_ID_TIPO_PRODUCTO" NUMBER(*,0), 
	"INSUMO_ID_INSUMO" NUMBER(*,0), 
	"RECETA_ID_RECETA" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROVEEDOR
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."PROVEEDOR" 
   (	"ID_PROVEEDOR" NUMBER(*,0), 
	"PROVEEDOR" VARCHAR2(50 BYTE), 
	"DIRECCION" VARCHAR2(50 BYTE), 
	"TELEFONO" NUMBER(*,0), 
	"CORREO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RECETA
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."RECETA" 
   (	"ID_RECETA" NUMBER(*,0), 
	"FOTO" VARCHAR2(250 BYTE), 
	"NOMBRE_RECETA" VARCHAR2(80 BYTE), 
	"AUTOR" VARCHAR2(50 BYTE), 
	"FECHA" DATE, 
	"INGREDIENTES" VARCHAR2(200 BYTE), 
	"DESCRIPCION" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESERVA
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."RESERVA" 
   (	"ID_RESERVA" NUMBER(*,0), 
	"RUT" VARCHAR2(12 BYTE), 
	"NOMBRE" VARCHAR2(30 BYTE), 
	"APELLIDO" VARCHAR2(30 BYTE), 
	"TELEFONO" NUMBER(*,0), 
	"CORREO" VARCHAR2(50 BYTE), 
	"ASIENTOS" NUMBER(*,0), 
	"FECHA" DATE, 
	"MESA_ID_MESA" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SEXO
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."SEXO" 
   (	"ID_SEXO" NUMBER(*,0), 
	"SEXO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TIPO_INSUMO
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."TIPO_INSUMO" 
   (	"ID_TIPO_INS" NUMBER(*,0), 
	"TIPO_INSUMO" VARCHAR2(60 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TIPO_PRODUCTO
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."TIPO_PRODUCTO" 
   (	"ID_TIPO_PRODUCTO" NUMBER(*,0), 
	"TIPO_PRODUCTO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TIPO_USUARIO
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."TIPO_USUARIO" 
   (	"ID_TIPO" NUMBER(*,0), 
	"TIPO_USUARIO" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "TECHNOFOOD"."USUARIO" 
   (	"ID_USUARIO" NUMBER(*,0), 
	"USUARIO" VARCHAR2(50 BYTE), 
	"CONTRASENA" VARCHAR2(50 BYTE), 
	"RUT" VARCHAR2(50 BYTE), 
	"NOMBRE" VARCHAR2(50 BYTE), 
	"APELLIDO" VARCHAR2(50 BYTE), 
	"TELEFONO" NUMBER(*,0), 
	"CORREO" VARCHAR2(50 BYTE), 
	"TIPO_USUARIO_ID_TIPO" NUMBER(*,0), 
	"SEXO_ID_SEXO" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TECHNOFOOD.BOLETA
SET DEFINE OFF;
REM INSERTING into TECHNOFOOD.DETALLE_PEDIDO
SET DEFINE OFF;
Insert into TECHNOFOOD.DETALLE_PEDIDO (ID_DET_PEDIDO,CANTIDAD,PRODUCTO_ID_PRODUCTO,MESA_ID_MESA,ESTADO_ID_EST_PE) values ('54','1','1','1','1');
Insert into TECHNOFOOD.DETALLE_PEDIDO (ID_DET_PEDIDO,CANTIDAD,PRODUCTO_ID_PRODUCTO,MESA_ID_MESA,ESTADO_ID_EST_PE) values ('53','1','1','1','1');
REM INSERTING into TECHNOFOOD.ESTADO
SET DEFINE OFF;
Insert into TECHNOFOOD.ESTADO (ID_EST_PE,ESTADO_PEDIDO) values ('1','Ingresado');
Insert into TECHNOFOOD.ESTADO (ID_EST_PE,ESTADO_PEDIDO) values ('2','En proceso');
Insert into TECHNOFOOD.ESTADO (ID_EST_PE,ESTADO_PEDIDO) values ('3','Listo');
REM INSERTING into TECHNOFOOD.INSUMO
SET DEFINE OFF;
Insert into TECHNOFOOD.INSUMO (ID_INSUMO,NOMBRE,CANTIDAD_KG,BEBIDAS,PROVEEDOR,STOCK,STOCK_CRITICO,TIPO_INSUMO_ID_TIPO_INS) values ('1','Caldo Maggi','1000','0','Maggi','1500','100','1');
REM INSERTING into TECHNOFOOD.MESA
SET DEFINE OFF;
Insert into TECHNOFOOD.MESA (ID_MESA,ASIENTOS,ESTADO) values ('1','5','Disponible');
Insert into TECHNOFOOD.MESA (ID_MESA,ASIENTOS,ESTADO) values ('2','4','Disponible');
Insert into TECHNOFOOD.MESA (ID_MESA,ASIENTOS,ESTADO) values ('3','6','No Disponible');
Insert into TECHNOFOOD.MESA (ID_MESA,ASIENTOS,ESTADO) values ('4','7','Disponible');
REM INSERTING into TECHNOFOOD.PEDIDO
SET DEFINE OFF;
REM INSERTING into TECHNOFOOD.PRODUCTO
SET DEFINE OFF;
Insert into TECHNOFOOD.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,FOTO,TIPO_PRODUCTO_ID_TIPO_PRODUCTO,INSUMO_ID_INSUMO,RECETA_ID_RECETA) values ('1','Cazuela de Pollo','Sopa perfecta para el frio y compartir en familia','1500','cazuela.jpg','1','1','1');
Insert into TECHNOFOOD.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,FOTO,TIPO_PRODUCTO_ID_TIPO_PRODUCTO,INSUMO_ID_INSUMO,RECETA_ID_RECETA) values ('2','Vacuno con Arroz','Arroz con carne','5000','vacunoArroz.jpg','2','1','1');
Insert into TECHNOFOOD.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,FOTO,TIPO_PRODUCTO_ID_TIPO_PRODUCTO,INSUMO_ID_INSUMO,RECETA_ID_RECETA) values ('3','Fideos','Fideos con salsa','1900','fideos.jpg','2','1','1');
Insert into TECHNOFOOD.PRODUCTO (ID_PRODUCTO,NOMBRE,DESCRIPCION,PRECIO,FOTO,TIPO_PRODUCTO_ID_TIPO_PRODUCTO,INSUMO_ID_INSUMO,RECETA_ID_RECETA) values ('4','Bebida','bebida acompañante','2500','cocacola.png','3','1','1');
REM INSERTING into TECHNOFOOD.PROVEEDOR
SET DEFINE OFF;
REM INSERTING into TECHNOFOOD.RECETA
SET DEFINE OFF;
Insert into TECHNOFOOD.RECETA (ID_RECETA,FOTO,NOMBRE_RECETA,AUTOR,FECHA,INGREDIENTES,DESCRIPCION) values ('1','cazuela.jpg','Cazuela de Pollo','Carlos Abarca',to_date('16/10/19','DD/MM/RR'),'Choclo, Zapallo, Papa','Cocinar Todo');
REM INSERTING into TECHNOFOOD.RESERVA
SET DEFINE OFF;
REM INSERTING into TECHNOFOOD.SEXO
SET DEFINE OFF;
Insert into TECHNOFOOD.SEXO (ID_SEXO,SEXO) values ('1','Hombre');
Insert into TECHNOFOOD.SEXO (ID_SEXO,SEXO) values ('2','Mujer');
Insert into TECHNOFOOD.SEXO (ID_SEXO,SEXO) values ('3','Sin Especificar');
REM INSERTING into TECHNOFOOD.TIPO_INSUMO
SET DEFINE OFF;
Insert into TECHNOFOOD.TIPO_INSUMO (ID_TIPO_INS,TIPO_INSUMO) values ('1','Caldo Maggi');
REM INSERTING into TECHNOFOOD.TIPO_PRODUCTO
SET DEFINE OFF;
Insert into TECHNOFOOD.TIPO_PRODUCTO (ID_TIPO_PRODUCTO,TIPO_PRODUCTO) values ('1','Menu');
Insert into TECHNOFOOD.TIPO_PRODUCTO (ID_TIPO_PRODUCTO,TIPO_PRODUCTO) values ('2','Plato');
Insert into TECHNOFOOD.TIPO_PRODUCTO (ID_TIPO_PRODUCTO,TIPO_PRODUCTO) values ('3','Extra');
REM INSERTING into TECHNOFOOD.TIPO_USUARIO
SET DEFINE OFF;
Insert into TECHNOFOOD.TIPO_USUARIO (ID_TIPO,TIPO_USUARIO) values ('1','Administrador');
REM INSERTING into TECHNOFOOD.USUARIO
SET DEFINE OFF;
Insert into TECHNOFOOD.USUARIO (ID_USUARIO,USUARIO,CONTRASENA,RUT,NOMBRE,APELLIDO,TELEFONO,CORREO,TIPO_USUARIO_ID_TIPO,SEXO_ID_SEXO) values ('1','admin','admin','19649602-5','Carlos','Abarca','989676647','carlos@technofood.com','1','1');
--------------------------------------------------------
--  DDL for Index BOLETA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."BOLETA_PK" ON "TECHNOFOOD"."BOLETA" ("ID_BOLETA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DETALLE_PEDIDO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."DETALLE_PEDIDO_PK" ON "TECHNOFOOD"."DETALLE_PEDIDO" ("ID_DET_PEDIDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ESTADO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."ESTADO_PK" ON "TECHNOFOOD"."ESTADO" ("ID_EST_PE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INSUMO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."INSUMO_PK" ON "TECHNOFOOD"."INSUMO" ("ID_INSUMO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MESA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."MESA_PK" ON "TECHNOFOOD"."MESA" ("ID_MESA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PEDIDO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."PEDIDO_PK" ON "TECHNOFOOD"."PEDIDO" ("ID_PEDIDO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."PRODUCTO_PK" ON "TECHNOFOOD"."PRODUCTO" ("ID_PRODUCTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROVEEDOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."PROVEEDOR_PK" ON "TECHNOFOOD"."PROVEEDOR" ("ID_PROVEEDOR") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RECETA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."RECETA_PK" ON "TECHNOFOOD"."RECETA" ("ID_RECETA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RESERVA_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."RESERVA_PK" ON "TECHNOFOOD"."RESERVA" ("ID_RESERVA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SEXO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."SEXO_PK" ON "TECHNOFOOD"."SEXO" ("ID_SEXO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TIPO_INSUMO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."TIPO_INSUMO_PK" ON "TECHNOFOOD"."TIPO_INSUMO" ("ID_TIPO_INS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TIPO_PRODUCTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."TIPO_PRODUCTO_PK" ON "TECHNOFOOD"."TIPO_PRODUCTO" ("ID_TIPO_PRODUCTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TIPO_USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."TIPO_USUARIO_PK" ON "TECHNOFOOD"."TIPO_USUARIO" ("ID_TIPO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TECHNOFOOD"."USUARIO_PK" ON "TECHNOFOOD"."USUARIO" ("ID_USUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger TRIG_ID_BOLETA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "TECHNOFOOD"."TRIG_ID_BOLETA" 
BEFORE INSERT ON boleta
FOR EACH ROW
 WHEN (new.id_boleta IS NULL) BEGIN
:new.id_boleta := seq_id_boleta.NEXTVAL;
END;
/
ALTER TRIGGER "TECHNOFOOD"."TRIG_ID_BOLETA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_ID_DET_PEDIDO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "TECHNOFOOD"."TRIG_ID_DET_PEDIDO" 
BEFORE INSERT ON detalle_pedido
FOR EACH ROW
 WHEN (new.id_det_pedido IS NULL) BEGIN
:new.id_det_pedido := seq_id_det_pedido.NEXTVAL;
END;
/
ALTER TRIGGER "TECHNOFOOD"."TRIG_ID_DET_PEDIDO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_ID_INSUMO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "TECHNOFOOD"."TRIG_ID_INSUMO" 
BEFORE INSERT ON insumo
FOR EACH ROW
 WHEN (new.id_insumo IS NULL) BEGIN
:new.id_insumo := seq_id_insumo.NEXTVAL;
END;
/
ALTER TRIGGER "TECHNOFOOD"."TRIG_ID_INSUMO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_ID_MESA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "TECHNOFOOD"."TRIG_ID_MESA" 
BEFORE INSERT ON mesa
FOR EACH ROW
 WHEN (new.id_mesa IS NULL) BEGIN
:new.id_mesa := seq_id_mesa.NEXTVAL;
END;
/
ALTER TRIGGER "TECHNOFOOD"."TRIG_ID_MESA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_ID_PEDIDO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "TECHNOFOOD"."TRIG_ID_PEDIDO" 
BEFORE INSERT ON pedido
FOR EACH ROW
 WHEN (new.id_pedido IS NULL) BEGIN
:new.id_pedido := seq_id_pedido.NEXTVAL;
END;
/
ALTER TRIGGER "TECHNOFOOD"."TRIG_ID_PEDIDO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_ID_PRODUCTO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "TECHNOFOOD"."TRIG_ID_PRODUCTO" 
BEFORE INSERT ON producto
FOR EACH ROW
 WHEN (new.id_producto IS NULL) BEGIN
:new.id_producto := seq_id_producto.NEXTVAL;
END;
/
ALTER TRIGGER "TECHNOFOOD"."TRIG_ID_PRODUCTO" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_ID_RECETA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "TECHNOFOOD"."TRIG_ID_RECETA" 
BEFORE INSERT ON receta
FOR EACH ROW
 WHEN (new.id_receta IS NULL) BEGIN
:new.id_receta := seq_id_receta.NEXTVAL;
END;
/
ALTER TRIGGER "TECHNOFOOD"."TRIG_ID_RECETA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_ID_RESERVA
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "TECHNOFOOD"."TRIG_ID_RESERVA" 
BEFORE INSERT ON reserva
FOR EACH ROW
 WHEN (new.id_reserva IS NULL) BEGIN
:new.id_reserva := seq_id_reserva.NEXTVAL;
END;
/
ALTER TRIGGER "TECHNOFOOD"."TRIG_ID_RESERVA" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRIG_ID_USUARIO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "TECHNOFOOD"."TRIG_ID_USUARIO" 
BEFORE INSERT ON usuario
FOR EACH ROW
 WHEN (new.id_usuario IS NULL) BEGIN
:new.id_usuario := seq_id_usuario.NEXTVAL;
END;
/
ALTER TRIGGER "TECHNOFOOD"."TRIG_ID_USUARIO" ENABLE;
--------------------------------------------------------
--  DDL for Procedure SP_ACTUALIZAR_USUARIO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_ACTUALIZAR_USUARIO" (id number, usuario2 VARCHAR2, contrasena2 VARCHAR2, rut2 VARCHAR2, nombre2 VARCHAR2, apellido2 VARCHAR2, telefono2 NUMBER, correo2 VARCHAR2, id_tipo2 NUMBER, id_sexo2 NUMBER)
IS
BEGIN
UPDATE usuario SET usuario = (usuario2), contrasena = (contrasena2), rut = (rut2), nombre = (nombre2), apellido = (apellido2), telefono = (telefono2), correo = (correo2), tipo_usuario_id_tipo = (id_tipo2), sexo_id_sexo = (id_sexo2)
WHERE id_usuario = id;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_AGREGAR_BOLETA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_AGREGAR_BOLETA" (nombre_empresa VARCHAR2, fecha DATE, total NUMBER, id_pedido NUMBER)
IS
BEGIN
INSERT INTO boleta VALUES(seq_id_boleta.nextval, nombre_empresa, fecha, total, id_pedido);
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_AGREGAR_DETALLE_PEDIDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_AGREGAR_DETALLE_PEDIDO" (cantidad NUMBER, id_producto NUMBER, id_mesa NUMBER, id_est_pedido NUMBER)
IS
BEGIN
INSERT INTO detalle_pedido VALUES(seq_id_det_pedido.nextval, cantidad, id_producto, id_mesa, id_est_pedido);
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_AGREGAR_INSUMO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_AGREGAR_INSUMO" (nombre VARCHAR2, cantidad_kg NUMBER, bebidas NUMBER, proveedor VARCHAR2, stock NUMBER, stock_critico NUMBER, tipo_insumo NUMBER)
IS
BEGIN
INSERT INTO insumo VALUES(seq_id_insumo.nextval, nombre, cantidad_kg, bebidas, proveedor, stock, stock_critico, tipo_insumo);
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_AGREGAR_MESA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_AGREGAR_MESA" (asientos NUMBER, estado VARCHAR2)
IS
BEGIN
INSERT INTO mesa VALUES(seq_id_mesa.nextval, asientos, estado);
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_AGREGAR_PEDIDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_AGREGAR_PEDIDO" (fecha DATE, id_usuario NUMBER, total NUMBER, id_det_pedido NUMBER)
IS
BEGIN
INSERT INTO pedido VALUES(seq_id_pedido.nextval, fecha, id_usuario, total, id_det_pedido);
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_AGREGAR_PRODUCTO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_AGREGAR_PRODUCTO" (nombre VARCHAR2, descripcion VARCHAR2, precio NUMBER, foto VARCHAR2, id_tipo_producto NUMBER, id_insumo NUMBER, id_receta NUMBER)
IS
BEGIN
INSERT INTO producto VALUES(seq_id_producto.nextval, nombre, descripcion, precio, foto, id_tipo_producto, id_insumo, id_receta);
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_AGREGAR_RECETA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_AGREGAR_RECETA" (foto VARCHAR2, nombre_receta VARCHAR2, autor VARCHAR2, fecha DATE, ingredientes VARCHAR2, descripcion VARCHAR2)
IS
BEGIN
INSERT INTO receta VALUES(seq_id_receta.nextval, foto, nombre_receta, autor, fecha, ingredientes, descripcion);
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_AGREGAR_RESERVA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_AGREGAR_RESERVA" (rut VARCHAR2, nombre VARCHAR2, apellido VARCHAR2, telefono NUMBER, correo VARCHAR2, asientos NUMBER, fecha DATE, mesa_id NUMBER)
IS
BEGIN
INSERT INTO reserva VALUES(seq_id_reserva.nextval, rut, nombre, apellido, telefono, correo, asientos, fecha, mesa_id);
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_AGREGAR_USUARIO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_AGREGAR_USUARIO" (usuario VARCHAR2, contrasena VARCHAR2, rut VARCHAR2, nombre VARCHAR2, apellido VARCHAR2, telefono NUMBER, correo VARCHAR2, id_tipo NUMBER, id_sexo NUMBER)
IS
BEGIN
INSERT INTO usuario VALUES(seq_id_usuario.nextval, usuario, contrasena, rut, nombre, apellido, telefono, correo, id_tipo, id_sexo);
COMMIT;
EXCEPTION WHEN OTHERS THEN ROLLBACK;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_CALCULAR_GANANCIA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_CALCULAR_GANANCIA" (ganancias OUT SYS_REFCURSOR)
IS
BEGIN
OPEN ganancias FOR SELECT SUM(boleta.total) FROM boleta;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_ELIMINAR_INSUMO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_ELIMINAR_INSUMO" (id NUMBER)
IS
BEGIN
DELETE FROM insumo
WHERE id_insumo = id;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_ELIMINAR_MESA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_ELIMINAR_MESA" (id NUMBER)
IS
BEGIN
DELETE FROM mesa
WHERE id_mesa = id;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_ELIMINAR_PEDIDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_ELIMINAR_PEDIDO" (id NUMBER)
IS
BEGIN
DELETE FROM pedido
WHERE id_pedido = id;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_ELIMINAR_PRODUCTO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_ELIMINAR_PRODUCTO" (id NUMBER)
IS
BEGIN
DELETE FROM producto
WHERE id_producto = id;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_ELIMINAR_RECETA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_ELIMINAR_RECETA" (id NUMBER)
IS
BEGIN
DELETE FROM receta
WHERE id_receta = id;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_ELIMINAR_RESERVA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_ELIMINAR_RESERVA" (id NUMBER)
IS
BEGIN
DELETE FROM reserva
WHERE id_reserva = id;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_ELIMINAR_USUARIO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_ELIMINAR_USUARIO" (id NUMBER)
IS
BEGIN
DELETE FROM usuario
WHERE id_usuario = id;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_LISTAR_BOLETA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_LISTAR_BOLETA" (boletas out SYS_REFCURSOR)
IS
BEGIN
OPEN boletas FOR SELECT * FROM boleta;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_LISTAR_DETALLE_PEDIDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_LISTAR_DETALLE_PEDIDO" (detalles OUT SYS_REFCURSOR)
IS
BEGIN
OPEN detalles FOR SELECT detalle_pedido.id_det_pedido ,producto.nombre, detalle_pedido.cantidad, tipo_producto.tipo_producto, mesa.id_mesa, estado.estado_pedido
FROM producto
INNER JOIN detalle_pedido ON producto.id_producto = detalle_pedido.producto_id_producto
INNER JOIN tipo_producto ON producto.tipo_producto_id_tipo_producto = tipo_producto.id_tipo_producto
INNER JOIN mesa ON detalle_pedido.mesa_id_mesa = mesa.id_mesa
INNER JOIN estado ON detalle_pedido.estado_id_est_pe = estado.id_est_pe;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_LISTAR_INSUMO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_LISTAR_INSUMO" (insumos out SYS_REFCURSOR)
IS
BEGIN
OPEN insumos FOR SELECT * FROM insumo;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_LISTAR_MESA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_LISTAR_MESA" (mesas out SYS_REFCURSOR)
IS
BEGIN
OPEN mesas FOR SELECT * FROM mesa;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_LISTAR_PEDIDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_LISTAR_PEDIDO" (pedidos out SYS_REFCURSOR)
IS
BEGIN
OPEN pedidos FOR SELECT * FROM pedido;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_LISTAR_PEDIDO_2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_LISTAR_PEDIDO_2" (pedidos out SYS_REFCURSOR, id IN NUMBER) 
IS
BEGIN
OPEN pedidos FOR SELECT id_pedido, fecha, total FROM pedido WHERE id_pedido = id;    
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_LISTAR_PRODUCTO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_LISTAR_PRODUCTO" (productos out SYS_REFCURSOR)
IS
BEGIN
OPEN productos FOR SELECT * FROM producto;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_LISTAR_PRODUCTO2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_LISTAR_PRODUCTO2" (productos2 OUT SYS_REFCURSOR)
IS
BEGIN
OPEN productos2 FOR SELECT producto.nombre, tipo_producto.tipo_producto, detalle_pedido.cantidad FROM producto
INNER JOIN tipo_producto ON producto.tipo_producto_id_tipo_producto = tipo_producto.id_tipo_producto
INNER JOIN detalle_pedido ON producto.id_producto = detalle_pedido.producto_id_producto;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_LISTAR_PRODUCTO3
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_LISTAR_PRODUCTO3" (productos3 OUT SYS_REFCURSOR)
IS
BEGIN
OPEN productos3 FOR SELECT producto.id_producto, producto.nombre, producto.descripcion, producto.precio, producto.foto
FROM producto;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_LISTAR_RECETA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_LISTAR_RECETA" (recetas out SYS_REFCURSOR)
IS
BEGIN
OPEN recetas FOR SELECT * FROM receta;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_LISTAR_RESERVA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_LISTAR_RESERVA" (reservas out SYS_REFCURSOR)
IS
BEGIN
OPEN reservas FOR SELECT * FROM reserva;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_LISTAR_USUARIO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_LISTAR_USUARIO" (usuarios out SYS_REFCURSOR)
IS
BEGIN
open usuarios FOR SELECT * FROM usuario;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_MODIFICAR_INSUMO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_MODIFICAR_INSUMO" (id2 NUMBER, nombre2 VARCHAR2, cantidad_kg2 NUMBER, bebidas2 NUMBER, proveedor2 VARCHAR2, stock2 NUMBER, stock_critico2 NUMBER, tipo_insumo2 NUMBER)
IS
BEGIN
UPDATE insumo SET nombre = (nombre2), cantidad_kg = (cantidad_kg2), bebidas = (bebidas2), proveedor = (proveedor2), stock = (stock2), stock_critico = (stock_critico2), tipo_insumo_id_tipo_ins = (tipo_insumo2)
WHERE id_insumo = id2;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_MODIFICAR_MESA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_MODIFICAR_MESA" (id NUMBER, asientos2 NUMBER, estado2 VARCHAR2)
IS
BEGIN
UPDATE mesa SET asientos = (asientos2), estado = (estado2)
WHERE id_mesa = id;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_MODIFICAR_MESA_OCUPADA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_MODIFICAR_MESA_OCUPADA" (id NUMBER)
IS
BEGIN
UPDATE mesa SET estado = 'Disponible'
WHERE id_mesa = id;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_MODIFICAR_MESA2
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_MODIFICAR_MESA2" (id NUMBER)
IS
BEGIN
UPDATE mesa SET estado = 'No Disponible'
WHERE id_mesa = id;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_MODIFICAR_PEDIDO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_MODIFICAR_PEDIDO" (id2 NUMBER, fecha2 DATE, id_usuario2 NUMBER, total2 NUMBER, id_det_pedido2 NUMBER)
IS
BEGIN
UPDATE pedido SET fecha = (fecha2), usuario_id_usuario = (id_usuario2), total = (total2),  detalle_pedido_id_det_pedido = (id_det_pedido2)
WHERE id_pedido = id2;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_MODIFICAR_PRODUCTO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_MODIFICAR_PRODUCTO" (id NUMBER, nombre2 VARCHAR2, descripcion2 VARCHAR2, precio2 NUMBER, foto2 VARCHAR2, id_tipo_producto2 NUMBER, id_insumo2 NUMBER, id_receta2 NUMBER)
IS
BEGIN
UPDATE producto SET nombre = (nombre2), descripcion = (descripcion2), precio = (precio2), foto = (foto2), tipo_producto_id_tipo_producto = (id_tipo_producto2), insumo_id_insumo = (id_insumo2), receta_id_receta = (id_receta2)
WHERE id_producto = id;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_MODIFICAR_RECETA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_MODIFICAR_RECETA" (id2 NUMBER, foto2 VARCHAR2, nombre_receta2 VARCHAR2, autor2 VARCHAR2, fecha2 DATE, ingredientes2 VARCHAR2, descripcion2 VARCHAR2)
IS
BEGIN
UPDATE receta SET foto = (foto2), nombre_receta = (nombre_receta2), autor = (autor2), fecha = (fecha2), ingredientes = (ingredientes2), descripcion = (descripcion2)
WHERE id_receta = id2;
END;

/
--------------------------------------------------------
--  DDL for Procedure SP_MODIFICAR_RESERVA
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "TECHNOFOOD"."SP_MODIFICAR_RESERVA" (id_reserva2 NUMBER, rut2 VARCHAR2, nombre2 VARCHAR2, apellido2 VARCHAR2, telefono2 NUMBER, correo2 VARCHAR2, asientos2 NUMBER, fecha2 DATE, mesa_id2 NUMBER)
IS
BEGIN
UPDATE reserva SET rut = (rut2), nombre = (nombre2), apellido = (apellido2), telefono = (telefono2), correo = (correo2), asientos = (asientos2), fecha = (fecha2), mesa_id_mesa = (mesa_id2)
WHERE id_reserva = id_reserva2;
END;

/
--------------------------------------------------------
--  DDL for Function FN_LISTAR_PRODUCTO
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "TECHNOFOOD"."FN_LISTAR_PRODUCTO" (id IN NUMBER) RETURN SYS_REFCURSOR IS
L_Cursor SYS_REFCURSOR;
BEGIN
OPEN L_Cursor FOR SELECT id_producto, nombre, descripcion, precio, foto, tipo_producto_id_tipo_producto, insumo_id_insumo, receta_id_receta FROM producto WHERE id_producto = id;
RETURN L_Cursor;
END;

/
--------------------------------------------------------
--  Constraints for Table TIPO_PRODUCTO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."TIPO_PRODUCTO" MODIFY ("ID_TIPO_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."TIPO_PRODUCTO" MODIFY ("TIPO_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."TIPO_PRODUCTO" ADD CONSTRAINT "TIPO_PRODUCTO_PK" PRIMARY KEY ("ID_TIPO_PRODUCTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INSUMO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."INSUMO" MODIFY ("ID_INSUMO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."INSUMO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."INSUMO" MODIFY ("PROVEEDOR" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."INSUMO" MODIFY ("STOCK" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."INSUMO" MODIFY ("STOCK_CRITICO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."INSUMO" MODIFY ("TIPO_INSUMO_ID_TIPO_INS" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."INSUMO" ADD CONSTRAINT "INSUMO_PK" PRIMARY KEY ("ID_INSUMO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RECETA
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."RECETA" MODIFY ("ID_RECETA" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RECETA" MODIFY ("NOMBRE_RECETA" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RECETA" MODIFY ("AUTOR" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RECETA" MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RECETA" MODIFY ("INGREDIENTES" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RECETA" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RECETA" ADD CONSTRAINT "RECETA_PK" PRIMARY KEY ("ID_RECETA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TIPO_USUARIO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."TIPO_USUARIO" MODIFY ("ID_TIPO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."TIPO_USUARIO" MODIFY ("TIPO_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."TIPO_USUARIO" ADD CONSTRAINT "TIPO_USUARIO_PK" PRIMARY KEY ("ID_TIPO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SEXO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."SEXO" MODIFY ("ID_SEXO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."SEXO" MODIFY ("SEXO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."SEXO" ADD CONSTRAINT "SEXO_PK" PRIMARY KEY ("ID_SEXO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PEDIDO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."PEDIDO" MODIFY ("ID_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PEDIDO" MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PEDIDO" MODIFY ("TOTAL" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PEDIDO" MODIFY ("DETALLE_PEDIDO_ID_DET_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PEDIDO" ADD CONSTRAINT "PEDIDO_PK" PRIMARY KEY ("ID_PEDIDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."USUARIO" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."USUARIO" MODIFY ("CORREO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."USUARIO" MODIFY ("TIPO_USUARIO_ID_TIPO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."USUARIO" MODIFY ("SEXO_ID_SEXO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."USUARIO" ADD CONSTRAINT "USUARIO_PK" PRIMARY KEY ("ID_USUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "TECHNOFOOD"."USUARIO" MODIFY ("ID_USUARIO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."USUARIO" MODIFY ("USUARIO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."USUARIO" MODIFY ("CONTRASENA" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."USUARIO" MODIFY ("RUT" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."USUARIO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."USUARIO" MODIFY ("APELLIDO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MESA
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."MESA" MODIFY ("ID_MESA" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."MESA" MODIFY ("ASIENTOS" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."MESA" MODIFY ("ESTADO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."MESA" ADD CONSTRAINT "MESA_PK" PRIMARY KEY ("ID_MESA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RESERVA
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."RESERVA" MODIFY ("ID_RESERVA" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RESERVA" MODIFY ("RUT" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RESERVA" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RESERVA" MODIFY ("APELLIDO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RESERVA" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RESERVA" MODIFY ("CORREO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RESERVA" MODIFY ("ASIENTOS" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RESERVA" MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RESERVA" MODIFY ("MESA_ID_MESA" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."RESERVA" ADD CONSTRAINT "RESERVA_PK" PRIMARY KEY ("ID_RESERVA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ESTADO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."ESTADO" MODIFY ("ID_EST_PE" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."ESTADO" MODIFY ("ESTADO_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."ESTADO" ADD CONSTRAINT "ESTADO_PK" PRIMARY KEY ("ID_EST_PE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROVEEDOR
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."PROVEEDOR" MODIFY ("ID_PROVEEDOR" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PROVEEDOR" MODIFY ("PROVEEDOR" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PROVEEDOR" MODIFY ("DIRECCION" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PROVEEDOR" MODIFY ("TELEFONO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PROVEEDOR" MODIFY ("CORREO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PROVEEDOR" ADD CONSTRAINT "PROVEEDOR_PK" PRIMARY KEY ("ID_PROVEEDOR")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOLETA
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."BOLETA" MODIFY ("ID_BOLETA" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."BOLETA" MODIFY ("NOMBRE_EMPRESA" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."BOLETA" MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."BOLETA" MODIFY ("TOTAL" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."BOLETA" MODIFY ("PEDIDO_ID_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."BOLETA" ADD CONSTRAINT "BOLETA_PK" PRIMARY KEY ("ID_BOLETA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DETALLE_PEDIDO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."DETALLE_PEDIDO" MODIFY ("ID_DET_PEDIDO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."DETALLE_PEDIDO" MODIFY ("CANTIDAD" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."DETALLE_PEDIDO" MODIFY ("PRODUCTO_ID_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."DETALLE_PEDIDO" MODIFY ("MESA_ID_MESA" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."DETALLE_PEDIDO" MODIFY ("ESTADO_ID_EST_PE" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."DETALLE_PEDIDO" ADD CONSTRAINT "DETALLE_PEDIDO_PK" PRIMARY KEY ("ID_DET_PEDIDO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCTO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."PRODUCTO" MODIFY ("ID_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PRODUCTO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PRODUCTO" MODIFY ("DESCRIPCION" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PRODUCTO" MODIFY ("PRECIO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PRODUCTO" MODIFY ("TIPO_PRODUCTO_ID_TIPO_PRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PRODUCTO" MODIFY ("RECETA_ID_RECETA" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."PRODUCTO" ADD CONSTRAINT "PRODUCTO_PK" PRIMARY KEY ("ID_PRODUCTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TIPO_INSUMO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."TIPO_INSUMO" MODIFY ("ID_TIPO_INS" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."TIPO_INSUMO" MODIFY ("TIPO_INSUMO" NOT NULL ENABLE);
  ALTER TABLE "TECHNOFOOD"."TIPO_INSUMO" ADD CONSTRAINT "TIPO_INSUMO_PK" PRIMARY KEY ("ID_TIPO_INS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOLETA
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."BOLETA" ADD CONSTRAINT "BOLETA_PEDIDO_FK" FOREIGN KEY ("PEDIDO_ID_PEDIDO")
	  REFERENCES "TECHNOFOOD"."PEDIDO" ("ID_PEDIDO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DETALLE_PEDIDO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."DETALLE_PEDIDO" ADD CONSTRAINT "DETALLE_PEDIDO_ESTADO_FK" FOREIGN KEY ("ESTADO_ID_EST_PE")
	  REFERENCES "TECHNOFOOD"."ESTADO" ("ID_EST_PE") ENABLE;
  ALTER TABLE "TECHNOFOOD"."DETALLE_PEDIDO" ADD CONSTRAINT "DETALLE_PEDIDO_MESA_FK" FOREIGN KEY ("MESA_ID_MESA")
	  REFERENCES "TECHNOFOOD"."MESA" ("ID_MESA") ENABLE;
  ALTER TABLE "TECHNOFOOD"."DETALLE_PEDIDO" ADD CONSTRAINT "DETALLE_PEDIDO_PRODUCTO_FK" FOREIGN KEY ("PRODUCTO_ID_PRODUCTO")
	  REFERENCES "TECHNOFOOD"."PRODUCTO" ("ID_PRODUCTO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INSUMO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."INSUMO" ADD CONSTRAINT "INSUMO_TIPO_INSUMO_FK" FOREIGN KEY ("TIPO_INSUMO_ID_TIPO_INS")
	  REFERENCES "TECHNOFOOD"."TIPO_INSUMO" ("ID_TIPO_INS") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PEDIDO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."PEDIDO" ADD CONSTRAINT "PEDIDO_DETALLE_PEDIDO_FK" FOREIGN KEY ("DETALLE_PEDIDO_ID_DET_PEDIDO")
	  REFERENCES "TECHNOFOOD"."DETALLE_PEDIDO" ("ID_DET_PEDIDO") ENABLE;
  ALTER TABLE "TECHNOFOOD"."PEDIDO" ADD CONSTRAINT "PEDIDO_USUARIO_FK" FOREIGN KEY ("USUARIO_ID_USUARIO")
	  REFERENCES "TECHNOFOOD"."USUARIO" ("ID_USUARIO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."PRODUCTO" ADD CONSTRAINT "PRODUCTO_INSUMO_FK" FOREIGN KEY ("INSUMO_ID_INSUMO")
	  REFERENCES "TECHNOFOOD"."INSUMO" ("ID_INSUMO") ENABLE;
  ALTER TABLE "TECHNOFOOD"."PRODUCTO" ADD CONSTRAINT "PRODUCTO_RECETA_FK" FOREIGN KEY ("RECETA_ID_RECETA")
	  REFERENCES "TECHNOFOOD"."RECETA" ("ID_RECETA") ENABLE;
  ALTER TABLE "TECHNOFOOD"."PRODUCTO" ADD CONSTRAINT "PRODUCTO_TIPO_PRODUCTO_FK" FOREIGN KEY ("TIPO_PRODUCTO_ID_TIPO_PRODUCTO")
	  REFERENCES "TECHNOFOOD"."TIPO_PRODUCTO" ("ID_TIPO_PRODUCTO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVA
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."RESERVA" ADD CONSTRAINT "RESERVA_MESA_FK" FOREIGN KEY ("MESA_ID_MESA")
	  REFERENCES "TECHNOFOOD"."MESA" ("ID_MESA") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "TECHNOFOOD"."USUARIO" ADD CONSTRAINT "USUARIO_SEXO_FK" FOREIGN KEY ("SEXO_ID_SEXO")
	  REFERENCES "TECHNOFOOD"."SEXO" ("ID_SEXO") ENABLE;
  ALTER TABLE "TECHNOFOOD"."USUARIO" ADD CONSTRAINT "USUARIO_TIPO_USUARIO_FK" FOREIGN KEY ("TIPO_USUARIO_ID_TIPO")
	  REFERENCES "TECHNOFOOD"."TIPO_USUARIO" ("ID_TIPO") ENABLE;
