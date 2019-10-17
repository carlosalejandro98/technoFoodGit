-- Generado por Oracle SQL Developer Data Modeler 18.3.0.268.1156
--   en:        2019-10-16 22:31:56 CLST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE boleta (
    id_boleta          INTEGER NOT NULL,
    nombre_empresa     VARCHAR2(50) NOT NULL,
    fecha              DATE NOT NULL,
    total              INTEGER NOT NULL,
    pedido_id_pedido   INTEGER NOT NULL
);

ALTER TABLE boleta ADD CONSTRAINT boleta_pk PRIMARY KEY ( id_boleta );

CREATE TABLE detalle_pedido (
    id_det_pedido          INTEGER NOT NULL,
    cantidad               INTEGER NOT NULL,
    producto_id_producto   INTEGER NOT NULL,
    mesa_id_mesa           INTEGER NOT NULL,
    estado_id_est_pe       INTEGER NOT NULL
);

ALTER TABLE detalle_pedido ADD CONSTRAINT detalle_pedido_pk PRIMARY KEY ( id_det_pedido );

CREATE TABLE estado (
    id_est_pe       INTEGER NOT NULL,
    estado_pedido   VARCHAR2(50) NOT NULL
);

ALTER TABLE estado ADD CONSTRAINT estado_pk PRIMARY KEY ( id_est_pe );

CREATE TABLE insumo (
    id_insumo                 INTEGER NOT NULL,
    nombre                    VARCHAR2(80) NOT NULL,
    cantidad_kg               INTEGER,
    bebidas                   INTEGER,
    proveedor                 VARCHAR2(60) NOT NULL,
    stock                     INTEGER NOT NULL,
    stock_critico             INTEGER NOT NULL,
    tipo_insumo_id_tipo_ins   INTEGER NOT NULL
);

ALTER TABLE insumo ADD CONSTRAINT insumo_pk PRIMARY KEY ( id_insumo );

CREATE TABLE mesa (
    id_mesa    INTEGER NOT NULL,
    asientos   INTEGER NOT NULL,
    estado     VARCHAR2(50) NOT NULL
);

ALTER TABLE mesa ADD CONSTRAINT mesa_pk PRIMARY KEY ( id_mesa );

CREATE TABLE pedido (
    id_pedido                      INTEGER NOT NULL,
    fecha                          DATE NOT NULL,
    usuario_id_usuario             INTEGER,
    total                          INTEGER NOT NULL,
    detalle_pedido_id_det_pedido   INTEGER NOT NULL
);

ALTER TABLE pedido ADD CONSTRAINT pedido_pk PRIMARY KEY ( id_pedido );

CREATE TABLE producto (
    id_producto                      INTEGER NOT NULL,
    nombre                           VARCHAR2(50) NOT NULL,
    descripcion                      VARCHAR2(50) NOT NULL,
    precio                           INTEGER NOT NULL,
    foto                             VARCHAR2(250),
    tipo_producto_id_tipo_producto   INTEGER NOT NULL,
    insumo_id_insumo                 INTEGER,
    receta_id_receta                 INTEGER NOT NULL
);

ALTER TABLE producto ADD CONSTRAINT producto_pk PRIMARY KEY ( id_producto );

CREATE TABLE proveedor (
    id_proveedor   INTEGER NOT NULL,
    proveedor      VARCHAR2(50) NOT NULL,
    direccion      VARCHAR2(50) NOT NULL,
    telefono       INTEGER NOT NULL,
    correo         VARCHAR2(50) NOT NULL
);

ALTER TABLE proveedor ADD CONSTRAINT proveedor_pk PRIMARY KEY ( id_proveedor );

CREATE TABLE receta (
    id_receta       INTEGER NOT NULL,
    foto            VARCHAR2(250),
    nombre_receta   VARCHAR2(80) NOT NULL,
    autor           VARCHAR2(50) NOT NULL,
    fecha           DATE NOT NULL,
    ingredientes    VARCHAR2(200) NOT NULL,
    descripcion     VARCHAR2(150) NOT NULL
);

ALTER TABLE receta ADD CONSTRAINT receta_pk PRIMARY KEY ( id_receta );

CREATE TABLE reserva (
    id_reserva     INTEGER NOT NULL,
    rut            VARCHAR2(12) NOT NULL,
    nombre         VARCHAR2(30) NOT NULL,
    apellido       VARCHAR2(30) NOT NULL,
    telefono       INTEGER NOT NULL,
    correo         VARCHAR2(50) NOT NULL,
    asientos       INTEGER NOT NULL,
    fecha          DATE NOT NULL,
    mesa_id_mesa   INTEGER NOT NULL
);

ALTER TABLE reserva ADD CONSTRAINT reserva_pk PRIMARY KEY ( id_reserva );

CREATE TABLE sexo (
    id_sexo   INTEGER NOT NULL,
    sexo      VARCHAR2(50) NOT NULL
);

ALTER TABLE sexo ADD CONSTRAINT sexo_pk PRIMARY KEY ( id_sexo );

CREATE TABLE tipo_insumo (
    id_tipo_ins   INTEGER NOT NULL,
    tipo_insumo   VARCHAR2(60) NOT NULL
);

ALTER TABLE tipo_insumo ADD CONSTRAINT tipo_insumo_pk PRIMARY KEY ( id_tipo_ins );

CREATE TABLE tipo_producto (
    id_tipo_producto   INTEGER NOT NULL,
    tipo_producto      VARCHAR2(50) NOT NULL
);

ALTER TABLE tipo_producto ADD CONSTRAINT tipo_producto_pk PRIMARY KEY ( id_tipo_producto );

CREATE TABLE tipo_usuario (
    id_tipo        INTEGER NOT NULL,
    tipo_usuario   VARCHAR2(50) NOT NULL
);

ALTER TABLE tipo_usuario ADD CONSTRAINT tipo_usuario_pk PRIMARY KEY ( id_tipo );

CREATE TABLE usuario (
    id_usuario             INTEGER NOT NULL,
    usuario                VARCHAR2(50) NOT NULL,
    contrasena             VARCHAR2(50) NOT NULL,
    rut                    VARCHAR2(50) NOT NULL,
    nombre                 VARCHAR2(50) NOT NULL,
    apellido               VARCHAR2(50) NOT NULL,
    telefono               INTEGER NOT NULL,
    correo                 VARCHAR2(50) NOT NULL,
    tipo_usuario_id_tipo   INTEGER NOT NULL,
    sexo_id_sexo           INTEGER NOT NULL
);

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( id_usuario );

ALTER TABLE boleta
    ADD CONSTRAINT boleta_pedido_fk FOREIGN KEY ( pedido_id_pedido )
        REFERENCES pedido ( id_pedido );

ALTER TABLE detalle_pedido
    ADD CONSTRAINT detalle_pedido_estado_fk FOREIGN KEY ( estado_id_est_pe )
        REFERENCES estado ( id_est_pe );

ALTER TABLE detalle_pedido
    ADD CONSTRAINT detalle_pedido_mesa_fk FOREIGN KEY ( mesa_id_mesa )
        REFERENCES mesa ( id_mesa );

ALTER TABLE detalle_pedido
    ADD CONSTRAINT detalle_pedido_producto_fk FOREIGN KEY ( producto_id_producto )
        REFERENCES producto ( id_producto );

ALTER TABLE insumo
    ADD CONSTRAINT insumo_tipo_insumo_fk FOREIGN KEY ( tipo_insumo_id_tipo_ins )
        REFERENCES tipo_insumo ( id_tipo_ins );

ALTER TABLE pedido
    ADD CONSTRAINT pedido_detalle_pedido_fk FOREIGN KEY ( detalle_pedido_id_det_pedido )
        REFERENCES detalle_pedido ( id_det_pedido );

ALTER TABLE pedido
    ADD CONSTRAINT pedido_usuario_fk FOREIGN KEY ( usuario_id_usuario )
        REFERENCES usuario ( id_usuario );

ALTER TABLE producto
    ADD CONSTRAINT producto_insumo_fk FOREIGN KEY ( insumo_id_insumo )
        REFERENCES insumo ( id_insumo );

ALTER TABLE producto
    ADD CONSTRAINT producto_receta_fk FOREIGN KEY ( receta_id_receta )
        REFERENCES receta ( id_receta );

ALTER TABLE producto
    ADD CONSTRAINT producto_tipo_producto_fk FOREIGN KEY ( tipo_producto_id_tipo_producto )
        REFERENCES tipo_producto ( id_tipo_producto );

ALTER TABLE reserva
    ADD CONSTRAINT reserva_mesa_fk FOREIGN KEY ( mesa_id_mesa )
        REFERENCES mesa ( id_mesa );

ALTER TABLE usuario
    ADD CONSTRAINT usuario_sexo_fk FOREIGN KEY ( sexo_id_sexo )
        REFERENCES sexo ( id_sexo );

ALTER TABLE usuario
    ADD CONSTRAINT usuario_tipo_usuario_fk FOREIGN KEY ( tipo_usuario_id_tipo )
        REFERENCES tipo_usuario ( id_tipo );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            15
-- CREATE INDEX                             0
-- ALTER TABLE                             41
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
