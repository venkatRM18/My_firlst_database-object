--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(255),
    bh_id character varying(5) NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    radius numeric(18,4),
    distance integer,
    g_code character varying(5)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    radius numeric(8,4),
    color character varying(20),
    p_code character varying(5)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    radius numeric(8,4),
    type_planet character varying(30),
    satellites_there boolean,
    no_of_satellites integer,
    p_code character varying(5),
    info text,
    s_code character varying(5)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    radius numeric(8,4),
    planets_there boolean,
    s_code character varying(5),
    g_code character varying(5)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'bh1', 'bh11');
INSERT INTO public.blackhole VALUES (2, 'bh2', 'bh22');
INSERT INTO public.blackhole VALUES (3, 'bh3', 'bh33');
INSERT INTO public.blackhole VALUES (4, 'bh4', 'bh44');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'G1', 58948.4932, 342, 'G11');
INSERT INTO public.galaxy VALUES (2, 'G2', 432913.4922, 624, 'G22');
INSERT INTO public.galaxy VALUES (3, 'G3', 77934.0234, 164, 'G33');
INSERT INTO public.galaxy VALUES (4, 'G4', 8392.8740, 593, 'G44');
INSERT INTO public.galaxy VALUES (5, 'G5', 332987.7542, 528, 'G55');
INSERT INTO public.galaxy VALUES (6, 'G6', 1985.0390, 932, 'G66');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm2', 5791.1424, 'red', 'p22');
INSERT INTO public.moon VALUES (2, 'm3', 5791.2400, 'gray', 'p111');
INSERT INTO public.moon VALUES (3, 'm1', 5791.1240, 'pink', 'p99');
INSERT INTO public.moon VALUES (4, 'm4', 5791.2240, 'red', 'p11');
INSERT INTO public.moon VALUES (5, 'm5', 5741.9240, 'yellow', 'p44');
INSERT INTO public.moon VALUES (6, 'm6', 5791.2400, 'pink', 'p11');
INSERT INTO public.moon VALUES (7, 'm7', 5771.9240, 'red', 'p66');
INSERT INTO public.moon VALUES (8, 'm8', 5791.2400, 'gray', 'p11');
INSERT INTO public.moon VALUES (9, 'm9', 5761.9240, 'yellow', 'p44');
INSERT INTO public.moon VALUES (10, 'm10', 571.9240, 'pink', 'p11');
INSERT INTO public.moon VALUES (11, 'm11', 571.9924, 'brown', 'p333');
INSERT INTO public.moon VALUES (12, 'm12', 571.9424, 'gray', 'p11');
INSERT INTO public.moon VALUES (13, 'm13', 571.9240, 'pink', 'p44');
INSERT INTO public.moon VALUES (14, 'm14', 571.9324, 'yellow', 'p88');
INSERT INTO public.moon VALUES (15, 'm15', 571.9824, 'brown', 'p55');
INSERT INTO public.moon VALUES (16, 'm16', 571.9240, 'gray', 'p22');
INSERT INTO public.moon VALUES (17, 'm17', 571.7924, 'green', 'p88');
INSERT INTO public.moon VALUES (18, 'm18', 571.9240, 'pink', 'p11');
INSERT INTO public.moon VALUES (19, 'm19', 571.4924, 'yellow', 'p44');
INSERT INTO public.moon VALUES (20, 'm20', 571.9240, 'gray', 'p88');
INSERT INTO public.moon VALUES (21, 'm21', 531.9240, 'pink', 'p22');
INSERT INTO public.moon VALUES (22, 'm22', 571.6924, 'gray', 'p666');
INSERT INTO public.moon VALUES (23, 'm23', 571.9824, 'yellow', 'p00');
INSERT INTO public.moon VALUES (24, 'm24', 571.5924, 'green', 'p444');
INSERT INTO public.moon VALUES (25, 'm25', 571.1924, 'orange', 'p55');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 865.7300, 'gas', true, 10, 'p11', 'it is gas type planet', 's33');
INSERT INTO public.planet VALUES (2, 'p2', 854.7300, 'terrestrial', true, 1, 'p22', 'it is terrestrial type planet', 's55');
INSERT INTO public.planet VALUES (3, 'p3', 857.3000, 'ice', false, 4, 'p33', 'it is ice type planet', 's88');
INSERT INTO public.planet VALUES (4, 'p4', 853.7300, 'gas', true, 9, 'p44', 'it is gas type planet', 's66');
INSERT INTO public.planet VALUES (5, 'p5', 875.7300, 'terrestrial', false, 10, 'p55', 'it is terrestrial type planet', 's33');
INSERT INTO public.planet VALUES (6, 'p6', 857.3000, 'ice', true, 13, 'p66', 'it is ice type planet', 's77');
INSERT INTO public.planet VALUES (7, 'p7', 851.7300, 'gas', true, 1, 'p77', 'it is gas type planet', 's22');
INSERT INTO public.planet VALUES (8, 'p8', 857.3300, 'terrestrial', false, 10, 'p88', 'it is terrestrial type planet', 's44');
INSERT INTO public.planet VALUES (9, 'p9', 858.7300, 'ice', true, 15, 'p99', 'it is ice type planet', 's33');
INSERT INTO public.planet VALUES (10, 'p10', 85.9730, 'terrestrial', true, 10, 'p00', 'it is terrestrial type planet', 's55');
INSERT INTO public.planet VALUES (11, 'p11', 85.6730, 'gas', false, 2, 'p111', 'it is gas type planet', 's22');
INSERT INTO public.planet VALUES (12, 'p12', 85.7300, 'terrestrial', true, 0, 'p222', 'it is terrestrial type planet', 's33');
INSERT INTO public.planet VALUES (13, 'p13', 84.5730, 'ice', false, 0, 'p333', 'it is ice type planet', 's55');
INSERT INTO public.planet VALUES (14, 'p14', 85.3730, 'gas', true, 1, 'p444', 'it is gas type planet', 's11');
INSERT INTO public.planet VALUES (15, 'p15', 85.7300, 'terrestrial', true, 1, 'p555', 'it is terrestrial type planet', 's77');
INSERT INTO public.planet VALUES (16, 'p16', 85.7653, 'gas', true, 4, 'p666', 'it is gas type planet', 's55');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', 8534.0000, true, 's11', 'G22');
INSERT INTO public.star VALUES (2, 's2', 4382.0000, true, 's22', 'G33');
INSERT INTO public.star VALUES (3, 's3', 2984.0000, false, 's33', 'G44');
INSERT INTO public.star VALUES (4, 's4', 3928.5000, true, 's44', 'G66');
INSERT INTO public.star VALUES (5, 's5', 6453.6540, true, 's55', 'G11');
INSERT INTO public.star VALUES (6, 's6', 7632.0000, true, 's66', 'G55');
INSERT INTO public.star VALUES (7, 's7', 5823.0000, false, 's77', 'G11');
INSERT INTO public.star VALUES (8, 's8', 1984.0000, true, 's88', 'G33');


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_g_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_g_code_key UNIQUE (g_code);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: planet planet_p_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_p_code_key UNIQUE (p_code);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_s_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_s_code_key UNIQUE (s_code);


--
-- Name: moon moon_p_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_p_code_fkey FOREIGN KEY (p_code) REFERENCES public.planet(p_code);


--
-- Name: planet planet_s_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_s_code_fkey FOREIGN KEY (s_code) REFERENCES public.star(s_code);


--
-- Name: star star_g_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_g_code_fkey FOREIGN KEY (g_code) REFERENCES public.galaxy(g_code);


--
-- PostgreSQL database dump complete
--

