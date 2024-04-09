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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    name character varying(30) NOT NULL,
    comet_id integer NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth numeric(6,1),
    rating integer
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth numeric(6,1),
    rating integer
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth numeric(6,1),
    rating integer
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth numeric(6,1),
    rating integer
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth numeric(6,1),
    rating integer
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES ('D938HGSam', 1, NULL, true, 43233.1, 82);
INSERT INTO public.comet VALUES ('736aAm', 2, NULL, false, 12346.8, 92);
INSERT INTO public.comet VALUES ('SNOOPam', 3, NULL, true, 34875.9, 385);
INSERT INTO public.comet VALUES ('pluto99am', 4, NULL, false, 99.8, 103);
INSERT INTO public.comet VALUES ('h33am', 5, NULL, true, 866.3, 7700);
INSERT INTO public.comet VALUES ('miam', 6, NULL, true, 700.3, 849);
INSERT INTO public.comet VALUES ('n90am', 7, NULL, false, 5467.2, 33);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy 3', 1, '3rd one', true, NULL, 1);
INSERT INTO public.galaxy VALUES ('check', 2, NULL, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES ('alpha', 5, NULL, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES ('bravo', 6, NULL, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES ('charlie', 7, NULL, NULL, NULL, 6);
INSERT INTO public.galaxy VALUES ('d342', 8, NULL, false, NULL, 7);
INSERT INTO public.galaxy VALUES ('D938HGS', 9, NULL, true, NULL, 8);
INSERT INTO public.galaxy VALUES ('736b', 10, NULL, false, NULL, 9);
INSERT INTO public.galaxy VALUES ('SNOOPY', 11, NULL, true, NULL, 99);
INSERT INTO public.galaxy VALUES ('mars bar', 12, NULL, false, NULL, 10);
INSERT INTO public.galaxy VALUES ('hershey', 13, NULL, true, NULL, 77);
INSERT INTO public.galaxy VALUES ('mochi', 14, NULL, true, NULL, 89);
INSERT INTO public.galaxy VALUES ('neko1977', 15, NULL, false, NULL, 274);
INSERT INTO public.galaxy VALUES ('D938HGS', 17, NULL, true, NULL, 82);
INSERT INTO public.galaxy VALUES ('736a', 18, NULL, false, NULL, 92);
INSERT INTO public.galaxy VALUES ('SNOOP', 19, NULL, true, NULL, 385);
INSERT INTO public.galaxy VALUES ('pluto99', 20, NULL, false, NULL, 103);
INSERT INTO public.galaxy VALUES ('h33', 21, NULL, true, NULL, 7700);
INSERT INTO public.galaxy VALUES ('mi', 22, NULL, true, NULL, 849);
INSERT INTO public.galaxy VALUES ('n90', 23, NULL, false, NULL, 33);
INSERT INTO public.galaxy VALUES ('D938HGSba', 24, NULL, false, NULL, 682);
INSERT INTO public.galaxy VALUES ('736aA', 25, NULL, false, NULL, 6992);
INSERT INTO public.galaxy VALUES ('SNOOPa', 26, NULL, true, NULL, 8385);
INSERT INTO public.galaxy VALUES ('pluto99a', 27, NULL, false, NULL, 1053);
INSERT INTO public.galaxy VALUES ('h33a', 28, NULL, true, NULL, 74700);
INSERT INTO public.galaxy VALUES ('mia', 29, NULL, true, NULL, 8439);
INSERT INTO public.galaxy VALUES ('n90a', 30, NULL, false, NULL, 373);
INSERT INTO public.galaxy VALUES ('D93856HGSba', 36, NULL, false, NULL, 6382);
INSERT INTO public.galaxy VALUES ('7365aA', 37, NULL, false, NULL, 69092);
INSERT INTO public.galaxy VALUES ('SNO8OPa', 38, NULL, true, NULL, 83885);
INSERT INTO public.galaxy VALUES ('plut7o99a', 39, NULL, false, NULL, 10753);
INSERT INTO public.galaxy VALUES ('h303a', 40, NULL, true, NULL, 99074700);
INSERT INTO public.galaxy VALUES ('mia', 41, NULL, true, NULL, 84309);
INSERT INTO public.galaxy VALUES ('n90a', 42, NULL, false, NULL, 37300);
INSERT INTO public.galaxy VALUES ('D938sfd56HGSba', 43, NULL, false, NULL, 633382);
INSERT INTO public.galaxy VALUES ('7365s33dfaA', 44, NULL, false, NULL, 3569092);
INSERT INTO public.galaxy VALUES ('SNO8sdfOPa', 45, NULL, true, NULL, 5383885);
INSERT INTO public.galaxy VALUES ('plut7o9sdf9a', 46, NULL, false, NULL, 3510753);
INSERT INTO public.galaxy VALUES ('h3sdf03a', 47, NULL, true, NULL, 993074700);
INSERT INTO public.galaxy VALUES ('misdfa', 48, NULL, true, NULL, 384309);
INSERT INTO public.galaxy VALUES ('n90sa', 49, NULL, false, NULL, 337300);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('D938HGSam', 14, NULL, true, NULL, 82);
INSERT INTO public.moon VALUES ('736aAm', 15, NULL, false, NULL, 92);
INSERT INTO public.moon VALUES ('SNOOPam', 16, NULL, true, NULL, 385);
INSERT INTO public.moon VALUES ('pluto99am', 17, NULL, false, NULL, 103);
INSERT INTO public.moon VALUES ('h33am', 18, NULL, true, NULL, 7700);
INSERT INTO public.moon VALUES ('miam', 19, NULL, true, NULL, 849);
INSERT INTO public.moon VALUES ('n90am', 20, NULL, false, NULL, 33);
INSERT INTO public.moon VALUES ('D938sfd56HGSba', 35, NULL, false, NULL, 6382);
INSERT INTO public.moon VALUES ('7365sdfaA', 36, NULL, false, NULL, 69092);
INSERT INTO public.moon VALUES ('SNO8sdfOPa', 37, NULL, true, NULL, 83885);
INSERT INTO public.moon VALUES ('plut7o9sdf9a', 38, NULL, false, NULL, 10753);
INSERT INTO public.moon VALUES ('h3sdf03a', 39, NULL, true, NULL, 99074700);
INSERT INTO public.moon VALUES ('misdfa', 40, NULL, true, NULL, 84309);
INSERT INTO public.moon VALUES ('n90sa', 41, NULL, false, NULL, 37300);
INSERT INTO public.moon VALUES ('D938sfd56HGSba', 50, NULL, false, NULL, 633382);
INSERT INTO public.moon VALUES ('7365s33dfaA', 51, NULL, false, NULL, 3569092);
INSERT INTO public.moon VALUES ('SNO8sdfOPa', 52, NULL, true, NULL, 5383885);
INSERT INTO public.moon VALUES ('plut7o9sdf9a', 53, NULL, false, NULL, 3510753);
INSERT INTO public.moon VALUES ('h3sdf03a', 54, NULL, true, NULL, 993074700);
INSERT INTO public.moon VALUES ('misdfa', 55, NULL, true, NULL, 384309);
INSERT INTO public.moon VALUES ('n90sa', 56, NULL, false, NULL, 337300);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('mercury', 1, 'closest to sun', false, NULL, 4);
INSERT INTO public.planet VALUES ('venus', 2, 'where women are from', true, NULL, 5);
INSERT INTO public.planet VALUES ('earth', 3, 'home base', true, NULL, 2);
INSERT INTO public.planet VALUES ('mars', 4, 'there are the men.', true, NULL, 1);
INSERT INTO public.planet VALUES ('pluto', 5, 'we believe in you.', false, NULL, 6);
INSERT INTO public.planet VALUES ('D938HGSam', 15, NULL, true, NULL, 82);
INSERT INTO public.planet VALUES ('736aAm', 16, NULL, false, NULL, 92);
INSERT INTO public.planet VALUES ('SNOOPam', 17, NULL, true, NULL, 385);
INSERT INTO public.planet VALUES ('pluto99am', 18, NULL, false, NULL, 103);
INSERT INTO public.planet VALUES ('h33am', 19, NULL, true, NULL, 7700);
INSERT INTO public.planet VALUES ('miam', 20, NULL, true, NULL, 849);
INSERT INTO public.planet VALUES ('n90am', 21, NULL, false, NULL, 33);
INSERT INTO public.planet VALUES ('jupiter', 6, 'ringssss', false, NULL, 682);
INSERT INTO public.planet VALUES ('uranus', 7, 'scientific name', false, NULL, 6992);
INSERT INTO public.planet VALUES ('planet 86', 8, 'recent discovery', true, NULL, 8385);
INSERT INTO public.planet VALUES ('alpha bravo', 9, 'not sure of atmosphere.', true, NULL, 1053);
INSERT INTO public.planet VALUES ('fireball', 10, 'actually closest to sun', false, NULL, 74700);
INSERT INTO public.planet VALUES ('the beginning', 11, 'hello world', true, NULL, 8439);
INSERT INTO public.planet VALUES ('old earth', 12, 'former home base', false, NULL, 373);
INSERT INTO public.planet VALUES ('mars II', 13, 'there is life.', true, NULL, 37300);
INSERT INTO public.planet VALUES ('twilight zone', 14, 'come in peace.', false, NULL, 6382);
INSERT INTO public.planet VALUES ('hi', 22, NULL, NULL, NULL, 69092);
INSERT INTO public.planet VALUES ('yo', 23, NULL, NULL, NULL, 83885);
INSERT INTO public.planet VALUES ('welcome', 24, NULL, NULL, NULL, 10753);
INSERT INTO public.planet VALUES ('long one', 25, NULL, NULL, NULL, 99074700);
INSERT INTO public.planet VALUES ('another one', 26, NULL, NULL, NULL, 84309);
INSERT INTO public.planet VALUES ('D938sfd56HGSba', 34, NULL, false, NULL, 633382);
INSERT INTO public.planet VALUES ('7365s33dfaA', 35, NULL, false, NULL, 3569092);
INSERT INTO public.planet VALUES ('SNO8sdfOPa', 36, NULL, true, NULL, 5383885);
INSERT INTO public.planet VALUES ('plut7o9sdf9a', 37, NULL, false, NULL, 3510753);
INSERT INTO public.planet VALUES ('h3sdf03a', 38, NULL, true, NULL, 993074700);
INSERT INTO public.planet VALUES ('misdfa', 39, NULL, true, NULL, 384309);
INSERT INTO public.planet VALUES ('n90sa', 40, NULL, false, NULL, 337300);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('alpha star', 2, 'the first one', false, NULL, 1);
INSERT INTO public.star VALUES ('check it out star', 4, NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES ('alpha', 17, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES ('bravo', 18, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES ('charlie', 19, NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES ('D938HGSa', 21, NULL, true, NULL, 82);
INSERT INTO public.star VALUES ('736aA', 22, NULL, false, NULL, 92);
INSERT INTO public.star VALUES ('SNOOPa', 23, NULL, true, NULL, 385);
INSERT INTO public.star VALUES ('pluto99a', 24, NULL, false, NULL, 103);
INSERT INTO public.star VALUES ('h33a', 25, NULL, true, NULL, 7700);
INSERT INTO public.star VALUES ('mia', 26, NULL, true, NULL, 849);
INSERT INTO public.star VALUES ('n90a', 27, NULL, false, NULL, 33);
INSERT INTO public.star VALUES ('D938HGSba', 41, NULL, false, NULL, 682);
INSERT INTO public.star VALUES ('736aA', 42, NULL, false, NULL, 6992);
INSERT INTO public.star VALUES ('SNOOPa', 43, NULL, true, NULL, 8385);
INSERT INTO public.star VALUES ('pluto99a', 44, NULL, false, NULL, 1053);
INSERT INTO public.star VALUES ('h33a', 45, NULL, true, NULL, 74700);
INSERT INTO public.star VALUES ('mia', 46, NULL, true, NULL, 8439);
INSERT INTO public.star VALUES ('n90a', 47, NULL, false, NULL, 373);
INSERT INTO public.star VALUES ('D938sfd56HGSba', 48, NULL, false, NULL, 6382);
INSERT INTO public.star VALUES ('7365sdfaA', 49, NULL, false, NULL, 69092);
INSERT INTO public.star VALUES ('SNO8sdfOPa', 50, NULL, true, NULL, 83885);
INSERT INTO public.star VALUES ('plut7o9sdf9a', 51, NULL, false, NULL, 10753);
INSERT INTO public.star VALUES ('h3sdf03a', 52, NULL, true, NULL, 99074700);
INSERT INTO public.star VALUES ('misdfa', 53, NULL, true, NULL, 84309);
INSERT INTO public.star VALUES ('n90sa', 54, NULL, false, NULL, 37300);
INSERT INTO public.star VALUES ('D938sfd56HGSba', 62, NULL, false, NULL, 633382);
INSERT INTO public.star VALUES ('7365s33dfaA', 63, NULL, false, NULL, 3569092);
INSERT INTO public.star VALUES ('SNO8sdfOPa', 64, NULL, true, NULL, 5383885);
INSERT INTO public.star VALUES ('plut7o9sdf9a', 65, NULL, false, NULL, 3510753);
INSERT INTO public.star VALUES ('h3sdf03a', 66, NULL, true, NULL, 993074700);
INSERT INTO public.star VALUES ('misdfa', 67, NULL, true, NULL, 384309);
INSERT INTO public.star VALUES ('n90sa', 68, NULL, false, NULL, 337300);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 7, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 49, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 57, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 40, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 68, true);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: comet comet_rating_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_rating_key UNIQUE (rating);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_rating_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_rating_key UNIQUE (rating);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_rating_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_rating_key UNIQUE (rating);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_rating_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_rating_key UNIQUE (rating);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_rating_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_rating_key UNIQUE (rating);


--
-- Name: moon moon_rating_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_rating_fkey FOREIGN KEY (rating) REFERENCES public.planet(rating);


--
-- Name: planet planet_rating_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_rating_fkey FOREIGN KEY (rating) REFERENCES public.star(rating);


--
-- Name: star star_rating_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_rating_fkey FOREIGN KEY (rating) REFERENCES public.galaxy(rating);


--
-- PostgreSQL database dump complete
--

