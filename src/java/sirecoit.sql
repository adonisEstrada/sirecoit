--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

-- Started on 2019-03-04 03:12:14 -04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12435)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2249 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 17041)
-- Name: arma; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.arma (
    tipo_arma character varying(255),
    marca character varying(255),
    modelo character varying(255),
    calibre character varying(255),
    serial character varying(255),
    pais_fabricacion character varying(255),
    capacidad_cartucho integer,
    numero_factura character varying(255),
    fecha_factura timestamp with time zone,
    tipo_porte character varying(255),
    codigo_daex_numero_porte character varying(255),
    numero_sobre character varying(255),
    fecha_vencimiento timestamp with time zone,
    porte_vigente boolean,
    arma_id integer NOT NULL
);


ALTER TABLE public.arma OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 17047)
-- Name: constantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.constantes (
    constantes_id integer NOT NULL,
    key character varying(63),
    value character varying(255),
    activo boolean
);


ALTER TABLE public.constantes OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 17050)
-- Name: feveti; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feveti (
    miembro boolean,
    asociacion character varying(255),
    fecha_ingreso timestamp with time zone,
    feveti_id integer NOT NULL
);


ALTER TABLE public.feveti OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 17053)
-- Name: modalidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.modalidad (
    descripcion character varying(255),
    modalidad_id integer NOT NULL
);


ALTER TABLE public.modalidad OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 17056)
-- Name: persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.persona (
    cedula integer,
    nombre character varying(255),
    rif character varying(127),
    fecha_nacimiento timestamp with time zone,
    lugar_nacimiento text,
    nacionalidad character varying(255),
    direccion_habitacion text,
    parroquia character varying(255),
    municipio character varying(255),
    estado character varying(255),
    telefono_cantv character varying(127),
    telefono_personal character varying(127),
    telefono_familiar character varying(127),
    correo character varying(255),
    persona_id integer NOT NULL,
    correo_confirmacion_id character varying(36),
    correo_confirmado boolean,
    imagen bytea
);


ALTER TABLE public.persona OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 17062)
-- Name: rel_modalidad_renit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rel_modalidad_renit (
    codigo character varying(127),
    modalidad_id integer,
    renit_id integer,
    rel_modalidad_renit_id integer NOT NULL,
    activo boolean
);


ALTER TABLE public.rel_modalidad_renit OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 17065)
-- Name: renit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.renit (
    registrado boolean,
    numero_certificacion character varying(127),
    fecha_vencimiento timestamp with time zone,
    realizo_curso boolean,
    renit_id integer NOT NULL
);


ALTER TABLE public.renit OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 17068)
-- Name: trabajo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trabajo (
    empresa text,
    lugar_empresa text,
    parroquia_trabajo character varying(255),
    municipio_trabajo character varying(255),
    estado_trabajo character varying(255),
    cargo character varying(255),
    profesion character varying(255),
    grado_instruccion character varying(255),
    trabajo_id integer NOT NULL
);


ALTER TABLE public.trabajo OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 17074)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    nombre character varying(255),
    clave character varying(255),
    tipo_usuario character varying(127),
    activo boolean,
    usuario_id integer NOT NULL,
    aceptado boolean,
    fecha_creado timestamp with time zone
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 2232 (class 0 OID 17041)
-- Dependencies: 181
-- Data for Name: arma; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-30 00:00:00-04', '', '', '', '2018-07-30 00:00:00-04', false, 31);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-30 11:53:26.205-04', '', '', '', '2018-07-30 11:53:26.205-04', false, 33);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('Pistola', 'Caracal', 'FQS', '9mm', 'LE655', 'Emiratos Arabes Unidos', 18, '06/03/2012', '2018-07-30 00:00:00-04', 'Defensa Personal', '913944', '181243', '2015-03-06 00:00:00-04:30', false, 34);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('Pistola ', 'Marca glock', '19', '9 mm', 'LVH934', 'Austria', 17, '', '2018-07-30 00:00:00-04', 'Defensa Personal ', '', '', '2018-07-30 00:00:00-04', false, 32);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-30 00:00:00-04', '', '', '', '2018-07-30 00:00:00-04', false, 43);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('Pistola', 'Glock', '17', '9mm', 'KFY660', 'Austria', 17, '0988', '2010-01-22 00:00:00-04:30', 'Defensa Personal', '16239', '16239', '2002-02-08 00:00:00-04', true, 41);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('Pistola', 'Glock', '17', '9x19', 'CHH066', 'Austria', 17, '03333', '1997-11-12 00:00:00-04', 'Registro Militar', '5439', '5439', '2022-05-03 00:00:00-04', true, 17);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', NULL, '', NULL, '', '', '', NULL, false, 4);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', NULL, '', NULL, '', '', '', NULL, false, 1);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', 'Venezuela', NULL, '', NULL, '', '', '', NULL, false, 3);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-29 21:48:18.154-04', '', '', '', '2018-07-29 21:48:18.154-04', false, 21);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-29 21:54:46.28-04', '', '', '', '2018-07-29 21:54:46.28-04', false, 22);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-30 04:32:27.194-04', '', '', '', '2018-07-30 04:32:27.194-04', false, 23);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('Pistola', 'Beretta', 'PX4', '9 mm', '', '', NULL, '', NULL, '', '', '', NULL, true, 5);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('Pistola', 'Beretta', 'PX4', '9mm', '1111111', 'Italia', 17, '22222', '2012-07-24 00:00:00-04:30', 'Defensa Personal', '999999', '999999', '2019-03-20 00:00:00-04', true, 2);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-29 09:09:45.936-04', '', '', '', '2018-07-29 09:09:45.936-04', false, 6);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-29 09:10:02.452-04', '', '', '', '2018-07-29 09:10:02.452-04', false, 7);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-29 09:28:09.503-04', '', '', '', '2018-07-29 09:28:09.503-04', false, 8);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-29 09:40:25.464-04', '', '', '', '2018-07-29 09:40:25.464-04', false, 10);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-29 10:04:30.558-04', '', '', '', '2018-07-29 10:04:30.558-04', false, 12);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-29 11:28:15.523-04', '', '', '', '2018-07-29 11:28:15.523-04', false, 13);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-29 11:58:09.051-04', '', '', '', '2018-07-29 11:58:09.051-04', false, 14);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-30 07:42:15.949-04', '', '', '', '2018-07-30 07:42:15.949-04', false, 24);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-30 08:03:19.045-04', '', '', '', '2018-07-30 08:03:19.045-04', false, 25);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-30 08:37:06.05-04', '', '', '', '2018-07-30 08:37:06.05-04', false, 26);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-30 09:50:56.084-04', '', '', '', '2018-07-30 09:50:56.084-04', false, 28);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-29 00:00:00-04', '', '', '', '2018-07-29 00:00:00-04', false, 19);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-31 09:56:32.19-04', '', '', '', '2018-07-31 09:56:32.19-04', false, 45);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-31 10:18:00.016-04', '', '', '', '2018-07-31 10:18:00.016-04', false, 46);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('Pistola', 'Glock', '19', '9mm', 'TS405', 'Austria', 15, '10965', '2003-05-10 00:00:00-04', 'Defensa Personal', '74338', '74338', '2017-09-04 00:00:00-04', false, 38);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('Pistola', 'Glock', '17', '9mm ', 'KXU103', 'Austria ', 17, '', '2018-07-29 00:00:00-04', 'Defensa personal ', '55102', '', '2019-01-19 00:00:00-04', true, 11);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('PISTOLA', 'GLOCK', '17', '9MM', 'ENT-608', 'AUSTRIA', 17, '0773', '2002-02-21 00:00:00-04', 'DEFENSA PERSONAL', '173880', '173880', '2016-12-11 00:00:00-04', false, 20);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('Pistola', 'Glock', '35', '.40', 'DRH545', 'Austria', 16, '', '2002-07-30 00:00:00-04', 'Fines Deportivos ', '221327243', '', '2019-03-23 00:00:00-04', true, 29);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('Pistola', 'Colt', '1911', '9 MM', '70L29335', 'USA', 10, 'N/A', '2018-07-29 00:00:00-04', 'Regitro Militar', '16535', 'N/A', '2090-07-29 00:00:00-04', true, 16);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-29 00:00:00-04', '', '', '', '2018-07-29 00:00:00-04', false, 15);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('Pistola ', 'Beretta', '92F', '9mm', 'N83079Z', 'Estados Unidos ', 17, '', '2018-07-30 00:00:00-04', 'Defensa Personal', '92701', '119821', '2013-07-27 00:00:00-04:30', false, 30);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-30 22:57:16.826-04', '', '', '', '2018-07-30 22:57:16.826-04', false, 44);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('Pistola', 'Glock', '17', '9mm', 'KXU773', 'Austria', 17, '001645', '2009-10-16 00:00:00-04:30', 'Defensa Personal', '99916', '99916', '2019-02-08 00:00:00-04', true, 40);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('pistola', 'glock', '17', '9 mm', 'ZPV942', 'australia', 17, '010342', '2008-06-20 00:00:00-04:30', 'sin porte', '', '', '2018-07-30 00:00:00-04', false, 35);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('Pistola ', 'Glock ', '17 ', '9x19mm', 'LVH692', 'Venezuela ', 17, '', '2018-07-30 00:00:00-04', 'Defensa Personal ', '2000245', '', '2020-06-22 00:00:00-04', true, 27);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-30 14:04:55.532-04', '', '', '', '2018-07-30 14:04:55.532-04', false, 36);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('Pistola', 'Glock', '35', '.40', 'DRH515', 'Austria', 15, '011110319', '2002-02-07 00:00:00-04', 'Defensa Personal', '13313', '13313', '2018-04-05 00:00:00-04', false, 47);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-30 18:37:50.327-04', '', '', '', '2018-07-30 18:37:50.327-04', false, 39);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-08-02 05:27:17.903-04', '', '', '', '2018-08-02 05:27:17.903-04', false, 48);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-08-02 05:27:37.634-04', '', '', '', '2018-08-02 05:27:37.634-04', false, 49);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-08-02 05:27:47.797-04', '', '', '', '2018-08-02 05:27:47.797-04', false, 50);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-30 00:00:00-04', '', '', '', '2018-07-30 00:00:00-04', false, 42);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-29 00:00:00-04', '', '', '', '2018-07-29 00:00:00-04', false, 18);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-30 00:00:00-04', '', '', '', '2018-07-30 00:00:00-04', false, 37);
INSERT INTO public.arma (tipo_arma, marca, modelo, calibre, serial, pais_fabricacion, capacidad_cartucho, numero_factura, fecha_factura, tipo_porte, codigo_daex_numero_porte, numero_sobre, fecha_vencimiento, porte_vigente, arma_id) VALUES ('', '', '', '', '', '', 0, '', '2018-07-29 00:00:00-04', '', '', '', '2018-07-29 00:00:00-04', false, 9);


--
-- TOC entry 2233 (class 0 OID 17047)
-- Dependencies: 182
-- Data for Name: constantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.constantes (constantes_id, key, value, activo) VALUES (1, 'link', 'http://198.27.91.214:81/sirecoit', true);


--
-- TOC entry 2234 (class 0 OID 17050)
-- Dependencies: 183
-- Data for Name: feveti; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-29 11:58:09.051-04', 14);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', NULL, 1);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-29 11:28:15.523-04', 13);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (true, 'Zulia', '2018-07-18 00:00:00-04', 5);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-29 09:09:45.936-04', 6);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-29 09:10:02.452-04', 7);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-29 09:40:25.464-04', 10);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-29 10:04:30.558-04', 12);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', NULL, 4);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-29 19:06:15.876-04', 18);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 20:52:28.369-04', 42);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (true, 'Zulia', '2017-06-21 00:00:00-04', 41);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (true, 'Asociación de Tiro Distrito Capital ', '2010-04-11 00:00:00-04:30', 29);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (true, 'ASTID', '2018-07-30 00:00:00-04', 27);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (true, 'Distrito Capital', '1982-07-05 00:00:00-04', 16);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 16:35:54.417-04', 37);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (true, 'Asociación de Tio del Estado Lara', '1989-09-07 00:00:00-04', 19);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-29 21:48:18.154-04', 21);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-29 09:34:33.573-04', 9);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 11:53:26.205-04', 33);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (true, 'Distrito Federal', '2009-08-31 00:00:00-04:30', 17);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 00:00:00-04', 32);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (true, 'DISTRITO CAPITAL ASTID', '2000-02-20 00:00:00-04', 20);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 14:04:55.532-04', 36);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-29 00:00:00-04', 15);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (true, 'Zulia', '1998-03-18 00:00:00-04', 2);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 00:00:00-04', 43);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (true, 'Distrito Capital', '2016-11-10 00:00:00-04', 40);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 04:32:27.194-04', 23);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-31 10:18:00.016-04', 46);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-29 09:28:09.503-04', 8);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 22:57:16.826-04', 44);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 10:38:41.482-04', 31);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 08:37:06.05-04', 26);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-29 21:54:46.28-04', 22);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (true, 'Distrito Capital', '1976-08-19 00:00:00-04', 38);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-31 09:56:32.19-04', 45);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 00:00:00-04', 35);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (true, 'Distrito Capital', '2013-09-11 00:00:00-04:30', 47);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 08:03:19.045-04', 25);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 00:00:00-04', 34);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 18:37:50.327-04', 39);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (true, 'ZULIA', '2018-03-13 00:00:00-04', 3);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 07:42:15.949-04', 24);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 00:00:00-04', 30);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-07-30 09:50:56.084-04', 28);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (true, 'Distrito Capital', '1981-02-04 00:00:00-04', 11);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-08-02 05:27:17.903-04', 48);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-08-02 05:27:37.634-04', 49);
INSERT INTO public.feveti (miembro, asociacion, fecha_ingreso, feveti_id) VALUES (false, '', '2018-08-02 05:27:47.797-04', 50);


--
-- TOC entry 2235 (class 0 OID 17053)
-- Dependencies: 184
-- Data for Name: modalidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.modalidad (descripcion, modalidad_id) VALUES ('Porte de Arma
', 1);
INSERT INTO public.modalidad (descripcion, modalidad_id) VALUES ('Tiro Deportivo', 2);
INSERT INTO public.modalidad (descripcion, modalidad_id) VALUES ('Armas Especiales', 3);
INSERT INTO public.modalidad (descripcion, modalidad_id) VALUES ('Empresas de Vigilancia', 4);
INSERT INTO public.modalidad (descripcion, modalidad_id) VALUES ('O.S.E', 5);


--
-- TOC entry 2236 (class 0 OID 17056)
-- Dependencies: 185
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (8643190, 'Luis Armando Castañeda Hernandez', 'V086431900', '1966-11-17 00:00:00-04', 'Cumana Sure', 'Venezolana', 'Calle Este 8 Urb. Cristobal Colon, Cumana - Sucre', 'Valentin Vaiente', 'Sucre', 'Sucre', '0293-5155220', '0426.5840214', '0424-8554915', 'Castanedaluis263@gmqil.com', 43, 'e701c757-fe40-483a-9e4d-1a9a9a3378be', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (1, 'Yo', '', '2018-07-27 12:12:09.28-04', '', '', '', '', '', '', '', '', '', 'jasuarez@urbe.edu.ve', 4, NULL, false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (9, 'Francisco Elías Landaeta Sosa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'franciscolandaeta1@hotmail.com', 9, '02a51a5c-d071-47e0-b9b1-052e80b41063', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (7060115, 'Ángel Ramon Vásquez Acuña', 'V087200929', '1969-09-30 00:00:00-04', 'Barquisimeto', 'Venezolana', 'Calle Ecuador# 89', 'Alonso de Ojeda', 'Lagunillas', 'Carabobo', '0241-8725343', '0416-6482543', '0241-8338963', 'ninja499@gmail.com', 2, NULL, false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (15508538, 'Richard Octavio Piñango Francia', 'V161619660', '0079-01-16 23:32:16-04:27:44', 'Caracas', 'Venezolan', 'CAMPO TAPARITO CALLE 2 CASA 21-C', 'Manuel Manrrique', 'Simón Bolívar', '', '', '', '', 'Francia20203@gmail.Com', 3, NULL, false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (10062070, 'Wilmer Perez', '', '1973-04-24 00:00:00-04', 'Rubio Edo.Táchira ', 'Venezolana ', ' Casco Histórico de Macarao , Sector los Angelinos .', 'Macarao ', 'Libertador ', 'Zulia', '0261-7929258', '0414-3622201', '0424-6417308', 'perezllwj@gmail.com', 27, '2cee7a97-bcd1-41ae-a917-f5bd5fb134aa', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (11635683, 'Karim Elias Bernoti Obayi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'Kebernoti@hotmail.com ', 31, 'e4de5a5c-0642-492b-8ce7-a150709f4605', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (9489232, 'Hebert Ernesto González Berroteran ', 'V106820704', '1971-01-03 00:00:00-04', 'Maracaibo', 'Venezolana', 'Urb. La Virginia. Av. 3C casa 62-11', 'Olegario Villalobos', 'Maracaibo', 'Miranda ', '0212-2394536', '0424-2252237', '0424-2252153', 'Hebertegb@yahoo.com', 41, 'd703cb75-8cb5-4948-828f-15d04c0fa00b', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (0, 'Prueba final', '', '2018-07-27 00:00:00-04', '', 'Venezolana', 'Calle', 'No se', 'Tía Juana', 'Zulia', '', '', '0414-6765522', '', 5, NULL, false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (0, '123', '', '2018-07-29 09:09:45.936-04', '', '', '', '', '', '', '', '', '', '', 6, '', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (0, '', '', '2018-07-29 09:10:02.452-04', '', '', '', '', '', '', '', '', '', '', 7, '', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (2153094, 'José Alberto Morales Gómez', '', '1976-12-31 00:00:00-04', 'Caracas ', 'Venezolana', 'Urb. Playa Grande, Calle 5, Qta. Eli, Catia La Mar, Estado Vargas. ', 'Raul Leoni', 'Catia La Mar', 'Miranda', '0212-9854506', '0426-5170712', '0412-3200299', 'comisariomoralesgomez@gmail.com', 29, '7df616d2-924f-4739-af38-0cc8536b4a91', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (13866204, 'Nelson Romero', '', '1995-06-08 00:00:00-04', 'cabimas', 'venezolano', 'los samanes', 'alonzo de ojeda', 'lagunillas', 'Vargas', '4142779226', '04142779226 ', '04142779226', 'romero.rex@hotmail.com', 1, '399cb6f9-a052-46d9-a89d-4ecc0eefff05', false, '\x89504e470d0a1a0a0000000d49484452000000f0000000a00802000000bdb976320000162f49444154789ced9d2db0ab4c0f8073bf79051289442291482412595989442291c8caca4a241289ac442291c84ae427d2eed9ee2ecb4f81f6f4e4993b77e87609e9691a42c8867fe1b50082f816fe6bebf6dd3a10c46afcefdd0a10c49a9041135fc57fb66bbf5b0782580d8aa189afe2bfd119eeb5dd5e0d829844edd9fa093a832653263e0db4498d59ff1bca439be78a6dfbbebbae5a04b180aaaad9f62df29573feb9e7933cca7cb3efbb7e18aeaf1a412ca22a0a66d64a3fad0b397cdf3d1c0e5ba84510cb4083e45db580c2a07fdc7318767dbf8d6204b1103f0cd1a0dd6b2b3b69551efada0280efbb96616caf1e41ccc6f75db469d97a157968760148ee99f87064eb1d8ca1cf757f856e5b7508621175dd3b036f512d07f1550cc6d0439c42ddbb445cd86b89b22c2374ccb5a4fd3a8ae6d6752341efbc185ac98a5f18a1e18f5b3300848e59c0884dcf88a1895fcd298d71238e23308702ce2f8462e80fe515f77c4ae3388ef0dfe974865bf3a232a7347e5dc80216fc1166c7d04364aea22624a943793ca943e57c361927b0394a21fcb4b9ca4c972f8f57bd5136c1d0713f8b6d1c33fe5a50383b0f20f7dfcfd80898ce5a27901562e851043be3cd5736418d516a242bed6f8a3248e09482510abf31e547c009bed197d335de06c1a4a6d884def2f412ee8750c9b9ef3bf0921d4298f324f0747ec5a629860600f08d1e249bfe5de8ed80b757341dfcffbe17376d8ab43ba6032a8fcbde1a819b733fee362790f50d3a707e5cd832a3e1254c199fabcc3d96982c6dc171df8ce93c3945c174f897135cbb4ed452f5561032c06a3134c3377ef22ccb0c819730657c81324371f3a8905931d276a0a7144ee54fac6b349a80843f1570d384b8429e83d1cbef8ba15f9120d8dc5a31347b6ba21cfeb8995b7c944d6f7a08d13dab74f899ac8c5b9ecf15fc9ca72888626862bfecb2e640036f3dfd128676df46ffcdf3d08153b21894dfe647e4f10f075df5bbb578769069fc7ab6981732ea9e4195f4784295da1bdfeb35d68fa105f80014b7cb8177b7b068deec3e24545893c94e8ed9104629ec748f83d3637194c3e284388e9e32ca2ae43953f69a886cbd8a3585b862a5311dd7f55f3918f10aba5a0e74c3686a6c9bf966a5958f7a6e5e1a2f5090c6cb1176e1270bfb4edc4b62a83ea9ae2be7d6806a5921c5d0bf1065de6d421679a164bd9c29d326eeb506b30d9aca47f5ac558dd8757d01b7bf5c7037a57c5466760c4de5a3bbd175fdb9a345433af6c84313c46eccc84347ae7138d89b6a4310cbc8c1a82af55bba189a567d13bf0e5d0c4d7d39880f87fa72105fc5bc5a8e2ff0d05114c571e43874a1fb57f81331f4d77c1062948531749cb76cfb24254378bfc8b6a3e87ed79ebd14e6088b82f85d94236c704849148b1f4438fa90b67ac8dfef49d3f50070bbdd3473d689a1b3a28b7c8bbd8cf336092d610ed6af98f6fd0e27b32de01602e186b8b8ed798e6644af24c3b41df9e84cb1e972d8a1c9df6f049aaede82055688a1e3bce5ad190022dfca8a4ef6d3b28429be4d9e3365448677cff25ef2479b72c160916f5e95293e782eabc5d0c264e51aa1a139cc49f3058dcc890a7b29e70c61da0edb9d97d3f57d1a3f55e5f2232859780900691c0b6f4d5483e059e089a7b35a1e5a9e2caf111a15a80c4b84b7f81fc99040d93d0b9aa069f26f0923f26269e6e051e61435089ea6eb5737e20df3d0f2e42971aa5cdf2decc59b357b6bc879cba2d80479c1a65243cd08efe9d96f15dd3345d51a6eb7ad9c31ac124327a1255c149eab2e092d65542a3869798e1c0d2be708018cde23caee79fab13423fc86e5b84ae74d30b6f0c753581243a34df32f9593bbbe67ee4d6e7da23cc4d01cde710a5991a1f855769cfc4b7dd32aa586fc861c7f2b75f89b6cea9247513ca7109f50f8ca23b09aa686874764dbb881b097fc1c81297340e577f9bd26eaa3d7706843a3c3df6437afdcd6153e63457e5ae1e09a427a4221319d9dbd3233e8796b0ae9e29d18e55db1f210abe5a13fe943fd45cc772c3e6cdb8ffbd657cb43df802e8cdec9cea753d131c7c79fedd365373536cc43bfc543108c3d332d4f8e393e02806773d510a7e4da76a56506897879b6be267fad1e9a5891aeefc58bbff8f864ca0f3cdb82b62bb378079b16f813f5d0c42a8811f380353382eeb6bf4dd39a42621c7d2aa33bf8967f0480aeba58790500d776a77622b4a69098cd508eb9b44cef61cdf5390100c38fe0006d96b339595e6ceaa1298626e6319a66b6fce3350870bb2f22389d0172cdfcada1189a18447fffef524360757675f1ca12009aa60500b3abde9b9aa6189a5030ba96e47088dbfac713a33503c0cdf2cd930f007d75ee8bda7242dfb52b2930580b8aa189716e37c893236e0f45c0659e354deb38f6e1f4d3a83e0dee958f79965c6a00308f2e80bb614510c5d0c4084dd7e7c931cd8e5dd3598e9526eabc9beb3a00901cc2fc921b86911c4200c86b00802c2ffabe8faa8b1d44d1e97cbeecfab0118aa1891fd03747c760746655b76516879e0d00615644ee3d4fd7354df3780cc8f514c3f6890e018aa1893bbc6f6683a167878738cf1516192427ab2ba12bf30300dcefb0588e950374d505008a6b1b390e3aef8da018fa9721af3cdf0896d0406bee9aae6b9af3a5441f3c74c3ef7c29d3ec08007551b9a18f8328c18bcbae2960380a5f058aa13741eea8848d9af4dd9ef839ec253fc25ec2f68b17db5b070041723a6731005c6a008022b2f1dd4b0da0b2e92039d5c5c90d7d37f4d3e4127ab6e53800d0350d006c97dcd0b0490c2db7ad1016e1b145af7cbf0bcd223fe05cd46e4e6b224c1ff6e7e23f0e2e116793d9a030476ea2c07fb489abdc17c31769a0d50600be6b87e710008e2e3cdcf0a9b8b6f0ec748b6b5b5c2fa16763e48da6ecc5a7b758336cd4db0ea40e1b4fcfc1653b4a5e47ee6a20c8e1257cc88a6b6697ca3f172e119707952f877a3bc92bcf57a41978304f55b7be6b03405ade2ff2dcd0b79c0e00ce597ca901230a00a8eb06002cc74e8f872c2fdc28abeb06a03f9e8b53b47059ea44f6eb6d07cf3d2e86b6e5a3ccea95a151723704f7c9fb5a18508fefb5c7cf117a3be106ffa8ccd53facfe5e207a59c3b69343c85f2c869e7da95bcbb9fbefee9a5a5eda34eda506cb092f5108003b5833ecdcdb4ee963f86db95d18df4840e8543445f27be135512a2fd8b13c67e8af04db2c2c9fb81c909935005c4fb1e538e1b965ef5e6a4823a8aea9e5a596ef75d5353824659e05b7abef26fb071e5bf5b683017f236c0f751f65d346bb79bcdd4333945a691a4a293b7ef012303a9fd5cb6f3a73d769a369f600b66ba36f7e7ab7eac3fe7c89a2a0ba02409e2500509e0f9bdef756b2616fbb510f0d133a8bf2adc0946eef033d34df7b52e881cda609730409c0f59ddaa8891ea635168006ea3f9b75d0ddfaa206389779161c92a0bb95d66a6bf24cd374aca70fde3edaa2ecdadb6e8a87e6fbc40dc9316d47f86a3fd943cb1d1f790db19f933c8797c0b6f1cfc27be8b53eecebabb5934398e585e584c787b978b60575d7f8e01d8f66e00471d483b5ecae8a699ac212d5a10fbe5f6f3b215460b92dfe1207a4248032fce0e7c80dbbdeeea1317fcc9cb190d3104e38a8ad3c47f9b936f2d043698de9f8ae5d9e0f00e145ea66d557e73cce00e0aa955066313ca7ff6437bc8c859d93e4de763cb7b6e15f9ab6238cf06fc9f3357304519f90871ed28729ac7c290f2ae528f77a91d7ddb3efdac921f47d2388f2f27c0080aaea53f6633b5f0000a263e581e165f2ee6516a78601e70ba6f9daf92d5daaa218ec9cb42c8656e69e198accabf6227d4a677c36e7d3dae80fe9238c2ba7f183a31356e1cad569bc82ef0fda0696955edb2eb854552d1af4e110e7d60d6c0ba2636a18e1293e47c7f4922b458d42b51c7f9ab5ba5b2587b0aa9e6c23e86e2cc630aa7303f730492e02e99ac2cc9b344b42cf2eae6d1afac5f5b2d8d2a896e34fb338b3c1f308a0911000aaaa1faa370d3dbbc8ee45a400808911d775aea7d80d7d80aa6bba2c2fd2cb6a9646f5d07f85159b0f1af9fd871100f851050081efb377fba2367c0080caf78b6b7baf99f6620008cfade58458f3d4359d179f9243d8de6e2b5a1ad543ff09d6ed11da1f7ed2008915a2f7153042b72fea2c2fd09479bcf81e84f42fdb31c5d07f944d3bde268710ba41f968be98b7668398d978ddc02886fe054cac939eceeb89671e5c7cc567390295351b7ed41751e5fb87cec4f5e1e965452d06d9a91e1aa43a66f6cc3fe09effc7a60d3d0e704a5df52724a71733ab4e7a22abbbe72c2ff07210b7f9001a0062278073d1555780fbedbe3d4ff53bd543cb75ccec10f243bf81bbc136f4ec4081cfacee7811bc590863cfc0d5b3ae7b66b07b8496131e84dc4977cfe079c723001449b8dd37f2b67ae8a111b460f6c4aaf474920fad97939e4eccabfdf6a706cab5d4f8495fa95dd9227a66b5ff4852364ddd38eefd4b298bc2b69db66ddac7bdcfedbe91b7d5432b47e42527ca785153258273f833c017b867f9830b51f5743672cfc0ad178ccf396fcdc8f572b17ccfc65fa3b3a18796d9aa1e7aca53098541e5c389e5bd6481fc13667faf7b66c8e5d1fc02b65931f4d68ff3f15d3bcc0ade9acba2e8aa2b061b88e57bbf2086961126eb9766b039829316d6c90ea921382a8c5b3e6489e18b286ba9ad4531f476ee9947f0cd5d2596d9d9b6639be6e294b3fe53bce759df9ae51b2c02c6c9fccf40b3d4991f61bb0b198fdf887c828aa2885d5720d3bf941d9eb6e6464fb5474ddd744d21af67814561f414f5f77ed637db1e7af0b06518e7f3195dac723996bcd768cdf4ef0da39575d27cba13e67cba7655dd94d8cfbee37ab9f47d6fbb8ab5b1b3be9457ce2d1bd6432b6b7f1156d6acaf755e5657fd7b3d3463b44e7a5cc2f68f76f55d3b297f746beaa64842bc05e879473e8c66e3a34c54b9aede5d0f2d0f2a4b81476b885fafabfe158cd6498fb24a619d1e3ede68ea06dd33beec9a02e0c84f1ef5d0cbbc32d57210ebe0bbb61040c3b3c1b46dc30212cb0935b6f4ca89846a39fe04fbe43798bd62aa8e6fe88fe08d95aeba5abee7794779026ca02ad5437f21bb3d4dbea91bf4c41d5cf5d6d235853c610b35a91efa0b6937968ff753e01157b46dd335056f2d7ddf1b8621c424fc84b51c33c5d0dfcf3ede990f91eb73a2597562f91e6eb0092b6a4831f4aec8a529a3c5cd0b7611d821bf81b74e3044c6ff474dc57a54746c1ddf6f5e0f0d52033bcd88a663f4b2fed06fac90964b53e41a5a41b105bbec8f90dfc07bdd82a978ded17242bc1c1c9ab3119bd443cbdda0e51178be657817f5f816e539aff4877ee3a946dfbc4fa9d8825d185bfb3fde9ad15e2ddf13026800e89ac28d32beae03131d657959579f9deaa135dda047df9579bd3ff45b2e06863a3a8f16372fd8657f98f7d507d0fcfc2dd4d8b51e7a4888dca553ae6ce69df4ebfda1dfe2a1d91d3ea12df4a8f29a1a98d1d3d10e013448d6297f0a96e5c099b9750300bfaa76d06dc3fed043e34299af7ef755fa43bfd1abb1b058593c38eaa13f30863e35253ec3ed505d2ddfd3b8e7fa9c248730e86e87ce0400cb095ddb74a3ec9288a1e68a6cd81f7a685cdf1f5a08ac47ebaa3fd643836a8924ccf4d0c8f418ba5da4e744b02734bf82b03e27d6496cbb81a093cef222c31487ef5da210203b9e154d3c16b36b3df4d0b8de45692266fdb3481872668375c3dfd3c3f1be794aab6ccde0c433d20e19e832ffc96f048744af0fabb0b34db36b0af79c0040fd72efd3a743ec590fcd0b61c954be3ff45065b3468d29fda1f573f6f4d6c2071c555e9e30ab1ff60db68dacaaba751f598efa9cc0b4d6474dd7af6bc47a36a98746868a7af58c16014fa90f96e7b091dd3cb4fc91a734b7d6683eb40be3f5c6cfa3d8b63977972dce1b9a7ae87fe1558c69cc730500beef1e0e8aa507c4c7b256efe7211634d9df282fce0cfa16f9c25b54cb414cc5343fce24a896e39b693796ff214d9bf4503df497d0f79b7b9f5f610f540ffd2d18609beaabf377b175d605a81e9af83228862676e22d0134500c4d7c191443139bb043000d1443135f06c5d0c44eece3a165288626be8ac118fa5cf7adb55f9114414ca7ac7bacd29a174313c487332f861e22f12d00c8aa0eb7b3aa4bb8f268fe259b23bf8b6f09d28626f3d20842c3ff16ef99f856f2bc5a36ab3adee65e314761b220992086d0e5a1f5c8de57f0b52bb29d64e257b36d0cad3738c19deb118296b9bb137f04d97a97871c324210220724fac9caf804c7c99a89890cae296c4c27088237684410639465e9dc1a98fb8c95b5089da92b2b8b4697f9de548e6b9bf2e2e4b9725cdb04d54afd377eae2f90a3e10d79e8d0310575d3e04789b46cf593f56fa5812d48582c071ba3bca24f1ad8455100806b9bcbe4e05f86df571899fbb986f84572f4ac93877e05341df652b6a1b9a25e9120a8b44c1afb7da235e346f8189c2e8da9c1744803bbae6b00705df5ef9690d9d5a0056b0680baaedff56df1278ab22c85f1892aa5819d240900a4696a1806b3c8beefd33485e173882ca7effba669e0f1bb0280baaef33c0780244926ca21f688a111d99a9165368dd2cab24477b8eccb7ef83f377cb4d46123f3944953d4040db1288ab22cd334459b9e4bd33468dc68cd848699f5d0abaca271009ead19fd100f6fd383079dd9f0482f87b967d7758510086d7aa21c7858336684d05be336da749665a37278f78cc8d68c4e3a6c6ffbfc7d3e488e9699f5d033dbe40c2158b3e3fc7c5676ae47471bb6b7290765ee99df5770d21a396c77b466de928aa240f7cc4ef17a394992188681d13373c96cc3300c66886bfd31498e1e6d3df47a1e7a3ae31ef111b6f2c851e6901c3730475b0c164511048161181a8fe80626aa81216f9224e8aae161d0599661249d24896b9bd165a0bbdfa779c44f933393fd62e81541d3b95eef7de43dcff33c6fe2be757b63576f2333eb5a6788eb9196ad1cea08645946178532f362e8b5ce02b3d01f94450bd7ebf57038388ed3344ddbb6f0083ceaf686194d5da850b6c6e8b3d49bc6755d264da66e6fae6db29023080221e4f03c0f3d7796651a398cb66d6ddbd6cf81a55f0a7f8f63f4eff38be4cc8ba1d70a39040fc4e7c89897651e68fa290c6371c771d0a0992864e4a2b06c31cbcb2260240cc3baaeef61f4983e288445f3bc41e3143eb13daa4f18d84551286d9a77cfaf9ce2f91fd562394573e3cd71733933d9e3a21000d2b2755d7be8acca7f61d30f8ad79772ce64961c66beece57d6382a747d08ed1a631a781f10ffaece9fa0cd9343a7878cd93216840afcbe1592c47b831beda45e17e79e8019b9e78466642f03cee795edbb6e89b01e07abde2af62d61d543465e6a1c3309c9b81be6b95a6433756e6c929db30b09324619db9d70d9d05a7b84cc2e728036f5f538836cd9fe299fb992504b3c82cd7817e91c999fedb008034b0316d8c9e7eb1325996e1fd140060775880f3f47305c2a23f8e9ed70d68455651e6036a39ca367c2e4e5af0a367b6c8bf5ce63c587cefbaee2bca0040f8284e0ac3900d2e13c86ebfafe51157f4acab485b571f9e3deaa13fad1c5159f6a9f485543efa09726434f5d083cf58a1027fe26361063def192b04f1e1cc88a123d738d04a3ee223b13b63e8c1e1d4db8ef82a06f3d05555d3730a89cf041f520813f3d0e0d998e8c8f35cf3305982780bd5e33e46edd9302b0f8dbf03f2d3c4e790e73973cf4a147968c4e56e80fb3e653e88f7c39bb29c81461479680626a409e2d390d3cf8c410fcd703fbede9ff83b0c3966c6782dc7a80882f81cd66cd648106f47958726885f8b2a0f4d10bf160a3988af820c9af82afe0fee5b213c34161b820000000049454e44ae426082');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (22246767, 'Adonis de Jesús Estrada Vallejo', 'V222467677', '1995-05-08 00:00:00-04', 'Cabimas Estado Zulia', 'Venezolana ', 'Estado zulia, municipio lagunillas, sector los samanes, parroquia alonzo de ojeda, barrio José Felix Rivas II, Calle El Progreso II, casa #5.', 'Alonzo de ojeda', 'Lagunillas', 'Zulia', '04246721142', '04246721142', '04246721142', 'adonis.estrada123@gmail.com', 11, '3666008b-ab45-42da-ad0f-485cee24b2c1', false, '\xffd8ffe000104a46494600010101004800480000ffdb004300090607080706090808080a0a090b0e170f0e0d0d0e1c14151117221e2323211e2020252a352d2527322820202e3f2f3237393c3c3c242d4246413a46353b3c39ffdb0043010a0a0a0e0c0e1b0f0f1b392620263939393939393939393939393939393939393939393939393939393939393939393939393939393939393939393939393939ffc000110800c3010503012200021101031101ffc4001c0000010501010100000000000000000000040002030506070108ffc4004d10000201030302030601070709050900000102030004110512210631134151071422617181321523425291a1b11624627282c1d117253334374392a2b2277475c2e108263644545564b3d2ffc4001a010003010101010000000000000000000002030401000506ffc400251100020202030002030100030000000000000102110321041231134122325114056171ffda000c03010002110311003f00e4d17e15fa53e946ac2356da7045784e38355c74ac17e8b382142925880028c927d001de9cf14b1b223c13abb9c2298d816fa0c73f6a6acd25acb1dcc04896075950f6c15208fe15f4bdc59c7d497dd23af44374506fb8c8ec04910c67ef8a54f234f47257e9f34caad11c4d1cb11c640742a48f519029cb6d3b00e96b72c08c822272083e638ad7fb67d5bf2975bddc68c1a1b0885b2e0f01b1b9bfe638fb57564d75fa73d96e97aa4769ef6d158db0f0b711bb7051dc0278fa563c8e8da4cf9e228a59ae7dda186796e4b6d10a4659c91df80334fbeb4bbd3ca0d42caeed378caf8f094cfd3239aee1ec7aea2d6ef3a8b5c92dd60beb8bc5debf88a2ed0700919c67340f54f5558ddf496a7a0f5462d35d2926d83dd98aee0c4c6c87907200e41f33f4a1eece491c73ddae4a8fe6b7246321bc17ff000a8e657830268e58b77237a14cfd011cd7d13ecbbab64ea9d3a78e4b04b6360228b2242fbf2a39c1031dab2ba6ebd1f5cfb4bd3a0bbd31224d33de1a31bfc40ecac369652063079fae3d2b7b33691caa5b0d42ded7dee7d2efe2b6273e33dbb2c783db923141ee0406c8c11907e55f50d96ab25f755eb7a0dc4313d9db5bc0ea19725b783b8367bf6af9afa8ace3b2d6b55b284158a1ba923419ced50dc7eeae526fd30f2cecaf2f91a4b1d3ef6ed14e19ade06900fb818a60608ce92ab44d19f8d5d4ab21f420d7d0bad6a2dd21a16836da4430c70cb776f6a54a7646c6eede6739cd663da96816775d61d2f34b0717d7060b8c0e245560403ea71c67cc56776751cb62b7bc96d8ddc5a66a125b819f1e3b7631e3d72063151c374b280210f292090a885d80f98038afa3eeb559ad3abb4bd0a18a24b3b9b49e43b570c85080a17c80c1ed8ac9f4fd85ae97ed9f5986d6211c72d909b6edc286620b63d013fbebbbb3a8e49ef4a922c6d14eaedf854c2d961f218ce2a71751c6c8b224b1873b433c45413dfb902bbfeb7a60b9eb3e9cbf0a0ada8b90c71c72831cfd6b2bedce349b46d1603f865d4514807c8ae31fb0d6ac8d049d1cb638e4bd85a7b5d3b51ba8c71e3416cef1f1f3c50514a932b488dc06c37c382a7d2be89d42edb42d43a6f49b18638ed6ea77b665db8da8919236e3b720572df6a3656f69d75218235517966b2cab8c067dd82d8f980335aa6e4e998d59870e19dd5165728df184899f6fdc0c52172b1b01224b1b638568ca93ce38e3279aebfec4912dba7b58d45f2237be7273e88a07f7d0bed8ecf7753f47df28f81ae7c22debf1ab2ff7d0f6699dd51cc7c42aa4982e86d1ff00d3bf1eb938a6c72878d5e386e1d09c29581d94fdf15ddbda2f58cbd2905b84d3c5d8bb2e87e32bb303bf00e7ef8ed40f486a6da2fb23b2d4d21133db593c8b11fd33bdb0b9c13cd6fc8c1ea8e26f750c6de196712671b0a10f93d86d23353dca5d5a4425bdd36fed61381e24d6ce8a7d3922ba07b3bbd87aafda6ea5aedd59a473476aaf145cb784d954ce4a83bb19f2f3ef5bbd0b55975fd57aa748bfb78a5b3b29d204409c32321c86cf7e47efaceeceea8e1d63756e6dfe11338ce32b0bb2b7d19462a4fca16f0a979bc68d7b16781d547d491deb7beca3a8dad3515e8ff71510c725c94b9326588473c15c7efcfda85f6cfd4f732fbef4c258a08a3304ad73e21ce4b6400b8f5f3cd6376f60bc51663fdfe16dbb56e483c83eeee063d7b5249a39d3c58589539c12b8ec706be8ab111d9c167a79fc62008808f245507f88af9f353b6f72ea1d72cf1c457f2951e88cdb97f73562d0a9e25156806e9822903e940703ce8bbde13ef4167d68e2e8522a755ff4ebf4a54b543fce3ed4abac796b68f14d62884af888a303b5073c458ee0471dc7ad49656865b392e15f1e101c63bd44338c1e7e74c8e58b5d4a288428c608e08c1afa0bd90ea6cfeced5a6058e9cf2c4bfd254cb0fdc71f6ae0613f156eba43afbf935d3b7ba39d1e5baf1e491c4ab384015c607041ed8f5a19c1fa815168c55cb1bf8aeafe59035cdc3bcf263ccb124ff1aef52ebd274d7b24d2f5686de39e48ac6db11b9201dc141edcf9d702b6b191a00a73bca30033e78ed5d4b4af6a7f92345b0d2e7e9d9a56b5b748598dc2057daa0671b4e338cd038b3900fb3f8baa358d7357ea5d06eec2dc4f7445c5ace5ca3eef8b6f032319c03c1efe55b2d6d74debef67775a94b6a229218e578d994178648f39da47752571f318e33587d1fda65c697d49aaea5f9299b4fd464476b75947891b28037038c1c81c8c790e47991d47ed3ecdb429f47e9cd1e4b54b847567936aaa0727790ab9049c9e73e678aee92fe1a5a7feceee5ad35b63dccb093f75aa0f64bfed5ae3eb77ff0058aaef677d729d1b15ec5269925e7bc3a32baca136855c63041cd51e89afdd691d4abaf5a4637a4ef2185db8657249527d7e7f215ce0ed99677cd0ff00da7f537fdcecff0083d7cffd6073d4dae3797bfc87fe7ae9d73ed834c449eeac3419d7549942b34a5157e1fc3961c903d0e2b91dcb497af34b70e5a6b87791dfd598e7f8d7453d9cda3b9fb5883de7a7343b6599a2926be8111864b212a064723919cf71597d4fa4ef7a5fabfa57def5eb8d4fc6bcf87c6046cdbe9927be6a7d27da8e9f26936969d41a44b757164519248f63abba708f838da7e99acff537546a5d55ad41ab5bc7ee51e9c4359c4e7712d9c92c7d4fa79572837e232535156d9d6f573ff6a3a01fff0002ebf8ad55589ffb72d4f3ff00db53f80aac87da959c8b0dd5d74ddc9d5618d915d190af38dd873c8048ed8acf689d45aadaf57ddf53dd69a2f64bd80a182398208864600241ce00ae58e55e00f3457ad1d62cb5356d2b599e46cb594f72acde6360ff00022b17ed5653374bf4a4cc725ef6dd89faa0359bbdeb3d46d34cea2b36d1668ff2ccf249148270443bd4039c0e4f1f2a0fab3aa6e3a9740d2b4c874b96cdaca48d84cd32b825536fe10323b66b96393f11bf2c6aed1d63acff00f8a7a37feff2ff00fa9ab09ed5a2f17ad2590825a1d29644faf887345e9fed2e19ed2d7f2c6817136a56dca49032952c571b81272a48ee39feeaa7d526bfd5b51bed5b52b74b596eadbc0b7b70dbbc28c676827f58939ad8e393749033cf18c6ed1aef67ba5cf77ec956ced65582e6fa299d1ce70accc406e39f2a9bda6d8b7e46e9b91b0cf67a95b2b919c73f01fdf5978fa9b524e8b1d356ba04b1482d3ddd6e05dafc24fe9e319ef93de9faef57df4fd3169a7dc74fceb240d6ec67f7a46dcf19539c633ce2b1e392f51cb918dbfd91a9f6a7d5573d3b6b6d6d6d6914ef7e254dcee576e17cb1dfb9ef43f4a6a9268bec7ed3558a012bda593c8aac7018876e0f9e3ceb09d6dd572f55dc69adf925ec92d4c84b34aafbb78c0ec062ad7a4fda149a0f4cd8690fd3f35d35b21577f794556cb139c60fae2b7a4a93a0be687f505fb2bd5db5ff00681aeea8e91235d5aa394898954c32281c8073f0e7ef43a7485f753f59f55c969af5ce942def132220487257393861db1f3ef4141d4dac7f2d25ea6b2d155616816da5b333296751cf0c0000e707183dbceb457dd786da0ba7d17a767b7d46f1b7bcb39455dfb71b9b0496c0158e325ea33e6c75fb2333ecba036bd7d611993c431c778a5fcdcab15c9fae3352fb428bdebdab0b20066e6e2c53f793fdd54bd2da9cfd37addaea3ee86fcdb47323859421667eed920e69f7dd56f75d7b17544ba3ba2c2f1b1b63302c4a23283b80c7723cbca969da0a334d59dcef74dba9fa874dbf8e654b6b58a749139dcccfb76918e38c7efae39ed0ad96d3da1ead8185b98e0b803e5b7693fb568cbef697757dd4ba56a7069170b058c72a496fef4bf9d322e013818e3bf63f6aa8eacd764ea6d7d3536d2dec3c3b630307955cb1dd90dc01d813eb5ca48c9b4e2ca6be3f9b1f5a068ebbe63c8f5a081c9a6c7689914faaff00acfda952d4c7e7c7d2952c7d97b60a534063b48dec067d6abdb229f6ba8b0b38ed5801106df9f9d4c543b0c6092703e7410b56c6b6d11057550cca403d8918cd4273e4706adb537c2c30f946a011e86ab58f357e2b94558ff52214925460c18e41c8ab09eed2e215257128e09f5a0b14e03147f1eec04a86f19ce6a238279a91db06987c8e6b2734b474958d6407b0a42263f84163e8057859477a9d2e56388ec07c427bfca94e71af45d10346eb82ca403db34d5526ac62b88a41b64ce7d4d29022b109dbca81cafc046c76aee995ec066acb48198e55279c838a1ed44c54bc4a081c106bdb69a4b7ba5768c84230f814cc32fca993e65da2d20e95cc6f90714d17f2b602b95c7a1a65ecb13f31b6e0578228107069ae5d5d10ac5d96cbd5b8b99a3c972cbd8f602a0f0db9da5188ee3209151b317b78c8cec232d83c1a1c9814ef8cb237a62b1e4a7543218535565958f375103faddbef57bacdcff9c251bb210818cfcaa874ff00f4b6f2161cb007e5cd49abdc896eee25dd856727ebe55ce6d3b42e78aff16169aadb4270f27238c28cd5b58dd5adfc6c80138182ac306b0d0b88ae16458fc4dadbb69e466b5d69ab4f7ee8f3c514451362045033fb2b2391c9ec4e5e34611b4f654ea708b6b99231f841e281b7dcd201824e454dd4576cda8383d9479579a54b1c08d34c47f44119ae53d850c6dc1366a6c8c76b6aa643866e4d53eada8950cc18976e157d050175aa333190b92be4b55734d25cb9600e4f181cd636e4e9198f05c949f84f1485f9da08352f8087398f27fad5258e9b76e36ac58f3dc78a365d3eea24dcd1938ef839c52e5892f0a25c88c5d2656dbe236caa0561dc53e69d1a4e7703db14b6e1dabd701bbd472824c7e3c8e4812e64ddf050c49c9c54b31fce1a858724d3a0f41b548aad4bfd38fa52af750ff4c3e94a86824f449040a614393923c8d287c48dc1193839524f6a56c41857e828bab218e334996b499e492b48c5df966e49a6fd2bccf35ee69f18a4a904847b579e552546057335a239549e4545c8e326a67ed50b8cf6a972c5256806fe90d26a5b3557ba8d5c0209c107cea12314f81fc3991fc958122a47e025beab6d1c176638d76a851c5411c4d238541927b9f4a9f50bcb7bbbbdf1e7694039ef563a2dbabc7231009cf7aa38b8fbba64dc8c9f1c5c816de296dce371e7934eb99dde368f683b8f7c519770957ce081eb4211c9aae58545d23cd8729cf604e26854192360a7b1c641fbd432484918c8ab682e5edd591952581ce5a371907e9e8687beb3864864bab2561183f1c24e593e7f3148c97128c79149d308d1cb4d018d70c50f39a30dbee624c684af19c555f4ecbb2e1d3770eb81f6abeb3da2746901087bf18149965b6571c09ed302f0d91b2880007b54ad6fe28c883767bf35a3b7b5b37982b78441f22dc56ab4ed3344787f39676f292b9c2e4b13fdd433e4348eff003a6ed9cbd630ae51a25539fc27915a06b636da719d6d6d8a6dde5812ac07f0357373a1d80b990471801ce428e760f406a7bbb6821b1f05d7116c3bb3f4a47fa5f6a414b8919aa6725b991a6b8924639666e7e551063b78635ecc713388ce53271f4a92da12e431ede98abb141c844d4712a7f47b6f14970c060e3f5ab45a669cb16084058f738a6e9d6ca8bc2e0ae39ad269962ef82410a6ad8c1416cf1b95cb6ed4748f6d6d98a8f8491eb45342b1fa11f3a2e6963b640b900e3819ef5513deb487be3e54b9c934790fb377652f505b471cc93c6001270c07ad53367073df1569d412b32c61796c9e3359e3704315624735e6cddc99f47c16de35635d72e5b14d65f2c57af839c1a606938f841f993451548b9bb2ab52189c7d29579aaeef781b800714a8024b44f6c98b7438c6466a7ce2a385bf9bc63cb029d8abf026a345d42cf34ea6d3871de9e6c475479c53e9573f0c6c19cd34734e2335e050054d3dba15f6786307bd344601c63352c0be236c5c6719e69de1378806de0f99a54dc6a91c4263e7d2b47d2932acef6ecf9127233eb55f7566c912c9c3276c8f2aaf8de489f7a33020e41a6f172a84bc11c8c7f2637137d7b6a7667701f222a99a2f888391cd5a693aa47a9dbf86c024e072a7b1f98a1ef2128dc57a53574ffa7cdc54b14dc640af6323a6e8d95be5e750d9b3595e234ca446c4ac80af743df8a32de730b72481f2a17509dae24de4fc2bc006a4cd14d15639bba1d6fa5adbea92786e1a1dbbd08f353daaee2b850c12550c99e78aa2d1ee8adcac7212576955cf955aba82318af23245c5d1ee71a69c4bfb95d352cc48215ddf2f5a874ad4c47232b36c0c7c8e2b305e4f142b3b14078526a47936b83f3a5b8368a7b44e8f6373672825a4c1f2cf39acff005dea6d14515ac00625560cd8f2aafd36f42aa9670077c9aadea1d406a17aab1fc491a6dc8fd23dcd671f039e4ffc1793346116ccf456acf3b707683c7ceaeed200bb783915e5a419c330ceeedf2abbd3ed77b6e233f3af7e115148f9ce5725cdd04e9965e2b0c8c79938ef57171731d9c400ee0703343c9711d95ba8503763b0aa1b9ba927662c739ed413936cf31a6dd93dcdd33b1666c9fad0135d05c966c11cd32ee39fc3dc23e3d7340cd63742dfde026e45fc673c8a9324eb453838ff0020c9ee4cd26f6e7d28799038ddc0c508f71e54d62a54e1db779826a14ddb67bd830b8c692d08baae41207de96548c8208f91aad98e390c7bfad1360cc58a939a6c2568a1e2695d816b38f1d3fab4a9bac7fac2ff0056956584130710a63d054d4db3864923454c6481e78a73ab46e51861877af4b149524542a54abcc734d351ed34d3a987f0d73f0c62c0a88f6a228626a7fba15f64b6a312e7d6bc695c3e33c5796e3322d32404b36692d26d981b25f9580c58ca93e75636962d2c4b2b46026323239a7f4b68835191aea71fcde13ff19f21f6ad2dd461011c60f181470c696c5b96e8cdc5982e1248d76953c638e2b4b242979009170491904551dc2059594f6ee2ac7479f6ef8c90303239af53134e2933c0e741a95af40268da3728c391507bb873866c0f955d5fc2b28cc6bf10aa491991b92415e2939153030cfb2dfa3a7d2e68e1f7a843322e3730eea7e75e477f205c3ae58704d136fab4d6f6ef005560e3055bb7d7eb55a7939f5a9a78e3276d15e3cb3869167a6c2b7d70ca490b8cfdea69b4d933b44883ea289e974b7df2079d5242994523b9f4a92ea62b338231cd77c106b4272f2b34257f4504ace8cd1ef2429c714e81027951f2e9e676692261b8f2549fe1414f6d7509f8a37e79edc5331e350f118f3bc8a9b2d2d36855c815649791dbc431f8b18e0d65e2b89f85da7f7d191457730056291bfb34529689f24127761b7174f233163de89d22d4ddcdb98911c7c9f99a162d23506018c447d7bd5f585bb59da6d7e091cd25ff005886d5d26566b0e3951c64f6ad274ed85acfa7c71dd461e39725d3f587956475390cb77b3c80c67ef5a5d2ef42e1338298152e45d99ecf07138c7b3fb00eadf66eb1c2f7fa1b33aa72f6e7961c7254fa573568dd5d959482bc10462be8bd12f11d809080bc8ef585f6abd3b6f07f9dac2354f11b13051ddbc9aa67ad1e94674a8e4f2b29e314fb01f9c7fa50d2ab07390473c513a79fce11f2adc650e9c7409ac8fe70bfd5a55eeb7cdc27f569515a123ad24658a371dd4022aceedf7b86600391ce28185008e1c7e9019fad1371c4c7e42acc6b687af488d2cd7b5e6d63fa2d550ca16734d278a76d619e0d31c1db58fc31aa4463731e2bcc1070411f3a9e3c6738af65943c663da3be6a3727db44e9b6411928d91e5560f1c06d849901c77f99a0634f3fe8d4a4116fdbceb97a178743e96455e998dd700890eec7ad4574cdbcf3c57bd057509d02e619594159372eeee4114cbbda5d994fc24d3deb44ce552a2aef47c4adf6af604643bbb1c579723785c76523345b2ed0001c55b8371b3cbe7ba69af1823cd20ecc46286999a53b98e4fca8b99314395f5c566525c2b7a06f0f00f34d284d10fb47738a8d5a324032000521f8590542b579209c36e3b4e063d39ab49ae566919c0c6ee6ab9e58548dad9e2bd49e3c0f8a870c5453b7f61f264b245452f0b781b9ab5b53b9479d67e0b88c6143826adac2e14100b0e0f3cd35b4791971c9788b6480b90db1323b7c3da8bf0a403923ec2a4b496178d4ab03c7ad4e4a63b8fdb4b6d592c94fec04aba9ce4d3a44f1a22a4f38e33534cf18cee61fb68096e4070b19dcc78005232349360638cbb248cebdaccda84a0a922363bcfa71465bca6291493c1abc9a34b1b378d941bab8f8a41fa8be9f5acfdca1df919207634885b56cfaee3dac69334fa7ddb1c6d6af7ac65693a62e433790355ba247733b2858db938cf955875d4325974cbac8a0b498190738a9f22d8d68e3d3c22556c1e45416795b800f97145db4a17787e73c50f0e3df1f6f6c9ac82a63b1b7540dab91ef238f2a54b57ff591f4a54ca466c96cd8b8880c9e051777c4ec0820e3cc52b5b78ded2364902498ed4992746325c23b47db777fbd1e3ceeeebc2ef89249b6464f14d0ec7ce8a11c4e994c11503a0438abb1cfbab414b1b8a4fe87216607e23f3a867185a96dc67233cd3ae930a3eb5adda05c6e2d802922a5894b77a615c76a9583a8c2ae2a4926993c234131c6724e3802acb48d264bf60245290a9cb9f5154abef3b3f1101bb8adf74bc3243a01925393239c13e42b31b726c1ccd25a3cf778e05548942201818a11b27827228d9e653c508c557b60552abec92af644e8a1954e70dc37c8fad18a10288e5c8641dfc8fce81999486c63bd476da9490622911258f3f85ff47ef4ec795c1d2fb25e4625344f7263db8073403452b1fc240f226af672594322c48a4646d5cd53ddac87f1b311e878a2c8e5eb44589422e9bd839b66cfe7258d07cf9a68b58893f9c67f42a2bd08814b480e01e067b9a8ee2e270eb0c7c92780a3249f4a99ccf46114d5d0f36aa3b17fb9a15a238201fdb5a7d1fa1ba8f57b2f7a8e4b78632c40f15f0dc77c8f2aa6ea1d235cd067f0b50b7dbbf84900ca49e7f09a15906bc6aada01581fd47dcd1905a5f30df08571e81c66842ab2c61b3b588c819a89259233c797dabbe47f42658a0fd45eabeb166a0c96b7288be7b323f754d1eb173d9b78feb2106aa6df5fd4ad8fe66ee64fe88738fdf56b6bd61ac8daa02c87f44b46a73f7c5676912e4e3e37ff0041b6a750d4a4096d0cd2b76e10e3f6d5bdc4d65d296a6e2e9d6eb5223e18d4e562fafcea9e4ea3d6ae22db7172628ff523c2e7f656735a9fc4daa1b2c7f17eda4cadba6771f8f0ed6b66d52edef2149e42c5a550c49ef9c546bb4bae738cf6a8b4e1fcc20f2f816a472aac334d514bc3d0ba7468f4d9d51176f6ad25aac3790b5b5c22490c830c8ff3ac1da5d05c8dc319e39ad158df18d90ab52322fb0ce77ed27a4474f5eadcd9a37b94f928bfaa73cad62ad72b7007d6bbff00555b8ea1e9ebab66199150c911f3de39ae051a94b92318c1c63d29107f91463a716c17563fce07d29579aaff00ac0fa52a650017a5a977500fc58e3e556b7b766183ddcafc4571c1a1b4eb4436914819c3b28248a212ca156deca5dbfa669d1c36b458b04dd5f84162d1ac187655e73834a75490e6360c3d0518b1c67fdda0fb549b63fd55fd95562874548b3e37d699511e518119e3bd493bef0063b7caad0471fea2feca7848fcd3f751500b1d2a33e14f90a7ee240dc1b8f955f0588ffbb5fd94ed883b20fd958e09e81ff3ebd294b263d0fd2ba64112c7a1d9aa85e1016fd958cd88c7941fb2b685d5b4ab768f18d801e7818f2a18e249368839589c1276524f1f39a0a71dfb51f3c84704714048549233cfce85e88d3d01364e6ab66f11b2aa7241cd5b32e0119a1c4786cd0293b4371e2791d167a65c34b68a920c4a831f6a65c45bce076f33e829961c4e06f54e392fda96a93a84686d9b716fc6fe9f215572f3c63054f6d10e4ff8e9acff008ad32b4c9e25d22f78c31da056abd9a5a433eb77ba84c8245b181a450dd83791ac5db7e6eee32e485ddfc6b77d0ac227d6ed146259acd8a0cf720e4e3ed5e7e19768db3d4c987e28246fba00f83a0c325cce825bf95e65466c31dc7cab1bafe8925e75c49a66b179753417a85ad5f7e046dfa3c7d78a77b2002e75bbd9272659628408d9ce4a0cf97a55af5bcf17f2cb4048e45f16176773bb251473cfd851af44e9c76729b881ad95a36521a390a9f911c52b68e3bacabe565c7c27c9be5565a8b4732dddc7e8caeeff00b4f159c134b136e56c10452be44a54d8cc7c7738ba45ac71ac4d8d9b5c7045150b151c715e59dcd95eaa2cee6de61c190fe13f5ab9b7d2232bbdefedbc3ee4ab72453be44d68f3b370f22951497976b10da5b2de4a2aa99ccf2ee3df3506a12462f6748999a3f10856f5142077dc7cbb11590926d36558712c71a4755b7b49a2b68f7210bb01071c1e285b943b73e9dab5bd31771ea7d3568dc164408c1b1c30aaad5eda35ddb4281dc014f6b627bbedb33625742793dead6c2f18900b5564e010715ed84523b9224441eac73fb852a690fb546ef46b90d272d9039e7f8571eeb9d38695d49791444f86cc644e7d79aea1a4a451b29323c8c4f97c2bfb3bd73ef694d1cdd48ed1851f028f87b76a8ea9d858e4d68c35d336f1ce78a55ede0fce0fa52a2b0cda68f69e269b01e30541a3bdd479feea0b48b958f4e8061890807145b5d60706bd4c55d559f450715156c77ba47f3fd94c36e839c9a8cde35466ecf99c51b925a01e48ff004284483f4bf6d34a2e7bfeea0def1b3511bb607b9fdb40e685bcb141f855af09406ab64bb603ff005a6c370d3ccb12e4b31dabf5a1ee2e59e08b3de80f18cd683416ce9b397c945900c7daa925d3fddf68762d27e911db3563a5dc8860920df82cd965c5129526bfa79bc9e54722ea9105d3c65ce0914048e84939e68ab95072724e79a09c0c9a4c8853d10cd2a8ce6a0376107706a69ece4b91f9b75400f3bbce85fc8acdf8ae727d173494d276558732c6b67af7cb9a9e12c541e3691c57aba2c2a3e27959bcaa58f4f7581a446db1a63700c322939d3c8924598f9706ed9517192fc77ce6b47a15e489750dddacc8b730f215ff0003f91427d0d57cb60e016c3b0ee5b038a625a18b6b47296dc3380bf3a2c3170d33b919639151a7b7ba92c2e6f2efa6b51b3b36b98c996daf4f87245cf210b101867cc567a1b8952e6e0bca25b870c8f701f7e01fc457d588e3e951c97323fc2ea2539eeea0ff001a98c323e0ac91213c118a64f5e1e7a83bd9e4b721488cac653f494f61f2af526b27cf8d63160f72991441e99b9478fde2ea2844c37a31190cbeb475bf46860cf26b76f1a8058b985ce6bcdc98e4db67adc6cf0c6a9a2925d36c253ba0692261fac770fdd41cf63e0212afe20f50c78ad75b748a491095b5b5f00f665b76c1a65df4ed9259bc897b34d81947c0c31f4c795162528bd9dc8e461945a4b6623c3e00c76a5b39e40347bdb11dce3ed43188e4e093f6aad3d9e3762eba5fa864d12ec6e5f16d643878c9c7f68574269ed354b45b9b42af191c11e55c97c06ef83fb2ba07b37ba47b3bad3e4009cef407f7d3e0ed513cd24ed035fc5b49c0155914c6371938e7ceb4dac5b0467658c607619f2aa04f0a3bb1ba3cc6c719f4ad921b176acd0e870dd5f29920036a8277370a4d734d70cafa94ef31fce6f2081f5aeb3a3dcb131c4186d0318ed553d45d1965777124914925adcc8dbbe2e63627f854d241a671bbf5c4df6a5567d57a3dde897eb6f7b1ed775debb5b208ce3fba95058e1f6b77247022824600f3af0de4878de79adb74c683a64da2da5c49671bc9220666607bd5fc7a359a0c4763128fe8a73567c94a8e9f3649b48e569ef7210238e5627c954d110e99ab5c1fcd5a4c78f35c57534b2c26156341e8057a2df69c3af6ede742f20897366ce731f4deaee034912a2fa9719a2d7a4ee9882d3205fe8e4d6f940f31cd4823c8ce050b980f9137eb30b0f47213f9d9a561db85156da7f4f5ae959bbf8cbaaf0cff00a3c649ad0cbeed0ae669a2847ab9dbfc6aaba8f51b08f43be686f609645b77f851f9c918fbf7ae8e40a2e726aca0935dd3a5c949e47cf24ac0e47ed0b8fbd3217b6ba8da7864731a960ed82a463d477045771e9548f4ce99d0ec5db6c9eeb1c6a3d582026b8df52c66cbabfaa6dfb069bc751f274cd6c72b6e87cb12ad14a357b38d77f8f23c641c3344d8c79e0edf5fe35149a9d870d234b1863c131be18f963e1ffd6ba7df13fe4060e7ff009083feb4a93db29ff3774d7fe2517f750fcb237e189ccac756b18ae104d23a47e6591972477eebe5569f96746249f164c1e4116f27ff00cd6bfdbdd9c97f6ba0dac201925ba9117278c94ad3f41f525deb305dda5dd80b49f4d68e07549bc40d9407767000fa50b6dec17862dd1cac6b5a36eda6e5f38c8516f2648ff86aa355d66d1645f75595a361f1b342e9cfdc5740e9dea99ba9fda3e9f3c9622d52ded2ee28c89779930e0124606dede75b483579efba9756d0e7b553696d042eb215c87dfdd181e0ff00877acb6828e08af0e1e757b548937cbbbc44dca114b1c7da84b6bcb791e38b748b23f0a1e32bfd9ed8cd742f65da54165ed2baa96dd40b6b42618947640cf9c0f977ab9f6c9e1dc7475b6a11b12b6d7f1383f2dc50d1a9bb09412393de4f05bb2c7216dcca4e1149e3b6462a28ae617123072a233f9c0ea54a9efe75b6f6567ff7fdb1d8e9efc0feb8aaaeadb58aff00dabddd8dc02d6f71a9dac722feb2941c574a6eda0bd453c3792cd6c2e12db519ad235c78a96eed18c1f5c76a9a2d62d16347f7891964462bb559891e671838e6bb8de6ab258f5568fa1c3142969756d3b90aa415d9b7685c7007358fe9bb0b6d2fdb56b31da2a471c963e2b22fe10cc549fa7233f7a53dfa75239f0ea78a1b558960936a6417955d473f6e28c875ab0102c26fdd9477558d9d413cf7518aec1a6eb52eafd45af68b756519b4b168d16420b2ca1d72548ed9e6b3dec8ede1b01d536f6c02c56fa9c8a883b2a8ce07d3fc2b8096352f4e7897ba3cb32c7ef7b19b95f123640df2f880ab36d15070179f5f5adc8d4a1eb6f66fa95e6a16712fe6ee06c0770464ced604f63dab29a3b99346d3d9d8966b78c924e49f8456a44d9a0a14d15e749451c8ab0d02c8da5f2dd464aaa0218fca8a2038c55f695631b58a82aafbc9dc0d3f12d924e401abbc2c9bd6546dc320ef1c7cab1f72ad24c046a5ce3c86477ae8171a45b22ee58557cc7155576af08211b00718029b2416295a01d220d41195d2da4673cafa03eb5a9d3ecee1e733deee7918f25b802a9b4ad4e74902173b476e6b63a5dec57242c98f107ad4d3f343d26ce29edcd427535a018ff561ff0051a553fb7a0bfcaab5c1cff361ff0051a548294f45ff004967f9376042f1e1822adc39271b47cf26abba2e441d37a7861cac601ab8654918948d81354cbd209fecc8d177b64c9ff0d151a42391963f334218a41fa2bfb6a347249dd935940071109fd100d0d700c513b21ec0914f528a321003f3e6a3bdbaf0ad64762aa81496ddcf14b9ea2c282b924730d56e24b9bb92495b73163c9f21f21404917bc986d80cb5c4a910fed38153dcce8f33b9201cf19e6a3b5bb4b4d4ec2e9a2f196dae926640402c14e7193c795260f47d0282e9af68fa2b52d36ee7bfd126b591160b1959e647dc19d4a150178ef9e7922b927b5f6934deb79260abb6fac14b03e65415a9f5bf6a4f7daae8d796fa75d436f633b4d3462e1712a95c2afc3c71c9e6a83da1f5743d637963730e9d359b5bc6e8c5dc3ef04e4631f3cd353af04283bda3a1df7fb04b739e3dc20eff00d74a93db21fe61d35ff88c5ff96b1fd29ed1ed34ee9c4d0b5ed2e5bcb385362345b5832672aac848ec47e2cd01d77d7cdd4d7d6060b0961d3ec27598248c37cac08cfc970063033df26bac169a3a1fb5bb986d2fba6ae6ea458e08af25dcec385fcdf19a93d94cf0dd6a1d4d2c122c913dd40cacbd88f0c556ff009473af584eb6bd313ce8caf10637111da4823b1e7cf39f3acf743ebf75d0705c5b5e6932dc35cb46c0acc8bb762ed2304fad124dad214e514f6c67b2b39f6871e47fbbbde3fb75d4adb5a92efabf59e9f923d915adb4732cc84ac877f07f67911dab8b749eb5274ff50a6aef6125c00b3a9851c02a646c8c93c7ad682dbafdacfaaf53ea07d16e3c1beb68e258fde132bb0f27e79f2c56b83bf0d8ce2d699abf65ba42e99abf5588de59365f8856495b73300bb8ee3e7cb77a97a9744ba83d95ea3a6de491cd75042f2874dc54e242eb8271ce0e2b23a47b4f8b4c5d4c0d16e59efaee4b90c274ca6f0028fa8c77a13a7bda2b5bf4c368579a5dd5f4f32c91994dc2e583e48073cf19aca68ded1fe857b227f13ae11ff5b4c63ff30a1b5d9957db46c66dadf956d580f5013bfefaace89d627e92d561bf934f96ed92d1ade48d24552ad904139f2c0ab6eb1ebc9ba82cad56cb4392ceee0b94b949e4911bf0f971cf35ad36ce5355e9d175bcff0094de9ac819f71bbcff00c9555a7e3fcb8ea67033f9313f88aaf6f6a16a91dbdf6a5d2b7aba9448c88ebb0a2eec6e0ae4e40381e558fd13adef2c7adaf7a9b51b07b992ee1318821900f08646d5c9efc0aceaff0087768ff4ebba66b936add4bd45a0cd18892c3c311c913159195d724fc8827822b3fec9a0fc9f1753d9891e4583529104921c96182724f99f5359cd0bad2e6d3ab35dd6468170f1ea5e195459d032786a01c927073f2a7f487565c6892eb3249a1cd2adfdebdd285b841b15b8da727935ab1c9ed20679231fd9d177d068c3d926a458775bb23e639ff0acf68401d1b4f1e96e8393fd1156daa7595e5c68d73a4e9dd36963e3a3c2acd3a08e20d9cb0551cf7cfd680b2863b6b1b7b70cafe146a85bd7000cd728b5a68933e584e945d849dab8c5697a7e7596d847c6e8cf6acb0087cc8a3347bd165785a461e131daf938c0f5cd331c92db25716f48d75eb1f048f23594d491977039e6bdd7bae749b16682dcb5eca9df67099faff7561f55eb4d42f722311db8f444e47dcd14f2c7e8a78fc4c8f6d68d0432785329fc23fa46afad751b5800692f618863b99315c76e351b999f325cc8ff005634e4b956c6e504f91353bc8de8f571f0d35b659fb5ed42d751d7ede486e16e15600bbd0f1de9565f596f12e14fa2d2a1a37e0476be8fb687f939a7fc1feebd4fad682de08f1f87f79a54a9ecf167fb33d30478fc3fbcd0b35b43bff07ef34a9570b1bee90e4fc2dff11ff1accf548dba44bb4b0fed1f4a54a953fd58dc5fb23944aed93c9fc55eff008d2a54a8f87b68f03b6eee69c7b0a54a88288c35137fe5a54ab90a91abe81765d4ae54310be12f19ab9d7fe2bd5cf3f00a54aacc5e1e3f23f76546c5f123f8477a8f54f85c638f86952a63f4de3fd953fa3525b13ef90f3fef17f8d2a5499fa31fa68f5c823598ed5c77f33516850472ea712baee563c824f3cd2a543f46961d56a3c38971f0ee6e2b2b81b871e74a95323e00bd353a528592df031c6dfb63b509312b3c9b78dae71f2e6952a7e3fd49b9de2361a469b692c1ba48b736dee58ff8d42d1aa938c8fb9a54a9397d20e27eec8d957d2a8baa9da2b5458d8aab7700f7a54aa667ad87f7464dfe1538e2856fc54a95259ef43c1a7b7de9e9da952ae4363e00ea1fe957e94a952a68a3ffd9');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (8603033, 'Jesús Rafael Abdala Gallegos', '', '2018-07-30 16:35:54.417-04', '', '', '', '', '', 'Caracas', '', '0424-1759614', '', 'abdalag2012@hotmail.com', 37, '', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (5419724, 'Carlos José Rodríguez Arrieche', '119246667', '1974-11-10 00:00:00-04', 'CARACAS DF', 'VENEZOLANO', 'Avenida Principal Potrerito Pueblo, edificio Rey Ríos, piso S-2-B, San Antonio de los Altos, Municipio Los Salias, Estado Bolivariano de Miranda. ', 'SAN ANTONIO DE LOS ALTOS', 'LOS SALIAS', '', '', '', '', 'carlosrodriguez-@hotmail.com', 20, 'dcd36750-a53e-481c-a911-629fec6425cd', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (11252461, 'Paula Noguera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jorgeasuarezs@hotmail.com', 10, '87c38635-0c5c-4f44-aec2-cd650c5ea3fc', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (14484087, 'César José Rodríguez Montero', '', '1979-01-17 00:00:00-04', 'Caracas', 'Venezolano', 'Av. Jose angel lamas, quinta santa cruz', 'San bernardino', 'Libertador', 'Distrito capital', '0212-9432994', '0412-2530870', '0424-2718946', 'Cesarjr3david@gmail.com', 34, '0c901edb-3ab2-4ddf-8ff5-a484920492fe', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (9745960, 'Noe Leon', 'V047627440', '1955-10-24 00:00:00-04:30', 'Vila del Rosario, Estado Zulia.', 'Venezolana', 'Urb. Hacienda Yucatán, calle 2A, asa #2A-2, carretera via Duaca.', 'Tmaca', 'Iribarren', 'Zulia', '0261-7975505', '0424-6776899', '0424-6417308', 'noeleon7777@gmail.com', 19, '4eb8b566-4187-4b99-adc1-f0d37ba4c58b', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (10213724, 'Tita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'academiaateca@gmail.com', 12, '62338006-1fbb-49cd-a00a-9825aa973e23', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (25609237, 'Adonis de Jesus Estrada Vallejo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adonis.estrada123@gmail.com', 14, 'e6d45862-4170-4070-8a80-6faa0e0761f5', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (10871207, 'Jose Gregorio de Rienzo ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'Berettacomp@hotmail.com', 8, '0417519e-50b6-411d-9c7e-9ca6dacc72cd', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (14548713, 'Jonathan Alberto Sanchez Coa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'distrito capital', '0212-8725243', '0414-2617997', '0424-1829670', 'jona_rott2@hotmail.com', 39, '199f28bd-cedb-4736-8adc-7b1854e90bea', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (13483289, 'Nicola José Nuzzo Giordano ', '', '1979-11-21 00:00:00-04', 'caracas', 'venezolana', '3ra avenida, urbanizacion el amparo, catia , caracas', 'sucre', 'libertador', '', '', '', '', 'nicolajng@hotmail.com', 35, '6c6a07cd-4c10-4708-9fbd-4c8f9d988bb0', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (3924714, 'Luis Alfredo Toro Garcés', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'ltoro39@gmail.com', 33, '96306730-6439-4da2-982f-43d3d350d572', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (14195573, 'Jesús Alberto Navas Hernandez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'jesus_navas29@Hotmail. com', 25, '66325a71-9c32-4bad-a92e-f0f3377d2b78', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (10334278, 'Jaime Ángel Urdaneta Ortiz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'jimmyclift@gmail.com', 23, '04134dbb-3d9a-4a22-a109-8e910afcab9d', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (16161966, 'Gustavo Torres González', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Zulia', '0265-9103456', '0416-8652226', '04120720165', 'gtorres159@gmail.com', 24, '3d4f3bdf-6675-4d69-a8b3-fbb8663a68bd', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (6390623, 'Adolfo Beltran Palacios Vaamonde', '', '2018-07-30 14:04:55.532-04', '', '', '', '', '', '', '', '', '', 'Beltran.27@hotmail.com', 36, '', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (11690144, 'Felix Antonio Jerez Rivera ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Distrito Capital ', '02124339494', '04141528275', '04125841175', 'rivera9x19@gmail.com', 42, '5bcd2f72-38cb-4755-88d7-73a2f92668ad', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (11690144, 'Felix Antonio Jerez Rivera ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Distrito Capital ', '02124339494', '04141528275', '04125841175', 'rivera9x19@gmail.com', 26, 'e830f441-7ade-4c64-a401-bf202fad8a65', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (10214134, 'Adonis de Jesus Estrada Vallejo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'adonis.estrada123@gmail.com', 13, '97225aa2-5a8a-43fc-bab2-5393ec97e479', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (11042128, 'Juan Vicente Cheng Ng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'jvcheng88@msn.com', 44, '9991e3dc-86d6-4e90-829d-d0d7347b6874', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (9095813, 'John Rafael Tovar', 'V097459602', '1968-02-07 00:00:00-04', 'Maracaibo', 'Venezolana', 'Calle 68 Entre Av. 4 y 8 Edif. Deydimariam Apto. 12A', 'Olegario Villalobos', 'Maracaibo', '', '', '', '', 'jrtovarc@gmail.com', 40, '382677da-3327-4930-a4da-feb5c8b155d1', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (9098569, 'Alejandro José Muñoz Núñez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Distrito Capital', '', '0412-2148807', '0414-1148807', 'amunoz@gagsgroup.com', 21, 'dc7b62e4-253d-464b-9188-ac9a86257000', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (4762744, 'Edgar Antonino Tubiñez', 'V07060115', '1963-05-09 00:00:00-04:30', 'Maracay - Aragua', 'Venezolano', 'Urb. Lomas de la Esmeralda, Manzana C3 - 1 B. casa 68', 'San Diego', 'San Diego', 'Lara', '', '0424-5963584', '', 'edantu55@yahoo.com', 17, '4a071d22-f721-4e37-a082-054a9a06898a', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (6875517, 'Pablo Armando González Martinez', '', '1968-07-05 00:00:00-04', 'Caracas', 'Venezolana', 'Av Rómulo Gallegos, El Marqués ', 'Petare', 'Sucre', '', '', '', '', 'pablo-González.3@hotmail.com', 15, 'd0ea5098-0bac-4db4-b650-9c24ec6bb626', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (4916956, 'Rafael Marco Yanez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'negroyanez@hotmail.com', 32, '4cd2e7db-2708-4a95-b9be-a7983a4e297e', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (12505439, 'Johnny José Lores González', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lara ', '02512572262', '04145249133', '', 'Daex26705@gmail.com', 18, '31149494-c522-4ef5-a925-5004f0477c4a', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (16598283, 'Jesús Alfonso Cabezas Bustacara ', 'V09489232-1', '1968-09-05 00:00:00-04', 'Caracas', 'Venezolana', 'Av. Rómulo Gallegos, El Marqués ', 'Sucre', 'Petare', '', '', '', '', 'Susej_jessua@Hotmail. Com', 30, '5d80d383-c8f0-46c1-ac13-84e19ebba889', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (16618037, 'Jonathan Borges', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', 28, '784e61e9-bfaf-4955-929f-9b5907ebebdd', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (0, '', '', '2018-08-02 05:27:17.903-04', '', '', '', '', '', '', '', '', '', '', 48, '', true, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (12241753, 'Adelis Gustavo Mujica Pernalete', 'V021530944', '1946-03-18 00:00:00-04:30', 'Caracas Distrito Capital', 'Venezolana', 'Avenida Sur 10, quinta Mi Guarida, Urbanización Los Naranjos', 'El Hatillo', 'El Hatillo', '', '', '', '', '', 38, 'ab1c5be3-86b0-4e69-a73a-6bc8cf536f6d', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (11924665, 'Luis Manuel Borges Meza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MIRANDA', '0212-7417743', '0416-9048979', '0426-8212024 ', 'luisborgesmeza@gmail.com', 22, '18e4bda8-5250-439d-8abe-aa65b0f7380a', false, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (10775028, 'Carlos Luis Bisogno Riera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'cb250r@hotmail.com', 46, '1b0cae77-c663-4ae0-91cf-3885737ebad6', true, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (13642295, 'Onofrio Gallo Tersillo', 'v136422959', '1977-01-28 00:00:00-04', 'caracas', 'Venezolano', 'av Jose Antonio Paez residencia Loreto piso 6 ap 6-c el paraiso frente al torreon', 'el paraiso', 'libertador', 'Distrito Capital ', '0212-4611103', '0414-1182573', '0424-1898183', 'onofriogt@gmail.com', 47, '79378a19-5a51-4a36-be59-717e4e9fb33d', true, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (12453841, 'Ivan Alejandro Machado Robles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', 'Imachadorobles@gmail.com', 45, '6417b49e-0a13-49c4-8a80-da8d4c11f956', true, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (0, '', '', '2018-08-02 05:27:37.634-04', '', '', '', '', '', '', '', '', '', '', 49, '', true, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (0, '', '', '2018-08-02 05:27:47.797-04', '', '', '', '', '', '', '', '', '', '', 50, '', true, '\x');
INSERT INTO public.persona (cedula, nombre, rif, fecha_nacimiento, lugar_nacimiento, nacionalidad, direccion_habitacion, parroquia, municipio, estado, telefono_cantv, telefono_personal, telefono_familiar, correo, persona_id, correo_confirmacion_id, correo_confirmado, imagen) VALUES (8720092, 'Jorge Alejandro Suárez Sarmiento', '90985694', '1963-09-06 00:00:00-04:30', 'Caracas', 'venezolano', 'Av. La Colina Res. Mirador, apto 15, Los Chaguaramos', 'San Pedro', 'Libertador', 'Zulia', '0265-6355522', '0414-6765522', '0414-6765522', 'jorgeasuarezs@gmail.com', 16, '16d5b353-7710-469d-af67-1c47603cd97e', true, '\x');


--
-- TOC entry 2237 (class 0 OID 17062)
-- Dependencies: 186
-- Data for Name: rel_modalidad_renit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('', 2, 2, 3, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('0092', 4, 2, 2, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('0092', 1, 2, 1, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E. 0092', 5, 2, 4, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('P.A. 0092', 1, 2, 5, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('T.D. 0092', 2, 2, 6, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('A.E. 0092', 3, 2, 7, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('S.V.T.P. 0092', 4, 2, 8, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('T.D 777', 4, 5, 9, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E ', 2, 5, 10, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('EV-0092', 1, 2, 11, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('OSE-0092', 2, 2, 12, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('PA-0092', 3, 2, 13, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('EV-0092', 1, 2, 14, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('EV-0092', 1, 2, 15, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('OSE-0092', 2, 2, 16, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('PA-0092', 3, 2, 17, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('TD-0092', 4, 2, 18, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('TD-0092', 4, 2, 19, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('EV-0092', 1, 2, 20, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('EV-0092', 1, 2, 21, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('P.A-888', 1, 5, 22, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('T.D-888', 2, 5, 23, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('A.E-888', 3, 5, 24, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('S.V.P.T.V-888', 4, 5, 25, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-888', 5, 5, 26, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('P.A-0092', 1, 2, 27, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('T.D-0092', 2, 2, 28, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('A.E-0092', 3, 2, 29, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('S.V.P.T.V-0092', 4, 2, 30, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-0092', 5, 2, 31, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('P.A-S.V.P.T.V 6956', 1, 11, 32, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('T.D-S.V.P.T.V 6956', 2, 11, 33, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('S.V.P.T.V-6956', 4, 11, 34, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('T.D-6956', 2, 11, 35, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('P.A-8569', 1, 16, 36, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('P.A-8569', 1, 16, 37, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('A.E-8569', 3, 16, 38, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('S.V.P.T.V-8569', 4, 16, 39, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('P.A-0115', 1, 17, 41, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('T.D-0115', 2, 17, 42, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-', 5, 15, 43, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('A.E-0115', 3, 17, 44, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-0115', 5, 17, 45, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-', 5, 15, 40, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('A.E-', 3, 15, 46, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-6956', 5, 11, 47, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('T.D-Sin carnet (devuelto a la dirección)', 2, 29, 48, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-Sin carnet (devuelto a la dirección)', 5, 29, 49, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-0144', 5, 27, 51, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-0144', 5, 27, 50, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('P.A-0144', 1, 27, 52, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('T.D-0144', 2, 27, 53, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('T.D-', 2, 32, 54, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('P.A-3094', 1, 38, 55, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-3094', 5, 38, 56, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('T.D-', 2, 40, 57, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('T.D-', 2, 40, 58, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('S.V.P.T.V-', 4, 40, 59, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-', 5, 40, 60, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('T.D-5960', 2, 40, 61, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('S.V.P.T.V-5960', 4, 40, 62, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-5960', 5, 40, 63, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('T.D-2070', 2, 41, 64, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('S.V.P.T.V-2070', 4, 41, 65, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-2070', 5, 41, 66, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('A.E-', 3, 30, 67, false);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-', 5, 30, 68, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('A.E-', 3, 30, 69, true);
INSERT INTO public.rel_modalidad_renit (codigo, modalidad_id, renit_id, rel_modalidad_renit_id, activo) VALUES ('O.S.E-', 5, 47, 70, true);


--
-- TOC entry 2238 (class 0 OID 17065)
-- Dependencies: 187
-- Data for Name: renit; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', NULL, false, 3);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-29 09:28:09.503-04', false, 8);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-30 00:00:00-04', false, 35);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (true, '888', '2018-07-27 00:00:00-04', true, 5);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-29 09:09:45.936-04', false, 6);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-29 09:10:02.452-04', false, 7);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-29 09:40:25.464-04', false, 10);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-29 10:04:30.558-04', false, 12);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-29 11:28:15.523-04', false, 13);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-29 11:58:09.051-04', false, 14);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', NULL, false, 4);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-30 14:04:55.532-04', false, 36);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-30 18:37:50.327-04', false, 39);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (true, '8569', '2018-05-27 00:00:00-04', true, 16);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-29 21:54:46.28-04', false, 22);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-30 04:32:27.194-04', false, 23);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-30 07:42:15.949-04', false, 24);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-30 08:03:19.045-04', false, 25);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-30 09:50:56.084-04', false, 28);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (true, '2070', '2018-05-01 00:00:00-04', true, 41);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-30 22:57:16.826-04', false, 44);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (true, '', '2018-07-29 21:48:18.154-04', true, 21);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '0092', '2018-05-26 00:00:00-04', true, 2);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-29 00:00:00-04', false, 15);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (true, '', '2018-07-29 00:00:00-04', true, 19);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '5439', '2018-05-27 00:00:00-04', false, 11);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '0115', '2018-07-27 00:00:00-04', false, 17);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-30 00:00:00-04', false, 31);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '5960', '2018-05-01 00:00:00-04', false, 40);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, 'NO', '2018-07-29 00:00:00-04', false, 20);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (true, '0144', '2018-05-27 00:00:00-04', true, 27);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-30 00:00:00-04', false, 30);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (true, 'Sin carnet (devuelto a la dirección)', '2018-07-30 00:00:00-04', true, 29);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '3094', '2019-05-04 00:00:00-04', false, 38);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '5813', '2018-05-27 00:00:00-04', false, 32);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (true, '', '2018-07-23 00:00:00-04', true, 1);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-30 11:53:26.205-04', false, 33);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-30 08:37:06.05-04', false, 26);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-30 00:00:00-04', false, 34);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-30 00:00:00-04', false, 43);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-31 09:56:32.19-04', false, 45);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-31 10:18:00.016-04', false, 46);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-31 00:00:00-04', false, 47);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (true, '', '2018-08-02 05:27:17.903-04', false, 48);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (true, '', '2018-08-02 05:27:37.634-04', false, 49);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (true, '', '2018-08-02 05:27:47.797-04', false, 50);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (true, '', '2018-07-30 00:00:00-04', true, 42);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (true, '', '2018-07-29 00:00:00-04', true, 18);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (true, '', '2018-07-30 00:00:00-04', true, 37);
INSERT INTO public.renit (registrado, numero_certificacion, fecha_vencimiento, realizo_curso, renit_id) VALUES (false, '', '2018-07-29 00:00:00-04', false, 9);


--
-- TOC entry 2239 (class 0 OID 17068)
-- Dependencies: 188
-- Data for Name: trabajo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 10);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 12);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', NULL, 4);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 14);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 37);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 13);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('Asociación de Tiro del Estado Lara (Asotila)', 'Tamaca', 'Iribarren', 'Tamaca', 'Lara', 'Instructor de Tiro Deportio', 'Profesor de Educación Física y Deportes', 'Licenciatura/Ingeniería', 19);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 18);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 42);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('WP Services CA', 'Calle 70 Local No 18-32 Sector Baralt', 'Chiquinquira', 'Maracaibo', 'Zulia', 'Presidente Ejecutivo', 'Zootecnista', 'Maestría', 41);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('ATECA', 'Calle Ecuador, local ATECA', '', '', 'Zulia', 'Gerente', 'Abogado', 'Especialización', 5);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 21);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 6);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 7);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('CICPC', 'División Contra Secuestro y Extorsión', '', 'El Hatillo', 'Miranda', 'Supervisor de investigaciones ', 'Investigador Penal / Abogado', 'Especialización', 29);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('Libre ejercicio ', '', '', '', '', '', 'Abogado .Instructor de Tiro .', 'Maestría', 27);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('Global Seguridad Consulotes ME, C.A.', 'Av. Fco. de Miranda', 'Chacao', 'Chacao', 'Distrito Capital', 'CEO', 'Teniente Coronel GNB - Administrador', 'Maestría', 16);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 9);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 33);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('SISTEMA INTEGRADO Protección civil - Bomberos Carabobo  y en la  Universidad de Carabobo', 'Callejon Rosarito, detras del Gimnasio Cubierto Teodoro Gubaira, sector Lomas del este.', 'Miguel Peña', 'Miguel Peña', 'Carabobo', 'Director del CENTRO DE FORMACION DEL SISTEMA INTEGRADO  (Profesor Universitario)', 'Militar (r) Abogado, ', 'Especialización', 17);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('Seguros Universitas ', 'Final avenida el Rosal, Centro Empresarial El Rosal piso 10', 'Chacao', 'Chacao', 'Miranda', 'VP de Seguridad', 'Abogado', 'Maestría', 32);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('ATOLA LMBMSWAT CA', 'SAN ANTONIO DE LOS ALTOS SECTOR LA CANDELARIA Q27', 'SAN ANTONIO DE LOS ALTOS', 'LOS SALIAS', 'MIRANDA', 'DIRECTOR GENERAL', 'INSTRUCTOR MEDICINA TACTICA / INTRUCTOR DE ESCOLTAS', 'Especialización', 20);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 36);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('CICPC ', 'Turmero', 'Santiago Mariño', 'Santiago Mariño', 'Aragua', 'Comisario Jefe', 'Licenciado', 'Maestría', 15);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('ATECA', 'Calle Ecuador, local ATECA', 'Alonso de Ojeda', 'Lagunillas', 'Zulia', 'Gerente General', 'Abogado', 'Doctorado', 2);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', 'Básica', 43);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('WP Services CA', 'Calle 70 Local No 18-32 Sector Baralt', 'Chiquinquira', 'Maracaibo', 'Zulia', 'Gerente', 'Ingeniero', 'Maestría', 40);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 23);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 46);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 8);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 44);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 31);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 26);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 22);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('CICPC', 'Central CICPC', 'La Candelaria', 'Libertador', 'Distrito Capital', 'Comisario General', 'Abogado', 'Doctorado', 38);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 45);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', 'Básica', 35);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('Zapatos.com III c.a.', 'Esquina de Gradillas a Sociedad, edificio N-6 local N-2 ', 'Catedral', 'Libertador', 'Distrito Capital', 'Gerente General', 'Comerciante', 'Bachiller', 47);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 25);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('AFORTAC VZLA 2017', 'Av. jose angel lamas, quinta santa ana', 'San bernardino', 'Libertador', 'Distrito capital', 'Director General', 'asesor de seguridad', 'Especialización', 34);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 39);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('TutoNet Inversiones C.A.', 'CAMPO TAPARITO CALLE 2 CASA 21-C', 'Manuel Manrique', '', 'Zulia', 'Presidente', 'Comerciante', 'Licenciatura/Ingeniería', 3);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 24);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('CICPC', 'Turmero', 'Santiago Mariño ', 'Santiago Mariño ', 'Aragua ', 'Comisario Jefe', 'Licenciado ', 'Maestría', 30);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 28);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('Servicio Pan Americano de Protección C.A ', 'Av Teresa de la Parra. Edificio Pan Americano. Santa Monica. ', 'Santa Rosalia', 'Libertador', 'Distrito Capital', 'Instructor de Tiro ', 'Instructor de tiro ', 'Básica', 11);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 48);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 49);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', '', 50);
INSERT INTO public.trabajo (empresa, lugar_empresa, parroquia_trabajo, municipio_trabajo, estado_trabajo, cargo, profesion, grado_instruccion, trabajo_id) VALUES ('', '', '', '', '', '', '', 'Bachiller', 1);


--
-- TOC entry 2240 (class 0 OID 17074)
-- Dependencies: 189
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Hebert', 'GPvn-04/10*2010', 'Normal', true, 41, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('yo', 'yo', 'Normal', false, 4, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('tita', 'tita', 'Normal', false, 12, false, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('paula', 'paula', 'Normal', false, 10, false, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('JAMG', 'thor.123', 'Normal', true, 29, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('wjperez', 'wjperez1234', 'Normal', true, 27, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('prueba', 'prueba', 'Normal', false, 5, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('adonis2', '22246767', 'Normal', false, 13, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('pruebaAdonis', '123', 'Normal', false, 14, false, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('jorgesuarez', '1234567890', 'Administrador', true, 16, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('', '', 'Administrador', false, 7, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('123', '123', 'Normal', false, 6, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('abdalajesus', 'ateca00*', 'Normal', true, 37, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('noeleon', 'nleon1234', 'Normal', true, 19, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('ajmunozn', 'ajmn15974', 'Normal', true, 21, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Shooter1', '311221rex', 'Normal', true, 1, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Johnnylo', 'karate559.', 'Normal', true, 18, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('felix11690', 'caracas1.024', 'Normal', true, 42, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Francisco Landaeta', 'Fels8619869', 'Normal', true, 9, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Ltoro1212', 'Bianca', 'Normal', true, 33, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('edantu', 'Alejat26', 'Normal', true, 17, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('negroyanez', 'fay4057', 'Normal', true, 32, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('carlos jose rodriguez', 'valencar01', 'Normal', true, 20, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Adolfo2707', 'familia', 'Normal', true, 36, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Shooter', '68756875', 'Normal', true, 15, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('AngelVasquez', 'barinas499', 'Normal', true, 2, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Lcasta', 'lm172839', 'Normal', true, 43, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('johntovar', 'atd20937', 'Normal', true, 40, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('jimmyclift@gmail.com', '40364036', 'Normal', true, 23, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('cbr1000', '6969', 'Normal', true, 46, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Jose Gregorio ', 'vittorio2107', 'Normal', true, 8, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('jvcheng88 ', 'Rosapacheco1', 'Normal', true, 44, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Kbernoti', 'kbernoti', 'Normal', true, 31, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('luismanuel1', 'kaizerlmbm666!', 'Normal', true, 22, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Chinocicpc', '12241753', 'Normal', true, 38, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Ivanmachado', 'victorale0402', 'Normal', true, 45, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Nicola Nuzzo', 'giordano1904', 'Normal', true, 35, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('onofriogt', 'zuri/123', 'Normal', true, 47, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('jesusnavas', 'elchino', 'Normal', true, 25, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Cesarjr3david ', 'V619.jr3', 'Normal', true, 34, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('jonathan_s', 'jocelynomaira1', 'Normal', true, 39, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Ropf120', 'Glori2012', 'Normal', true, 3, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('gtorres159', 'P1r4m1d3', 'Normal', true, 24, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Jesuscabezas', 'arcangel.360', 'Normal', true, 30, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('Borjoncombate', 'Jo05Wi07An10', 'Normal', true, 28, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('adonis', '22246767', 'Administrador', true, 11, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('felix11690', 'caracas1.024', 'Administrador', false, 26, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES (NULL, NULL, NULL, false, 48, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('', '', 'Administrador', false, 49, true, NULL);
INSERT INTO public.usuario (nombre, clave, tipo_usuario, activo, usuario_id, aceptado, fecha_creado) VALUES ('', '', 'Administrador', false, 50, true, NULL);


--
-- TOC entry 2094 (class 2606 OID 17081)
-- Name: arma_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.arma
    ADD CONSTRAINT arma_pkey PRIMARY KEY (arma_id);


--
-- TOC entry 2096 (class 2606 OID 17083)
-- Name: constantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.constantes
    ADD CONSTRAINT constantes_pkey PRIMARY KEY (constantes_id);


--
-- TOC entry 2098 (class 2606 OID 17085)
-- Name: feveti_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feveti
    ADD CONSTRAINT feveti_pkey PRIMARY KEY (feveti_id);


--
-- TOC entry 2100 (class 2606 OID 17087)
-- Name: modalidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.modalidad
    ADD CONSTRAINT modalidad_pkey PRIMARY KEY (modalidad_id);


--
-- TOC entry 2102 (class 2606 OID 17089)
-- Name: persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (persona_id);


--
-- TOC entry 2104 (class 2606 OID 17091)
-- Name: rel_modalidad_renit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rel_modalidad_renit
    ADD CONSTRAINT rel_modalidad_renit_pkey PRIMARY KEY (rel_modalidad_renit_id);


--
-- TOC entry 2106 (class 2606 OID 17093)
-- Name: renit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.renit
    ADD CONSTRAINT renit_pkey PRIMARY KEY (renit_id);


--
-- TOC entry 2108 (class 2606 OID 17095)
-- Name: trabajo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trabajo
    ADD CONSTRAINT trabajo_pkey PRIMARY KEY (trabajo_id);


--
-- TOC entry 2110 (class 2606 OID 17097)
-- Name: usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (usuario_id);


--
-- TOC entry 2111 (class 2606 OID 17098)
-- Name: arma_arma_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.arma
    ADD CONSTRAINT arma_arma_id_fkey FOREIGN KEY (arma_id) REFERENCES public.persona(persona_id);


--
-- TOC entry 2112 (class 2606 OID 17103)
-- Name: feveti_feveti_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feveti
    ADD CONSTRAINT feveti_feveti_id_fkey FOREIGN KEY (feveti_id) REFERENCES public.persona(persona_id);


--
-- TOC entry 2113 (class 2606 OID 17108)
-- Name: rel_modalidad_renit_modalidad_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rel_modalidad_renit
    ADD CONSTRAINT rel_modalidad_renit_modalidad_id_fkey FOREIGN KEY (modalidad_id) REFERENCES public.modalidad(modalidad_id);


--
-- TOC entry 2114 (class 2606 OID 17113)
-- Name: rel_modalidad_renit_renit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rel_modalidad_renit
    ADD CONSTRAINT rel_modalidad_renit_renit_id_fkey FOREIGN KEY (renit_id) REFERENCES public.renit(renit_id);


--
-- TOC entry 2115 (class 2606 OID 17118)
-- Name: renit_renit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.renit
    ADD CONSTRAINT renit_renit_id_fkey FOREIGN KEY (renit_id) REFERENCES public.persona(persona_id);


--
-- TOC entry 2116 (class 2606 OID 17123)
-- Name: trabajo_trabajo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trabajo
    ADD CONSTRAINT trabajo_trabajo_id_fkey FOREIGN KEY (trabajo_id) REFERENCES public.persona(persona_id);


--
-- TOC entry 2117 (class 2606 OID 17128)
-- Name: usuario_usuario_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.persona(persona_id);


--
-- TOC entry 2248 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-03-04 03:12:14 -04

--
-- PostgreSQL database dump complete
--

