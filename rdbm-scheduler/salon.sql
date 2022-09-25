--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE salon;
--
-- Name: salon; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE salon WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE salon OWNER TO freecodecamp;

\connect salon

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
-- Name: appointments; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.appointments (
    appointment_id integer NOT NULL,
    customer_id integer,
    service_id integer,
    "time" character varying
);


ALTER TABLE public.appointments OWNER TO freecodecamp;

--
-- Name: appointments_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.appointments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.appointments_id_seq OWNER TO freecodecamp;

--
-- Name: appointments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.appointments_id_seq OWNED BY public.appointments.appointment_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    phone character varying,
    name character varying,
    customer_id integer NOT NULL
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.services (
    service_id integer NOT NULL,
    name character varying
);


ALTER TABLE public.services OWNER TO freecodecamp;

--
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.services_id_seq OWNER TO freecodecamp;

--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.services_id_seq OWNED BY public.services.service_id;


--
-- Name: appointments appointment_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments ALTER COLUMN appointment_id SET DEFAULT nextval('public.appointments_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: services service_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services ALTER COLUMN service_id SET DEFAULT nextval('public.services_id_seq'::regclass);


--
-- Data for Name: appointments; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.appointments VALUES (1, 1, 1, '12');
INSERT INTO public.appointments VALUES (2, 1, 1, '1');
INSERT INTO public.appointments VALUES (3, 5, 2, '1');
INSERT INTO public.appointments VALUES (12, 50, 1, '1');
INSERT INTO public.appointments VALUES (13, 52, 1, '12');
INSERT INTO public.appointments VALUES (14, 53, 1, '12');
INSERT INTO public.appointments VALUES (15, 54, 1, '23398239048');
INSERT INTO public.appointments VALUES (16, 1, 1, '3');
INSERT INTO public.appointments VALUES (17, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (18, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (19, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (20, 56, 1, '555-5555');
INSERT INTO public.appointments VALUES (21, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (22, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (23, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (24, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (25, 56, 1, '555-5555');
INSERT INTO public.appointments VALUES (26, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (27, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (28, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (29, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (30, 56, 1, '555-5555');
INSERT INTO public.appointments VALUES (31, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (32, 1, 1, '12');
INSERT INTO public.appointments VALUES (33, 57, 1, '');
INSERT INTO public.appointments VALUES (34, 1, 1, '12');
INSERT INTO public.appointments VALUES (35, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (36, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (37, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (38, 56, 1, '555-5555');
INSERT INTO public.appointments VALUES (39, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (40, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (41, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (42, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (43, 56, 1, '555-5555');
INSERT INTO public.appointments VALUES (44, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (45, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (46, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (47, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (48, 56, 1, '555-5555');
INSERT INTO public.appointments VALUES (49, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (50, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (51, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (52, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (53, 56, 1, '555-5555');
INSERT INTO public.appointments VALUES (54, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (55, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (56, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (57, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (58, 56, 1, '555-5555');
INSERT INTO public.appointments VALUES (59, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (60, 78, 1, '123346457567');
INSERT INTO public.appointments VALUES (61, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (62, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (63, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (64, 56, 1, '555-5555');
INSERT INTO public.appointments VALUES (65, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (66, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (67, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (68, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (69, 56, 1, '555-5555');
INSERT INTO public.appointments VALUES (70, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (71, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (72, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (73, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (74, 56, 1, '555-5555');
INSERT INTO public.appointments VALUES (75, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (76, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (77, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (78, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (79, 56, 1, '555-5555');
INSERT INTO public.appointments VALUES (80, 55, 1, '555-5555');
INSERT INTO public.appointments VALUES (81, 7, 1, '');
INSERT INTO public.appointments VALUES (82, 1, 1, '12');
INSERT INTO public.appointments VALUES (99, 1, 1, '12');
INSERT INTO public.appointments VALUES (100, 108, 1, '12');
INSERT INTO public.appointments VALUES (106, 1, 1, '12');
INSERT INTO public.appointments VALUES (107, 113, 1, '12');
INSERT INTO public.appointments VALUES (108, 114, 1, '34');


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.customers VALUES ('3333333333', 'cb', 1);

INSERT INTO public.customers VALUES ('33333333333', 'cb', 12);
INSERT INTO public.customers VALUES ('123123123', 'cb', 45);



--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.services VALUES (1, 'eyebrow');
INSERT INTO public.services VALUES (2, 'wax');
INSERT INTO public.services VALUES (3, 'makeup');


--
-- Name: appointments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.appointments_id_seq', 118, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 122, true);


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.services_id_seq', 3, true);


--
-- Name: appointments appointments_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT appointments_pkey PRIMARY KEY (appointment_id);


--
-- Name: customers customers_phone_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_phone_key UNIQUE (phone);


--
-- Name: customers pk_customer_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT pk_customer_id PRIMARY KEY (customer_id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (service_id);


--
-- Name: appointments customer_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT customer_id FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: appointments service_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.appointments
    ADD CONSTRAINT service_id FOREIGN KEY (service_id) REFERENCES public.services(service_id);


--
-- PostgreSQL database dump complete
--

