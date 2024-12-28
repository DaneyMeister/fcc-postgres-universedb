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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size integer NOT NULL,
    age integer NOT NULL,
    distance numeric(4,1) NOT NULL,
    description text NOT NULL,
    life boolean NOT NULL,
    spherical boolean NOT NULL
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
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    spherical boolean NOT NULL
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
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    spherical boolean NOT NULL
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
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text NOT NULL,
    spherical boolean NOT NULL
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


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
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'Extra Object 1', 'A mysterious object of unknown origin.');
INSERT INTO public.extra VALUES (2, 'Extra Object 2', 'An artifact believed to be from another galaxy.');
INSERT INTO public.extra VALUES (3, 'Extra Object 3', 'A satellite used for interstellar communication.');
INSERT INTO public.extra VALUES (4, 'Extra Object 4', 'A space station orbiting a distant star.');
INSERT INTO public.extra VALUES (5, 'Extra Object 5', 'An asteroid with unusual mineral deposits.');
INSERT INTO public.extra VALUES (6, 'Extra Object 6', 'A comet with an extremely long tail.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 220000, 10000, 2.5, 'A large spiral galaxy near the Milky Way.', false, true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 150000, 13600, 0.0, 'Our home galaxy.', true, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, 9200, 2.7, 'A member of the Local Group.', false, true);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 50000, 11000, 29.3, 'A spiral galaxy with a bright nucleus.', false, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 60000, 8500, 23.0, 'A classic spiral galaxy.', false, true);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 120000, 13400, 54.0, 'A supergiant elliptical galaxy.', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Andromeda Moon A', 'A small moon orbiting Andromeda I.', true);
INSERT INTO public.moon VALUES (2, 1, 'Andromeda Moon B', 'A rocky moon orbiting Andromeda I.', true);
INSERT INTO public.moon VALUES (3, 2, 'Andromeda Gas Moon', 'A moon with a gaseous atmosphere.', true);
INSERT INTO public.moon VALUES (4, 3, 'Luna', 'The Moon of Earth.', true);
INSERT INTO public.moon VALUES (5, 4, 'Phobos', 'One of Mars’ two moons.', true);
INSERT INTO public.moon VALUES (6, 4, 'Deimos', 'The smaller of Mars’ two moons.', true);
INSERT INTO public.moon VALUES (7, 5, 'Triangulum Moon A', 'A moon near Triangulum I.', true);
INSERT INTO public.moon VALUES (8, 5, 'Triangulum Moon B', 'A cratered moon.', true);
INSERT INTO public.moon VALUES (9, 6, 'Sombrero Moon A', 'A moon with icy terrain.', true);
INSERT INTO public.moon VALUES (10, 6, 'Sombrero Moon B', 'A frozen moon.', true);
INSERT INTO public.moon VALUES (11, 7, 'Whirlpool Moon A', 'A rocky moon.', true);
INSERT INTO public.moon VALUES (12, 7, 'Whirlpool Moon B', 'A gaseous moon.', true);
INSERT INTO public.moon VALUES (13, 8, 'Whirlpool Ice Moon', 'A moon with icy features.', true);
INSERT INTO public.moon VALUES (14, 8, 'Messier Minor Moon', 'A small moon.', true);
INSERT INTO public.moon VALUES (15, 9, 'Messier Major Moon A', 'A massive moon orbiting Messier Major.', true);
INSERT INTO public.moon VALUES (16, 9, 'Messier Major Moon B', 'A secondary moon.', true);
INSERT INTO public.moon VALUES (17, 10, 'Gas Moon', 'A gaseous moon.', true);
INSERT INTO public.moon VALUES (18, 10, 'Rocky Moon', 'A rocky moon.', true);
INSERT INTO public.moon VALUES (19, 11, 'Frozen Moon', 'A frozen moon orbiting.', true);
INSERT INTO public.moon VALUES (20, 12, 'Messier Dwarf Moon', 'A small and rocky moon orbiting Messier Minor.', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Andromeda I', 'A rocky planet near Alpha Andromedae.', true);
INSERT INTO public.planet VALUES (2, 1, 'Andromeda II', 'A gas giant orbiting Alpha Andromedae.', true);
INSERT INTO public.planet VALUES (3, 2, 'Earth', 'The only known planet with life.', true);
INSERT INTO public.planet VALUES (4, 2, 'Mars', 'A rocky red planet.', true);
INSERT INTO public.planet VALUES (5, 3, 'Triangulum I', 'A small planet in Triangulum.', true);
INSERT INTO public.planet VALUES (6, 3, 'Triangulum II', 'A gas giant in Triangulum.', true);
INSERT INTO public.planet VALUES (7, 4, 'Sombrero I', 'A planet with a thin atmosphere.', true);
INSERT INTO public.planet VALUES (8, 4, 'Sombrero II', 'A frozen planet in Sombrero.', true);
INSERT INTO public.planet VALUES (9, 5, 'Whirlpool I', 'A rocky planet near Whirlpool Star.', true);
INSERT INTO public.planet VALUES (10, 5, 'Whirlpool II', 'A large gas giant.', true);
INSERT INTO public.planet VALUES (11, 6, 'Messier Minor', 'A small rocky planet.', true);
INSERT INTO public.planet VALUES (12, 6, 'Messier Major', 'A supermassive planet.', true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Alpha Andromedae', 'A bright binary star in Andromeda.', true);
INSERT INTO public.star VALUES (2, 2, 'Sun', 'The star at the center of our solar system.', true);
INSERT INTO public.star VALUES (3, 3, 'Triangulum Bright', 'A prominent star in Triangulum.', true);
INSERT INTO public.star VALUES (4, 4, 'Sombrero Alpha', 'A bright star in the Sombrero galaxy.', true);
INSERT INTO public.star VALUES (5, 5, 'Whirlpool Star', 'A star in the Whirlpool galaxy.', true);
INSERT INTO public.star VALUES (6, 6, 'Messier Giant', 'A massive star in Messier 87.', false);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: extra extra_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_name_key UNIQUE (name);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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

