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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    no_guess integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: userdata; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.userdata (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.userdata OWNER TO freecodecamp;

--
-- Name: userdata_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.userdata_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userdata_user_id_seq OWNER TO freecodecamp;

--
-- Name: userdata_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.userdata_user_id_seq OWNED BY public.userdata.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: userdata user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.userdata ALTER COLUMN user_id SET DEFAULT nextval('public.userdata_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (14, 25, 846);
INSERT INTO public.games VALUES (15, 26, 32);
INSERT INTO public.games VALUES (16, 25, 738);
INSERT INTO public.games VALUES (17, 25, 742);
INSERT INTO public.games VALUES (18, 25, 442);
INSERT INTO public.games VALUES (19, 20, 5);
INSERT INTO public.games VALUES (20, 28, 494);
INSERT INTO public.games VALUES (21, 29, 353);
INSERT INTO public.games VALUES (22, 28, 330);
INSERT INTO public.games VALUES (23, 28, 715);
INSERT INTO public.games VALUES (24, 28, 811);
INSERT INTO public.games VALUES (25, 20, 5);
INSERT INTO public.games VALUES (26, 30, 522);
INSERT INTO public.games VALUES (27, 31, 584);
INSERT INTO public.games VALUES (28, 30, 981);
INSERT INTO public.games VALUES (29, 30, 581);
INSERT INTO public.games VALUES (30, 30, 604);
INSERT INTO public.games VALUES (31, 32, 12);
INSERT INTO public.games VALUES (32, 33, 720);
INSERT INTO public.games VALUES (33, 33, 299);
INSERT INTO public.games VALUES (34, 34, 898);
INSERT INTO public.games VALUES (35, 34, 748);
INSERT INTO public.games VALUES (36, 33, 449);
INSERT INTO public.games VALUES (37, 33, 564);
INSERT INTO public.games VALUES (38, 33, 55);
INSERT INTO public.games VALUES (39, 35, 360);
INSERT INTO public.games VALUES (40, 35, 116);
INSERT INTO public.games VALUES (41, 36, 969);
INSERT INTO public.games VALUES (42, 36, 540);
INSERT INTO public.games VALUES (43, 35, 171);
INSERT INTO public.games VALUES (44, 35, 801);
INSERT INTO public.games VALUES (45, 35, 332);
INSERT INTO public.games VALUES (46, 37, 447);
INSERT INTO public.games VALUES (47, 37, 74);
INSERT INTO public.games VALUES (48, 38, 906);
INSERT INTO public.games VALUES (49, 38, 967);
INSERT INTO public.games VALUES (50, 37, 463);
INSERT INTO public.games VALUES (51, 37, 94);
INSERT INTO public.games VALUES (52, 37, 133);


--
-- Data for Name: userdata; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.userdata VALUES (21, 'Tommy');
INSERT INTO public.userdata VALUES (20, 'test');
INSERT INTO public.userdata VALUES (22, 'user_1686587303810');
INSERT INTO public.userdata VALUES (23, 'user_1686587303809');
INSERT INTO public.userdata VALUES (24, 'test2');
INSERT INTO public.userdata VALUES (25, 'user_1686588093160');
INSERT INTO public.userdata VALUES (26, 'user_1686588093159');
INSERT INTO public.userdata VALUES (27, 'Jose');
INSERT INTO public.userdata VALUES (28, 'user_1686588992340');
INSERT INTO public.userdata VALUES (29, 'user_1686588992339');
INSERT INTO public.userdata VALUES (30, 'user_1686589478521');
INSERT INTO public.userdata VALUES (31, 'user_1686589478520');
INSERT INTO public.userdata VALUES (32, 'test3');
INSERT INTO public.userdata VALUES (33, 'user_1686589710108');
INSERT INTO public.userdata VALUES (34, 'user_1686589710107');
INSERT INTO public.userdata VALUES (35, 'user_1686590248448');
INSERT INTO public.userdata VALUES (36, 'user_1686590248447');
INSERT INTO public.userdata VALUES (37, 'user_1686590280787');
INSERT INTO public.userdata VALUES (38, 'user_1686590280786');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 52, true);


--
-- Name: userdata_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.userdata_user_id_seq', 38, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: userdata userdata_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.userdata
    ADD CONSTRAINT userdata_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.userdata(user_id);


--
-- PostgreSQL database dump complete
--

