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
    user_id integer NOT NULL,
    no_of_guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 612);
INSERT INTO public.games VALUES (2, 1, 672);
INSERT INTO public.games VALUES (3, 2, 485);
INSERT INTO public.games VALUES (4, 2, 278);
INSERT INTO public.games VALUES (5, 1, 541);
INSERT INTO public.games VALUES (6, 1, 387);
INSERT INTO public.games VALUES (7, 1, 890);
INSERT INTO public.games VALUES (8, 3, 501);
INSERT INTO public.games VALUES (9, 3, 110);
INSERT INTO public.games VALUES (10, 4, 928);
INSERT INTO public.games VALUES (11, 4, 423);
INSERT INTO public.games VALUES (12, 3, 121);
INSERT INTO public.games VALUES (13, 3, 746);
INSERT INTO public.games VALUES (14, 3, 37);
INSERT INTO public.games VALUES (15, 5, 598);
INSERT INTO public.games VALUES (16, 5, 741);
INSERT INTO public.games VALUES (17, 6, 753);
INSERT INTO public.games VALUES (18, 6, 92);
INSERT INTO public.games VALUES (19, 5, 786);
INSERT INTO public.games VALUES (20, 5, 267);
INSERT INTO public.games VALUES (21, 5, 104);
INSERT INTO public.games VALUES (22, 7, 767);
INSERT INTO public.games VALUES (23, 7, 322);
INSERT INTO public.games VALUES (24, 8, 367);
INSERT INTO public.games VALUES (25, 8, 259);
INSERT INTO public.games VALUES (26, 7, 13);
INSERT INTO public.games VALUES (27, 7, 716);
INSERT INTO public.games VALUES (28, 7, 289);
INSERT INTO public.games VALUES (29, 9, 195);
INSERT INTO public.games VALUES (30, 9, 259);
INSERT INTO public.games VALUES (31, 10, 632);
INSERT INTO public.games VALUES (32, 10, 291);
INSERT INTO public.games VALUES (33, 9, 401);
INSERT INTO public.games VALUES (34, 9, 734);
INSERT INTO public.games VALUES (35, 9, 502);
INSERT INTO public.games VALUES (36, 11, 431);
INSERT INTO public.games VALUES (37, 11, 996);
INSERT INTO public.games VALUES (38, 12, 672);
INSERT INTO public.games VALUES (39, 12, 320);
INSERT INTO public.games VALUES (40, 11, 907);
INSERT INTO public.games VALUES (41, 11, 307);
INSERT INTO public.games VALUES (42, 11, 202);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1778967042721');
INSERT INTO public.users VALUES (2, 'user_1778967042720');
INSERT INTO public.users VALUES (3, 'user_1778967165874');
INSERT INTO public.users VALUES (4, 'user_1778967165873');
INSERT INTO public.users VALUES (5, 'user_1778967212423');
INSERT INTO public.users VALUES (6, 'user_1778967212422');
INSERT INTO public.users VALUES (7, 'user_1778967367703');
INSERT INTO public.users VALUES (8, 'user_1778967367702');
INSERT INTO public.users VALUES (9, 'user_1778967465564');
INSERT INTO public.users VALUES (10, 'user_1778967465563');
INSERT INTO public.users VALUES (11, 'user_1778967497648');
INSERT INTO public.users VALUES (12, 'user_1778967497647');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 42, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 12, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

