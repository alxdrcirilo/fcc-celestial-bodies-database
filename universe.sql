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
-- Name: cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cluster (
    name character varying(60) NOT NULL,
    cluster_id integer NOT NULL,
    description text
);


ALTER TABLE public.cluster OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cluster_cluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cluster_cluster_id_seq OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cluster_cluster_id_seq OWNED BY public.cluster.cluster_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    age_in_moy integer,
    type character varying(60)
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
    name character varying(60) NOT NULL,
    gravity integer,
    diameter integer,
    has_atmosphere boolean,
    planet_id integer
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
    name character varying(60) NOT NULL,
    number integer,
    number_of_moons integer,
    gravity numeric(4,2),
    description text,
    is_terrestrial boolean,
    is_gas_giant boolean,
    star_id integer
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
    name character varying(60) NOT NULL,
    color character varying(60),
    in_solar_system boolean,
    in_milky_way boolean,
    galaxy_id integer
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
-- Name: cluster cluster_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster ALTER COLUMN cluster_id SET DEFAULT nextval('public.cluster_cluster_id_seq'::regclass);


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
-- Data for Name: cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cluster VALUES ('Cluster1', 1, 'NA');
INSERT INTO public.cluster VALUES ('Cluster2', 2, 'NA');
INSERT INTO public.cluster VALUES ('Cluster3', 3, 'NA');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 2, 3474, false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 0, 22, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 0, 13, false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 2, 3643, true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 1, 3122, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1, 5268, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 1, 4800, true, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 1, 5150, true, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 0, 504, true, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 0, 396, false, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 1, 2707, true, 8);
INSERT INTO public.moon VALUES (12, 'Charon', 0, 1212, false, 9);
INSERT INTO public.moon VALUES (13, 'Rhea', 0, 1528, false, 6);
INSERT INTO public.moon VALUES (14, 'Dione', 0, 1126, false, 6);
INSERT INTO public.moon VALUES (15, 'Tethys', 0, 1062, false, 6);
INSERT INTO public.moon VALUES (16, 'Hyperion', 0, 270, false, 6);
INSERT INTO public.moon VALUES (17, 'Phoebe', 0, 213, false, 6);
INSERT INTO public.moon VALUES (18, 'Miranda', 0, 472, false, 8);
INSERT INTO public.moon VALUES (19, 'Ariel', 0, 1158, false, 7);
INSERT INTO public.moon VALUES (20, 'Umbriel', 0, 1169, false, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 0, 3.70, 'Innermost planet in the solar system', true, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 0, 8.87, 'Thick atmosphere', true, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 3, 1, 9.81, 'Hme', true, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4, 2, 3.71, 'Red planet', true, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, 79, 24.79, 'Largest planet in the solar system', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, 82, 10.44, 'Prominent rings', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 7, 27, 8.69, 'Tilted', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 8, 14, 11.15, 'Blue planet', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 9, 5, 0.62, 'Not considered a planet anymore', true, false, 1);
INSERT INTO public.planet VALUES (11, 'Andro-A', 1, 2, 8.90, 'Rocky with two moons', true, false, 2);
INSERT INTO public.planet VALUES (12, 'Andro-B', 2, 0, 6.50, 'Gas giant with two moons', false, true, 2);
INSERT INTO public.planet VALUES (13, 'Andro-C', 3, 5, 9.20, 'Terrestrial planet with five moons', true, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Yellow', true, true, 1);
INSERT INTO public.star VALUES (2, 'Andro-Sun', 'Blue', false, false, 2);
INSERT INTO public.star VALUES (3, 'Fictional_1', 'Fict', false, false, 3);
INSERT INTO public.star VALUES (4, 'Fictional_2', 'Fict', false, false, 3);
INSERT INTO public.star VALUES (5, 'Fictional_3', 'Fict', false, false, 3);
INSERT INTO public.star VALUES (6, 'Fictional_4', 'Fict', false, false, 3);


--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cluster_cluster_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cluster cluster_cluster_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_cluster_id_key UNIQUE (cluster_id);


--
-- Name: cluster cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_pkey PRIMARY KEY (cluster_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

