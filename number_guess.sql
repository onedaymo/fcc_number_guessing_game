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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1729562816972', 1, 10000);
INSERT INTO public.users VALUES ('user_1729562816971', 1, 10000);
INSERT INTO public.users VALUES ('user_1729562816971', 1, 10000);
INSERT INTO public.users VALUES ('user_1729563138427', 1, 10000);
INSERT INTO public.users VALUES ('user_1729563138426', 1, 10000);
INSERT INTO public.users VALUES ('user_1729563341276', 1, 10000);
INSERT INTO public.users VALUES ('user_1729563341275', 1, 10000);
INSERT INTO public.users VALUES ('user_1729563364820', 1, 10000);
INSERT INTO public.users VALUES ('user_1729563364819', 1, 10000);
INSERT INTO public.users VALUES ('user_1729563506616', 1, 10000);
INSERT INTO public.users VALUES ('user_1729563506615', 1, 10000);
INSERT INTO public.users VALUES ('user_1729564170185', 1, 10000);
INSERT INTO public.users VALUES ('user_1729564170184', 1, 10000);
INSERT INTO public.users VALUES ('user_1729565059520', 1, 10000);
INSERT INTO public.users VALUES ('user_1729565059519', 1, 10000);
INSERT INTO public.users VALUES ('user_1729565173683', 1, 10000);
INSERT INTO public.users VALUES ('user_1729565173682', 1, 10000);
INSERT INTO public.users VALUES ('user_1729565777137', 1, 10000);
INSERT INTO public.users VALUES ('user_1729565777136', 1, 10000);
INSERT INTO public.users VALUES ('user_1729565841787', 1, 10000);
INSERT INTO public.users VALUES ('user_1729565841786', 1, 10000);
INSERT INTO public.users VALUES ('user_1729565970218', 1, 10000);
INSERT INTO public.users VALUES ('user_1729565970217', 1, 10000);
INSERT INTO public.users VALUES ('user_1729566014110', 1, 10000);
INSERT INTO public.users VALUES ('user_1729566014109', 1, 10000);
INSERT INTO public.users VALUES ('user_1729566450708', 0, 10000);
INSERT INTO public.users VALUES ('user_1729566450707', 0, 10000);
INSERT INTO public.users VALUES ('user_1729566461641', 0, 10000);
INSERT INTO public.users VALUES ('user_1729566461640', 0, 10000);
INSERT INTO public.users VALUES ('user_1729566463685', 0, 10000);
INSERT INTO public.users VALUES ('user_1729566463684', 0, 10000);
INSERT INTO public.users VALUES ('user_1729566465891', 0, 10000);
INSERT INTO public.users VALUES ('user_1729566465890', 0, 10000);
INSERT INTO public.users VALUES ('user_1729566546943', 0, 10000);
INSERT INTO public.users VALUES ('user_1729566546942', 0, 10000);
INSERT INTO public.users VALUES ('user_1729566751854', 1, 10000);
INSERT INTO public.users VALUES ('user_1729566751855', 1, 10000);
INSERT INTO public.users VALUES ('xyz', 1, 10000);
INSERT INTO public.users VALUES ('user_1729567596483', 2, 607);
INSERT INTO public.users VALUES ('user_1729567596484', 6, 252);


--
-- PostgreSQL database dump complete
--

