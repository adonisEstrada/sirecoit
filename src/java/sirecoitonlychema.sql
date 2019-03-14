--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.14
-- Dumped by pg_dump version 9.5.14

-- Started on 2019-03-05 15:19:05 -04

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
-- TOC entry 2240 (class 0 OID 0)
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
-- TOC entry 2239 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-03-05 15:19:05 -04

--
-- PostgreSQL database dump complete
--

