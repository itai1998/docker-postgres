--
-- PostgreSQL database dump
--

\restrict NdRDKKKw8GD1DSXye7ayJfp76i7Huivi4FLkgdCEcdx6atq8Ri0ADJxE2wUAm93

-- Dumped from database version 16.16 (Debian 16.16-1.pgdg13+1)
-- Dumped by pg_dump version 16.16 (Debian 16.16-1.pgdg13+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: tag; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tag (
    tag_id text NOT NULL,
    name text NOT NULL,
    color text NOT NULL,
    is_common boolean NOT NULL
);


--
-- Name: tag_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tag_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tag_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tag_tag_id_seq OWNED BY public.tag.tag_id;


--
-- Name: tag tag_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tag ALTER COLUMN tag_id SET DEFAULT (nextval('public.tag_tag_id_seq'::regclass))::text;


--
-- Data for Name: tag; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.tag (tag_id, name, color, is_common) FROM stdin;
1	urgent	red	t
2	Fronted	yellow	t
\.


--
-- Name: tag_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.tag_tag_id_seq', 2, true);


--
-- Name: tag tag_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY (tag_id);


--
-- PostgreSQL database dump complete
--

\unrestrict NdRDKKKw8GD1DSXye7ayJfp76i7Huivi4FLkgdCEcdx6atq8Ri0ADJxE2wUAm93

