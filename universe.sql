--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(100) NOT NULL,
    abbreviation character varying(10),
    brightest_star character varying(30),
    area_sq_deg integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types character varying(30) NOT NULL,
    distance_from_earth numeric,
    description text
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
    name character varying(30) NOT NULL,
    diameter_km integer,
    surface_type character varying(30),
    has_life boolean,
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    type character varying(30),
    radius_km integer,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(30) NOT NULL,
    spectral_type character varying(30),
    galaxy_id integer,
    constellation_id integer
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Canis Major', 'CMa', 'Sirius', 380);
INSERT INTO public.constellation VALUES (2, 'Orion', 'Ori', 'Rigel', 594);
INSERT INTO public.constellation VALUES (3, 'Ursa Major', 'UMa', 'Alioth', 1280);
INSERT INTO public.constellation VALUES (4, 'Lyra', 'Lyr', 'Vega', 286);
INSERT INTO public.constellation VALUES (5, 'Bootes', 'Boo', 'Arcutus', 907);
INSERT INTO public.constellation VALUES (6, 'Scorpius', 'Sco', 'Antares', 497);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, 'Our home galaxy with a spriral structure');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2537000, 'Nearest major galaxy to the Milky Way');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 3000000, 'Third-largest in the Local Group');
INSERT INTO public.galaxy VALUES (4, 'Large', 'Irregular', 163000, 'Satellite galaxy of the Milky Way');
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'Irregular', 200000, 'Smaller companion to the Milky Way.');
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'Elliptical', 53000000, 'Massive galaxy with a supermassive black hole.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3474, 'Rocky', false, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, 'Rocky', false, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 12, 'Rocky', false, false, 2);
INSERT INTO public.moon VALUES (4, 'Io', 3643, 'Volcanic', false, true, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 3122, 'Icy', true, true, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5268, 'Icy-Rocky', false, true, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 4821, 'Icy', false, true, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 5150, 'Icy-Rocky', true, true, 3);
INSERT INTO public.moon VALUES (9, 'Sirius b1-m1', 1000, 'Rocky', false, false, 5);
INSERT INTO public.moon VALUES (10, 'Proxima b-m1', 800, 'Rocky', false, false, 7);
INSERT INTO public.moon VALUES (11, 'Vega p1-m1', 1200, 'Icy', false, false, 8);
INSERT INTO public.moon VALUES (12, 'Arcturus p1-m1', 2000, 'Icy-Rocky', false, true, 9);
INSERT INTO public.moon VALUES (13, 'Enceladus', 504, 'Icy', true, true, 3);
INSERT INTO public.moon VALUES (14, 'Triton', 2707, 'Icy', false, true, 3);
INSERT INTO public.moon VALUES (15, 'Sirius b1-m2', 1500, 'Rocky', false, true, 5);
INSERT INTO public.moon VALUES (16, 'Proxima b-m2', 600, 'Rocky', false, false, 7);
INSERT INTO public.moon VALUES (17, 'LMC p1-m1', 900, 'Icy', false, false, 10);
INSERT INTO public.moon VALUES (18, 'SMC p1-m1', 1100, 'Rocky', false, false, 11);
INSERT INTO public.moon VALUES (19, 'M87 p1-m1', 2500, 'Icy-Rocky', false, true, 12);
INSERT INTO public.moon VALUES (20, 'Vega p1-m2', 1300, 'Icy', false, true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', 6371, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', 3389, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'Gas Giant', 69911, false, true, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 'Terrestrial', 6052, false, true, 1);
INSERT INTO public.planet VALUES (5, 'Sirius b1', 'Rocky', 5000, false, true, 2);
INSERT INTO public.planet VALUES (6, 'Betelgeuse p1', 'Gas Giant', 80000, false, true, 3);
INSERT INTO public.planet VALUES (7, 'Proxima b', 'Terrestrial', 7000, true, true, 4);
INSERT INTO public.planet VALUES (8, 'Vega P1', 'Rocky', 4500, false, true, 8);
INSERT INTO public.planet VALUES (9, 'Arcturus p1', 'Gast Giant', 65000, false, true, 10);
INSERT INTO public.planet VALUES (10, 'LMC p1', 'Terrestrial', 6000, false, true, 12);
INSERT INTO public.planet VALUES (11, 'SMC p1', 'Rocky', 4000, false, true, 11);
INSERT INTO public.planet VALUES (12, 'M87 p1', 'Gas Giant', 90000, false, true, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G-type', 1, NULL);
INSERT INTO public.star VALUES (2, 'Sirius', 'A-type', 1, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red Supergiant', 1, 2);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'Red Dwarf', 1, NULL);
INSERT INTO public.star VALUES (5, 'Messier 31 Star A', 'O-type', 1, NULL);
INSERT INTO public.star VALUES (6, 'Messier 31 Star B', 'B-type', 2, NULL);
INSERT INTO public.star VALUES (7, 'Messier 33 Star X', 'K-type', 3, NULL);
INSERT INTO public.star VALUES (8, 'Vega', 'A-type', 1, 3);
INSERT INTO public.star VALUES (9, 'Arcturus', ' K-type Giant', 1, 4);
INSERT INTO public.star VALUES (10, 'LMC Star 1', 'B-type', 4, NULL);
INSERT INTO public.star VALUES (11, 'SMC Star 1', 'Red Giant', 5, NULL);
INSERT INTO public.star VALUES (12, 'M87 Star 1', 'O-type', 6, NULL);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: constellation unique_constellation_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT unique_constellation_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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
-- Name: star star_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

