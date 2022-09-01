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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(60) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 976, 977, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 978, 979, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 977, 979, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 976, 978, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 977, 980, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 979, 981, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 978, 982, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 976, 983, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 979, 984, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 981, 985, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 978, 986, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 982, 987, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 977, 988, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 980, 989, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 983, 990, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 976, 991, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 992, 991, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 993, 982, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 991, 993, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 992, 982, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 993, 994, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 991, 978, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 982, 984, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 992, 976, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 982, 995, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 984, 983, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 976, 996, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 992, 997, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 993, 987, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 994, 998, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 991, 985, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 978, 999, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (976, 'France');
INSERT INTO public.teams VALUES (977, 'Croatia');
INSERT INTO public.teams VALUES (978, 'Belgium');
INSERT INTO public.teams VALUES (979, 'England');
INSERT INTO public.teams VALUES (980, 'Russia');
INSERT INTO public.teams VALUES (981, 'Sweden');
INSERT INTO public.teams VALUES (982, 'Brazil');
INSERT INTO public.teams VALUES (983, 'Uruguay');
INSERT INTO public.teams VALUES (984, 'Colombia');
INSERT INTO public.teams VALUES (985, 'Switzerland');
INSERT INTO public.teams VALUES (986, 'Japan');
INSERT INTO public.teams VALUES (987, 'Mexico');
INSERT INTO public.teams VALUES (988, 'Denmark');
INSERT INTO public.teams VALUES (989, 'Spain');
INSERT INTO public.teams VALUES (990, 'Portugal');
INSERT INTO public.teams VALUES (991, 'Argentina');
INSERT INTO public.teams VALUES (992, 'Germany');
INSERT INTO public.teams VALUES (993, 'Netherlands');
INSERT INTO public.teams VALUES (994, 'Costa Rica');
INSERT INTO public.teams VALUES (995, 'Chile');
INSERT INTO public.teams VALUES (996, 'Nigeria');
INSERT INTO public.teams VALUES (997, 'Algeria');
INSERT INTO public.teams VALUES (998, 'Greece');
INSERT INTO public.teams VALUES (999, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 999, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

