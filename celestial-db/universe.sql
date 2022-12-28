--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6 (Homebrew)
-- Dumped by pg_dump version 14.6 (Homebrew)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    weight integer NOT NULL,
    temp integer,
    color text,
    sun_distance numeric,
    has_zodiac boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    weight integer NOT NULL,
    temp integer,
    color text,
    sun_distance numeric,
    has_zodiac boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    weight integer NOT NULL,
    temp integer,
    color text,
    sun_distance numeric,
    has_zodiac boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    weight integer NOT NULL,
    temp integer,
    color text,
    sun_distance numeric,
    has_zodiac boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: supernova; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.supernova (
    supernova_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.supernova OWNER TO freecodecamp;

--
-- Name: supernova_supernova_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.supernova_supernova_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supernova_supernova_id_seq OWNER TO freecodecamp;

--
-- Name: supernova_supernova_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.supernova_supernova_id_seq OWNED BY public.supernova.supernova_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: supernova supernova_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova ALTER COLUMN supernova_id SET DEFAULT nextval('public.supernova_supernova_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Funaria americana Lindb.', 25, 13, 'Yellow', 100, true);
INSERT INTO public.galaxy VALUES (3, 'Tetraplasandra gymnocarpa (Hillebr.) Sherff', 99, 92, 'Yellow', 1, false);
INSERT INTO public.galaxy VALUES (4, 'Crataegus ×rubrocarnea Sarg. (pro sp.)', 70, 3, 'Teal', 29, true);
INSERT INTO public.galaxy VALUES (5, 'Anacardium L.', 35, 86, 'Pink', 58, false);
INSERT INTO public.galaxy VALUES (6, 'Potentilla furcata A.E. Porsild', 78, 13, 'Blue', 36, true);
INSERT INTO public.galaxy VALUES (7, 'Pseudorontium (A. Gray) Rothm.', 33, 18, 'Orange', 100, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (7, 'Sphaeralcea procera Ced. Porter', 60, 74, 'Orange', 80, true, 2);
INSERT INTO public.moon VALUES (8, 'Leucaena leucocephala (Lam.) de Wit ssp. glabrata (Rose) S. Zárate', 83, 45, 'Pink', 38, false, 3);
INSERT INTO public.moon VALUES (9, 'Draba asprella Greene var. asprella', 21, 46, 'Mauv', 56, true, 4);
INSERT INTO public.moon VALUES (10, 'Cyclanthera Schrad.', 38, 70, 'Blue', 9, false, 5);
INSERT INTO public.moon VALUES (1, 'Arctostaphylos hookeri G. Don ssp. hearstiorum (Hoover & J.B. Roof) P.V. Wells', 10, 2, 'Purple', 51, false, 3);
INSERT INTO public.moon VALUES (2, 'Arthonia perminuta Willey', 79, 18, 'Indigo', 1, true, 3);
INSERT INTO public.moon VALUES (3, 'Trifolium ambiguum M. Bieb.', 32, 72, 'Mauv', 41, false, 3);
INSERT INTO public.moon VALUES (4, 'Cardamine oligosperma Nutt.', 100, 90, 'Khaki', 36, true, 3);
INSERT INTO public.moon VALUES (5, 'Aspicilia rosulata Körb.', 3, 19, 'Crimson', 88, true, 3);
INSERT INTO public.moon VALUES (6, 'Origanum majorana L.', 62, 74, 'Indigo', 36, true, 3);
INSERT INTO public.moon VALUES (21, 'Triglochin gaspensis Lieth & D. Löve', 80, 54, NULL, 13, false, 1);
INSERT INTO public.moon VALUES (22, 'Kalanchoe pinnata (Lam.) Pers.', 24, 51, NULL, 11, false, 2);
INSERT INTO public.moon VALUES (23, 'Oenothera clelandii W. Dietr., P.H. Raven & W.L. Wagner', 95, 31, NULL, 46, true, 3);
INSERT INTO public.moon VALUES (24, 'Olearia cheesmanii Cockayne & Allan', 57, 40, NULL, 38, false, 4);
INSERT INTO public.moon VALUES (25, 'Lichina confinis (O.F. Müll.) C. Agardh', 83, 20, NULL, 3, true, 5);
INSERT INTO public.moon VALUES (26, 'Thelidium velutinum (Bernh.) Körb.', 20, 63, NULL, 17, true, 6);
INSERT INTO public.moon VALUES (27, 'Tricharia vezdae W.R. Buck', 35, 15, NULL, 64, false, 7);
INSERT INTO public.moon VALUES (28, 'Sphaeralcea digitata (Greene) Rydb.', 58, 98, NULL, 73, false, 8);
INSERT INTO public.moon VALUES (29, 'Xanthoria elegans (Link) Th. Fr. var. splendens (Darbish.) M.S. Christ. ex Poelt', 66, 92, NULL, 26, true, 9);
INSERT INTO public.moon VALUES (30, 'Thymophylla setifolia Lag. var. greggii (A. Gray) Strother', 86, 98, NULL, 5, false, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Dodecatheon clevelandii Greene ssp. patulum (Greene) H.J. Thomp.', 17, 13, 'Pink', 17, false, 7);
INSERT INTO public.planet VALUES (2, 'Erigeron oreophilus Greenm.', 69, 97, 'Red', 31, false, 6);
INSERT INTO public.planet VALUES (3, 'Calycanthus floridus L.', 62, 50, 'Blue', 97, true, 5);
INSERT INTO public.planet VALUES (4, 'Multiclavula vernalis (Schwein.) R. Petersen', 88, 80, 'Green', 22, true, 4);
INSERT INTO public.planet VALUES (5, 'Cryptantha propria (A. Nelson & J.F. Macbr.) Payson', 86, 94, 'Fuscia', 26, true, 3);
INSERT INTO public.planet VALUES (6, 'Brodiaea filifolia S. Watson', 75, 10, NULL, 91, true, 1);
INSERT INTO public.planet VALUES (7, 'Eleusine Gaertn.', 99, 55, NULL, 98, true, 2);
INSERT INTO public.planet VALUES (8, 'Corispermum americanum (Nutt.) Nutt. var. americanum', 80, 6, NULL, 51, false, 3);
INSERT INTO public.planet VALUES (9, 'Phegopteris Fée', 86, 84, NULL, 16, false, 4);
INSERT INTO public.planet VALUES (10, 'Diplazium meyenianum C. Presl', 54, 16, NULL, 94, false, 5);
INSERT INTO public.planet VALUES (11, 'Narcissus ×medioluteus Mill. (pro sp.)', 61, 59, NULL, 5, false, 6);
INSERT INTO public.planet VALUES (12, 'Juncus subcaudatus (Engelm.) Coville & S.F. Blake', 34, 50, NULL, 62, true, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Gilia achilleifolia Benth. ssp. multicaulis (Benth.) V.E. Grant & A.D. Grant', 4, 84, 'Puce', 88, true, 7);
INSERT INTO public.star VALUES (2, 'Phyllanthus pentaphyllus C. Wright ex Griseb. ssp. polycladus (Urb.) G.L. Webster', 18, 98, 'Blue', 83, false, 6);
INSERT INTO public.star VALUES (3, 'Antrophyum lineatum (Sw.) Kaulf.', 30, 59, 'Khaki', 24, false, 5);
INSERT INTO public.star VALUES (4, 'Chamaesyce ocellata (Durand & Hilg.) Millsp. ssp. ocellata', 18, 49, 'Green', 7, false, 3);
INSERT INTO public.star VALUES (5, 'Falcataria (I.C. Nielsen) Barneby & Grimes', 45, 72, 'Pink', 52, false, 2);
INSERT INTO public.star VALUES (6, 'Verbena perennis Wooton', 74, 62, NULL, 23, false, 2);
INSERT INTO public.star VALUES (7, 'Panicum coloratum L.', 72, 73, NULL, 58, false, 7);


--
-- Data for Name: supernova; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.supernova VALUES (1, 'cassiopeoia', NULL);
INSERT INTO public.supernova VALUES (2, 'sagittarius', NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 30, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: supernova_supernova_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.supernova_supernova_id_seq', 2, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT id PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: supernova supernova_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova
    ADD CONSTRAINT supernova_name_key UNIQUE (name);


--
-- Name: supernova supernova_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova
    ADD CONSTRAINT supernova_pkey PRIMARY KEY (supernova_id);


--
-- Name: star galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: supernova galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova
    ADD CONSTRAINT galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

