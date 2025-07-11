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

--
-- Name: pgagent; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgagent;


ALTER SCHEMA pgagent OWNER TO postgres;

--
-- Name: SCHEMA pgagent; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA pgagent IS 'pgAgent system tables';


--
-- Name: pgagent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgagent WITH SCHEMA pgagent;


--
-- Name: EXTENSION pgagent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgagent IS 'A PostgreSQL job scheduler';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: stockvalues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stockvalues (
    id integer NOT NULL,
    r2_d2 numeric(5,2) DEFAULT 76,
    aden_skirata numeric(5,2) DEFAULT 59,
    lesser_stormtrooper numeric(5,2) DEFAULT 4,
    ysanne_isard numeric(5,2) DEFAULT 14,
    victorie_talik numeric(5,2) DEFAULT 60,
    eleventh_brother numeric(5,2) DEFAULT 40,
    darth_vader numeric(5,2) DEFAULT 80,
    chewbacca numeric(5,2) DEFAULT 68,
    sergeant_kreel numeric(5,2) DEFAULT 64,
    pt_1178 numeric(5,2) DEFAULT 46,
    unknown_valtorax_character numeric(5,2) DEFAULT 48,
    third_brother numeric(5,2) DEFAULT 32,
    second_sister numeric(5,2) DEFAULT 32,
    fixer numeric(5,2) DEFAULT 48,
    thirteenth_brother numeric(5,2) DEFAULT 8,
    dexter_jettster numeric(5,2) DEFAULT 60,
    cyan numeric(5,2) DEFAULT 40,
    grand_admiral_piett numeric(5,2) DEFAULT 48,
    unknown_stemmedaxis06_character numeric(5,2) DEFAULT 78,
    fifth_brother numeric(5,2) DEFAULT 40,
    maze numeric(5,2) DEFAULT 36,
    rav_bralor numeric(5,2) DEFAULT 44,
    epsilon numeric(5,2) DEFAULT 60,
    zeb numeric(5,2) DEFAULT 48,
    agent66 numeric(5,2) DEFAULT 42,
    wedge_antilles numeric(5,2) DEFAULT 60,
    cipher9 numeric(5,2) DEFAULT 46,
    thrawn numeric(5,2) DEFAULT 68,
    corran_horn numeric(5,2) DEFAULT 51,
    agent_kallus numeric(5,2) DEFAULT 48,
    sixth_sister numeric(5,2) DEFAULT 40,
    chopper numeric(5,2) DEFAULT 66,
    han_solo numeric(5,2) DEFAULT 72,
    ackbar numeric(5,2) DEFAULT 68,
    grand_inquisitor numeric(5,2) DEFAULT 62,
    rex numeric(5,2) DEFAULT 64,
    boba_fett numeric(5,2) DEFAULT 61,
    sabe_nabierre numeric(5,2) DEFAULT 52,
    luke_skywalker numeric(5,2) DEFAULT 79,
    c3po numeric(5,2) DEFAULT 55,
    airen_cracken numeric(5,2) DEFAULT 44,
    strzalk numeric(5,2) DEFAULT 48,
    ninth_sister numeric(5,2) DEFAULT 40,
    ig_88b numeric(5,2) DEFAULT 44,
    garrick_versio numeric(5,2) DEFAULT 38,
    axis numeric(5,2) DEFAULT 74,
    gideon numeric(5,2) DEFAULT 46,
    fenn_shysa numeric(5,2) DEFAULT 30,
    boss numeric(5,2) DEFAULT 48,
    sabine_wren numeric(5,2) DEFAULT 50,
    mara_jade numeric(5,2) DEFAULT 52,
    alpha_17 numeric(5,2) DEFAULT 34,
    omega numeric(5,2) DEFAULT 40,
    kal_skirata numeric(5,2) DEFAULT 26,
    gallius_rex numeric(5,2) DEFAULT 40,
    twelfth_brother numeric(5,2) DEFAULT 48,
    eli_vanto numeric(5,2) DEFAULT 41,
    saw_garrera numeric(5,2) DEFAULT 46,
    wolffe numeric(5,2) DEFAULT 32,
    lando_calrissian numeric(5,2) DEFAULT 74,
    evaarla_mereel numeric(5,2) DEFAULT 66,
    kyle_katarn numeric(5,2) DEFAULT 61,
    carnor_jax numeric(5,2) DEFAULT 44,
    mission_vao numeric(5,2) DEFAULT 42,
    x2 numeric(5,2) DEFAULT 40,
    seventh_sister numeric(5,2) DEFAULT 40,
    jan_ors numeric(5,2) DEFAULT 42,
    scorch numeric(5,2) DEFAULT 48,
    lumiya numeric(5,2) DEFAULT 8,
    rahm_kota numeric(5,2) DEFAULT 51,
    pellaeon numeric(5,2) DEFAULT 48,
    leia_organa numeric(5,2) DEFAULT 72,
    lastchapter integer DEFAULT 9,
    ghos_gin numeric(5,2) DEFAULT 60,
    janitor numeric(5,2) DEFAULT 35,
    satele numeric(5,2) DEFAULT 75,
    mothma numeric(5,2) DEFAULT 65,
    bo_katan numeric(5,2) DEFAULT 28,
    bossk numeric(5,2) DEFAULT 58,
    armstrong numeric(5,2) DEFAULT 62,
    death_troopers numeric(5,2) DEFAULT 48,
    snake_zapal numeric(5,2) DEFAULT 30,
    nom_carver numeric(5,2) DEFAULT 45,
    samuel_rodrigues numeric(5,2) DEFAULT 46,
    mandalor_the_unwoke numeric(5,2) DEFAULT 56,
    fox numeric(5,2) DEFAULT 18,
    x_wing numeric(5,2) DEFAULT 25,
    tie_fighter numeric(5,2) DEFAULT 15
);


ALTER TABLE public.stockvalues OWNER TO postgres;

--
-- Name: stockvalues_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stockvalues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stockvalues_id_seq OWNER TO postgres;

--
-- Name: stockvalues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stockvalues_id_seq OWNED BY public.stockvalues.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    money numeric(100,2) DEFAULT 1000,
    totalstockvalue numeric(100,2) DEFAULT 1000,
    profit numeric(100,2) DEFAULT 0,
    r2_d2 integer DEFAULT 0,
    aden_skirata integer DEFAULT 0,
    lesser_stormtrooper integer DEFAULT 0,
    ysanne_isard integer DEFAULT 0,
    victorie_talik integer DEFAULT 0,
    eleventh_brother integer DEFAULT 0,
    darth_vader integer DEFAULT 0,
    chewbacca integer DEFAULT 0,
    sergeant_kreel integer DEFAULT 0,
    pt_1178 integer DEFAULT 0,
    unknown_valtorax_character integer DEFAULT 0,
    third_brother integer DEFAULT 0,
    second_sister integer DEFAULT 0,
    fixer integer DEFAULT 0,
    thirteenth_brother integer DEFAULT 0,
    dexter_jettster integer DEFAULT 0,
    cyan integer DEFAULT 0,
    grand_admiral_piett integer DEFAULT 0,
    unknown_stemmedaxis06_character integer DEFAULT 0,
    fifth_brother integer DEFAULT 0,
    maze integer DEFAULT 0,
    rav_bralor integer DEFAULT 0,
    epsilon integer DEFAULT 0,
    zeb integer DEFAULT 0,
    agent66 integer DEFAULT 0,
    wedge_antilles integer DEFAULT 0,
    cipher9 integer DEFAULT 0,
    thrawn integer DEFAULT 0,
    corran_horn integer DEFAULT 0,
    agent_kallus integer DEFAULT 0,
    sixth_sister integer DEFAULT 0,
    chopper integer DEFAULT 0,
    han_solo integer DEFAULT 0,
    ackbar integer DEFAULT 0,
    grand_inquisitor integer DEFAULT 0,
    rex integer DEFAULT 0,
    boba_fett integer DEFAULT 0,
    sabe_nabierre integer DEFAULT 0,
    luke_skywalker integer DEFAULT 0,
    c3po integer DEFAULT 0,
    airen_cracken integer DEFAULT 0,
    strzalk integer DEFAULT 0,
    ninth_sister integer DEFAULT 0,
    ig_88b integer DEFAULT 0,
    garrick_versio integer DEFAULT 0,
    axis integer DEFAULT 0,
    gideon integer DEFAULT 0,
    fenn_shysa integer DEFAULT 0,
    boss integer DEFAULT 0,
    sabine_wren integer DEFAULT 0,
    mara_jade integer DEFAULT 0,
    alpha_17 integer DEFAULT 0,
    omega integer DEFAULT 0,
    kal_skirata integer DEFAULT 0,
    gallius_rex integer DEFAULT 0,
    twelfth_brother integer DEFAULT 0,
    eli_vanto integer DEFAULT 0,
    saw_garrera integer DEFAULT 0,
    wolffe integer DEFAULT 0,
    lando_calrissian integer DEFAULT 0,
    evaarla_mereel integer DEFAULT 0,
    kyle_katarn integer DEFAULT 0,
    carnor_jax integer DEFAULT 0,
    mission_vao integer DEFAULT 0,
    x2 integer DEFAULT 0,
    seventh_sister integer DEFAULT 0,
    jan_ors integer DEFAULT 0,
    scorch integer DEFAULT 0,
    lumiya integer DEFAULT 0,
    rahm_kota integer DEFAULT 0,
    pellaeon integer DEFAULT 0,
    leia_organa integer DEFAULT 0,
    tempprofit numeric(100,2) DEFAULT 0,
    ghos_gin integer DEFAULT 0,
    janitor integer DEFAULT 0,
    satele integer DEFAULT 0,
    mothma integer DEFAULT 0,
    bo_katan integer DEFAULT 0,
    bossk integer DEFAULT 0,
    snake_zapal integer DEFAULT 0,
    armstrong integer DEFAULT 0,
    death_troopers integer DEFAULT 0,
    nom_carver integer DEFAULT 0,
    samuel_rodrigues integer DEFAULT 0,
    mandalor_the_unwoke integer DEFAULT 0,
    fox integer DEFAULT 0,
    tie_fighter integer DEFAULT 0,
    x_wing integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: stockvalues id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stockvalues ALTER COLUMN id SET DEFAULT nextval('public.stockvalues_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: pga_jobagent; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobagent (jagpid, jaglogintime, jagstation) FROM stdin;
45163	2024-08-11 06:47:40.161801+00	halcyon
\.


--
-- Data for Name: pga_jobclass; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobclass (jclid, jclname) FROM stdin;
\.


--
-- Data for Name: pga_job; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_job (jobid, jobjclid, jobname, jobdesc, jobhostagent, jobenabled, jobcreated, jobchanged, jobagentid, jobnextrun, joblastrun) FROM stdin;
1	1	updateMoneyServer			t	2024-05-18 22:44:26.350379+00	2024-05-18 22:44:26.350379+00	\N	2025-06-11 00:00:00+00	2024-08-21 00:00:03.952911+00
\.


--
-- Data for Name: pga_schedule; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_schedule (jscid, jscjobid, jscname, jscdesc, jscenabled, jscstart, jscend, jscminutes, jschours, jscweekdays, jscmonthdays, jscmonths) FROM stdin;
1	1	daily		t	2024-05-18 23:00:00+00	\N	{t,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{t,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{t,t,t,t,t,t,t}	{f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{f,f,f,f,f,f,f,f,f,f,f,f}
\.


--
-- Data for Name: pga_exception; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_exception (jexid, jexscid, jexdate, jextime) FROM stdin;
\.


--
-- Data for Name: pga_joblog; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_joblog (jlgid, jlgjobid, jlgstatus, jlgstart, jlgduration) FROM stdin;
1	1	s	2024-08-09 18:23:00.778258+00	00:00:00.010281
2	1	s	2024-08-11 06:47:40.169419+00	00:00:00.00878
3	1	s	2024-08-12 00:00:00.110954+00	00:00:00.00926
4	1	s	2024-08-13 00:00:00.442049+00	00:00:00.008507
5	1	s	2024-08-14 00:00:03.926145+00	00:00:00.008551
6	1	s	2024-08-15 00:00:02.927457+00	00:00:00.00877
7	1	s	2024-08-16 00:00:03.45192+00	00:00:00.008841
8	1	s	2024-08-17 00:00:01.297003+00	00:00:00.009065
9	1	s	2024-08-18 00:00:00.795245+00	00:00:00.008768
10	1	s	2024-08-19 00:00:03.928288+00	00:00:00.008825
11	1	s	2024-08-20 00:00:01.444171+00	00:00:00.009037
12	1	s	2024-08-21 00:00:03.956738+00	00:00:00.009047
\.


--
-- Data for Name: pga_jobstep; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobstep (jstid, jstjobid, jstname, jstdesc, jstenabled, jstkind, jstcode, jstconnstr, jstdbname, jstonerror, jscnextrun) FROM stdin;
\.


--
-- Data for Name: pga_jobsteplog; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobsteplog (jslid, jsljlgid, jsljstid, jslstatus, jslresult, jslstart, jslduration, jsloutput) FROM stdin;
\.


--
-- Data for Name: stockvalues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stockvalues (id, r2_d2, aden_skirata, lesser_stormtrooper, ysanne_isard, victorie_talik, eleventh_brother, darth_vader, chewbacca, sergeant_kreel, pt_1178, unknown_valtorax_character, third_brother, second_sister, fixer, thirteenth_brother, dexter_jettster, cyan, grand_admiral_piett, unknown_stemmedaxis06_character, fifth_brother, maze, rav_bralor, epsilon, zeb, agent66, wedge_antilles, cipher9, thrawn, corran_horn, agent_kallus, sixth_sister, chopper, han_solo, ackbar, grand_inquisitor, rex, boba_fett, sabe_nabierre, luke_skywalker, c3po, airen_cracken, strzalk, ninth_sister, ig_88b, garrick_versio, axis, gideon, fenn_shysa, boss, sabine_wren, mara_jade, alpha_17, omega, kal_skirata, gallius_rex, twelfth_brother, eli_vanto, saw_garrera, wolffe, lando_calrissian, evaarla_mereel, kyle_katarn, carnor_jax, mission_vao, x2, seventh_sister, jan_ors, scorch, lumiya, rahm_kota, pellaeon, leia_organa, lastchapter, ghos_gin, janitor, satele, mothma, bo_katan, bossk, armstrong, death_troopers, snake_zapal, nom_carver, samuel_rodrigues, mandalor_the_unwoke, fox, x_wing, tie_fighter) FROM stdin;
54	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	1	60.00	35.00	75.00	65.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
55	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	2	60.00	35.00	75.00	65.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
56	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	3	60.00	35.00	75.00	65.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
57	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	4	60.00	35.00	75.00	65.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
58	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	5	60.00	35.00	75.00	65.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
59	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	6	60.00	35.00	75.00	65.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
60	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	7	60.00	35.00	75.00	65.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
61	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	8	60.00	35.00	75.00	65.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
62	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	9	60.00	35.00	75.00	65.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
63	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	10	60.00	35.00	75.00	65.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
64	76.00	59.00	4.00	14.00	60.00	49.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	50.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	11	60.00	35.00	75.00	65.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
65	76.00	59.00	6.00	14.00	60.00	50.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	41.00	37.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	38.00	66.00	72.00	68.00	60.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	34.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	50.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	12	60.00	23.10	75.00	65.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
67	76.00	59.00	5.00	14.00	60.00	50.00	82.00	68.00	64.00	46.00	48.00	33.00	33.00	48.00	8.00	60.00	40.00	47.00	78.00	41.00	37.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	38.00	66.00	72.00	68.00	60.00	64.00	61.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	36.00	74.00	44.00	34.00	48.00	50.00	52.00	34.00	40.00	26.00	37.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	48.00	42.00	40.00	41.00	42.00	48.00	8.00	51.00	49.00	72.00	13	60.00	23.10	75.00	65.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
68	76.00	59.00	5.00	14.00	60.00	50.00	82.00	68.00	64.00	46.00	48.00	33.00	33.00	48.00	8.00	60.00	40.00	47.00	78.00	41.00	37.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	38.00	66.00	72.00	68.00	60.00	64.00	61.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	36.00	74.00	44.00	34.00	48.00	50.00	52.00	34.00	40.00	26.00	37.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	48.00	42.00	40.00	41.00	42.00	48.00	8.00	51.00	49.00	72.00	14	60.00	22.60	75.00	65.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
69	76.00	59.00	5.00	14.00	64.00	50.00	82.00	68.00	64.00	46.00	48.00	33.00	33.00	48.00	8.00	60.00	40.00	48.00	78.00	41.00	37.00	44.00	60.00	48.00	42.00	60.00	46.00	69.00	54.00	48.00	38.00	66.00	72.00	66.00	60.00	64.00	61.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	36.00	74.00	44.00	34.00	48.00	50.00	52.00	34.00	40.00	26.00	37.00	48.00	42.00	48.00	32.00	74.00	66.00	61.00	48.00	42.00	40.00	41.00	42.00	48.00	8.00	50.00	49.00	72.00	15	60.00	26.21	75.00	60.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
70	76.00	59.00	7.00	14.00	64.00	50.00	82.00	68.00	64.00	46.00	48.00	33.00	33.00	48.00	8.00	60.00	40.00	48.00	78.00	41.00	37.00	44.00	60.00	48.00	42.00	61.00	46.00	69.00	54.00	48.00	38.00	66.00	72.00	66.00	60.00	64.00	61.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	36.00	74.00	44.00	34.00	48.00	50.00	52.00	34.00	40.00	26.00	37.00	48.00	42.00	48.00	32.00	74.00	66.00	61.00	48.00	42.00	40.00	41.00	42.00	48.00	8.00	50.00	49.00	72.00	16	60.00	37.08	75.00	60.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
71	76.00	59.00	7.00	14.00	64.00	50.00	82.00	68.00	64.00	46.00	48.00	33.00	33.00	48.00	8.00	60.00	40.00	48.00	78.00	41.00	38.00	44.00	60.00	48.00	42.00	61.00	46.00	69.00	54.00	48.00	38.00	66.00	72.00	66.00	60.00	64.00	61.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	36.00	76.00	44.00	34.00	48.00	51.00	52.00	39.00	40.00	26.00	37.00	48.00	42.00	48.00	37.00	74.00	66.00	61.00	48.00	42.00	40.00	41.00	42.00	48.00	8.00	50.00	49.00	72.00	17	60.00	47.40	75.00	60.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
72	76.00	60.00	7.00	14.00	64.00	50.00	82.00	68.00	64.00	46.00	48.00	33.00	33.00	48.00	8.00	60.00	40.00	48.00	78.00	41.00	38.00	45.00	60.00	48.00	42.00	61.00	46.00	69.00	54.00	48.00	38.00	66.00	72.00	66.00	60.00	64.00	61.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	36.00	76.00	44.00	34.00	48.00	51.00	53.00	39.00	40.00	26.00	37.00	48.00	42.00	48.00	39.00	74.00	66.00	61.00	48.00	42.00	40.00	41.00	42.00	48.00	8.00	50.00	49.00	72.00	18	60.00	25.00	75.00	60.00	28.00	58.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
73	76.00	60.00	7.00	14.00	64.00	50.00	82.00	68.00	64.00	46.00	48.00	34.00	33.00	48.00	8.00	60.00	40.00	48.00	78.00	41.00	38.00	45.00	60.00	48.00	42.00	61.00	46.00	69.00	54.00	48.00	38.00	66.00	72.00	66.00	60.00	64.00	63.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	36.00	76.00	44.00	34.00	48.00	51.00	53.00	39.00	40.00	26.00	37.00	48.00	42.00	48.00	39.00	74.00	66.00	61.00	48.00	42.00	40.00	41.00	42.00	48.00	8.00	50.00	50.00	72.00	19	60.00	11.00	75.00	60.00	28.00	59.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
74	76.00	60.00	7.00	14.00	64.00	50.00	82.00	68.00	64.00	46.00	48.00	34.00	33.00	48.00	8.00	60.00	40.00	48.00	78.00	41.00	39.00	45.00	60.00	48.00	42.00	61.00	46.00	69.00	54.00	48.00	38.00	66.00	72.00	66.00	60.00	64.00	63.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	36.00	76.00	44.00	33.00	48.00	51.00	53.00	39.00	40.00	26.00	38.00	48.00	42.00	49.00	39.00	74.00	66.00	61.00	48.00	42.00	40.00	41.00	42.00	48.00	8.00	50.00	50.00	72.00	20	60.00	13.00	75.00	60.00	28.00	59.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
75	76.00	60.00	7.00	14.00	64.00	50.00	82.00	68.00	64.00	46.00	48.00	34.00	33.00	48.00	8.00	60.00	41.00	48.00	78.00	41.00	39.00	45.00	60.00	48.00	42.00	61.00	46.00	69.00	54.00	48.00	38.00	66.00	72.00	66.00	60.00	64.00	63.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	36.00	76.00	44.00	33.00	48.00	51.00	53.00	39.00	40.00	26.00	38.00	48.00	43.00	49.00	41.00	74.00	66.00	61.00	48.00	42.00	40.00	41.00	42.00	48.00	8.00	50.00	50.00	72.00	21	60.00	3.00	75.00	60.00	28.00	59.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
76	76.00	60.00	7.00	14.00	64.00	50.00	82.00	68.00	65.00	46.00	48.00	34.00	33.00	48.00	8.00	60.00	41.00	50.00	78.00	41.00	39.00	45.00	60.00	48.00	42.00	61.00	46.00	69.00	54.00	48.00	38.00	66.00	72.00	66.00	60.00	64.00	63.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	39.00	76.00	44.00	33.00	48.00	51.00	53.00	39.00	40.00	26.00	38.00	48.00	43.00	49.00	41.00	74.00	66.00	61.00	48.00	42.00	40.00	41.00	42.00	48.00	8.00	50.00	50.00	72.00	22	60.00	5.10	75.00	60.00	28.00	59.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
77	76.00	60.00	7.00	14.00	64.00	50.00	82.00	68.00	70.20	46.00	48.00	34.00	33.00	51.36	8.00	60.00	41.00	50.00	78.00	41.00	39.00	45.00	60.00	48.00	42.00	61.00	46.00	69.00	54.00	48.00	38.00	66.00	72.00	66.00	60.00	64.00	63.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	39.00	76.00	44.00	33.00	48.00	51.00	55.12	39.00	40.00	26.00	38.00	48.00	43.00	49.00	41.00	74.00	66.00	61.00	48.00	42.00	40.00	41.00	42.00	48.00	8.00	50.00	50.00	72.00	23	60.00	5.10	75.00	60.00	26.88	59.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
78	76.00	60.00	7.00	14.00	64.00	50.00	82.00	70.72	70.20	46.00	48.00	34.00	33.00	51.36	8.00	60.00	41.00	50.00	78.00	41.00	39.00	45.00	60.00	48.00	42.00	61.00	46.00	69.00	54.00	48.00	38.00	66.00	72.00	66.00	60.00	64.00	63.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	39.00	76.00	44.00	33.00	48.00	51.00	55.12	39.00	40.00	26.00	38.00	48.00	43.00	49.00	41.00	74.00	66.00	61.00	48.00	42.00	40.00	41.00	44.10	48.00	8.00	50.00	50.00	72.00	24	60.00	5.10	75.00	60.00	27.68	59.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
79	76.00	60.00	7.00	14.00	64.00	50.00	82.00	70.72	70.20	46.00	48.00	34.00	33.00	51.36	8.00	60.00	41.00	50.00	78.00	41.00	39.00	45.00	60.00	48.00	44.10	61.00	46.00	69.00	54.00	48.00	38.00	66.00	72.00	66.00	60.00	64.00	63.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	39.00	76.00	45.00	33.00	48.00	51.00	55.12	39.00	40.00	26.00	38.00	48.00	43.00	49.00	41.00	74.00	67.98	61.00	48.00	42.00	40.00	41.00	44.10	48.00	8.00	50.00	50.00	72.00	25	60.00	2.65	75.00	60.00	26.00	59.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
80	76.00	61.20	7.00	14.00	64.00	50.00	82.00	70.72	70.20	46.00	48.00	34.00	33.00	51.36	8.00	60.00	41.00	50.00	78.00	41.00	39.00	44.00	60.00	48.00	44.10	61.00	46.00	69.00	54.00	48.00	38.00	66.00	72.00	66.00	60.00	64.00	63.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	39.00	76.00	45.00	33.70	48.00	51.00	55.12	39.00	40.00	26.00	38.00	48.00	43.00	51.00	41.00	74.00	70.01	61.00	48.00	42.00	40.00	41.00	44.10	48.00	8.00	50.00	50.00	72.00	26	60.00	4.00	75.00	60.00	25.50	59.00	62.00	48.00	30.00	45.00	46.00	56.00	18.00	25.00	15.00
81	76.00	61.20	7.00	14.00	64.00	50.00	82.00	70.72	70.20	46.00	48.00	34.00	33.00	51.36	8.00	60.00	41.00	50.00	78.00	41.00	39.00	44.00	60.00	48.00	44.10	61.00	46.00	69.00	54.00	48.00	38.00	66.00	72.00	66.00	60.00	64.00	63.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	39.00	76.00	45.00	33.70	48.00	51.00	55.12	39.00	40.00	26.00	38.00	48.00	43.00	51.00	41.00	74.00	70.01	61.00	48.00	42.00	42.50	41.00	44.10	49.00	8.00	51.00	50.00	74.45	27	60.00	3.17	75.00	60.00	25.50	59.00	62.00	48.00	30.00	46.40	46.00	56.00	18.00	25.00	15.00
82	76.00	61.20	7.40	14.00	64.00	50.00	82.00	70.72	70.20	46.00	48.00	34.00	33.00	53.41	8.00	60.00	41.00	50.00	78.00	41.00	39.00	44.00	60.00	48.00	44.10	59.17	46.00	69.00	54.00	48.00	38.00	66.00	72.00	71.28	60.00	64.00	63.00	52.00	80.00	55.00	44.00	48.00	40.00	44.00	39.00	76.00	45.00	33.70	48.00	51.00	55.12	39.00	40.00	26.00	38.00	48.00	43.00	51.00	41.00	74.00	70.01	61.00	48.00	42.00	42.50	41.00	44.10	49.98	8.00	51.00	50.00	74.45	28	60.00	4.55	75.00	60.00	25.50	59.00	62.00	49.92	30.00	46.40	46.00	56.00	19.00	25.00	15.00
83	76.00	61.20	7.40	14.00	64.00	50.00	82.00	70.72	70.20	46.00	48.00	34.00	33.00	53.41	8.00	60.00	41.00	50.00	78.00	41.00	39.00	44.00	60.00	48.00	44.10	59.17	46.00	69.00	54.00	48.00	38.00	66.00	72.00	69.80	60.00	64.00	63.00	52.00	80.00	55.00	43.00	48.00	40.00	45.32	39.00	77.90	45.00	33.70	48.00	51.00	55.12	39.00	40.00	26.00	38.00	48.00	43.00	51.00	41.00	74.00	70.01	61.00	48.00	42.00	42.50	41.00	44.10	49.98	8.00	51.00	50.00	74.45	29	60.00	7.40	75.00	60.00	25.50	59.00	62.00	49.92	30.00	46.40	46.00	58.24	19.00	25.00	15.00
84	76.00	61.20	7.40	14.00	64.00	50.00	82.00	70.72	70.20	46.00	48.00	34.00	33.00	53.41	8.00	60.00	41.00	50.00	78.00	41.00	39.00	44.00	60.00	48.00	44.10	59.17	46.00	69.00	54.00	48.00	38.00	66.00	72.00	69.80	60.00	64.00	63.00	52.00	80.00	55.00	43.00	48.00	40.00	45.32	39.00	77.90	45.00	33.70	48.00	51.00	55.12	39.00	40.00	26.60	38.00	48.00	43.00	51.00	41.00	74.00	70.01	61.00	48.00	42.00	42.50	41.00	44.10	49.98	8.00	51.00	50.00	74.45	29	60.00	7.40	75.00	60.00	25.50	59.00	62.00	49.92	30.00	46.40	46.00	58.24	19.00	25.00	15.00
85	76.00	61.20	7.40	14.00	64.00	50.00	82.00	70.72	70.20	46.00	48.00	34.00	33.00	53.41	8.00	60.00	41.00	50.00	78.00	41.00	39.00	44.00	60.00	48.00	44.10	59.17	46.00	67.62	54.00	48.00	38.00	66.00	72.00	69.80	60.00	64.00	61.11	52.00	80.00	55.00	43.00	48.00	40.00	45.32	39.00	77.90	45.00	33.70	48.00	51.00	55.12	39.00	40.00	26.60	38.00	48.00	43.00	51.00	41.00	2.00	70.01	61.00	48.00	42.00	42.50	41.00	44.10	49.98	8.30	51.00	50.00	74.45	30	60.00	8.58	75.00	60.00	25.50	59.00	62.00	49.92	30.00	46.40	46.00	58.24	19.00	25.00	15.00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password, money, totalstockvalue, profit, r2_d2, aden_skirata, lesser_stormtrooper, ysanne_isard, victorie_talik, eleventh_brother, darth_vader, chewbacca, sergeant_kreel, pt_1178, unknown_valtorax_character, third_brother, second_sister, fixer, thirteenth_brother, dexter_jettster, cyan, grand_admiral_piett, unknown_stemmedaxis06_character, fifth_brother, maze, rav_bralor, epsilon, zeb, agent66, wedge_antilles, cipher9, thrawn, corran_horn, agent_kallus, sixth_sister, chopper, han_solo, ackbar, grand_inquisitor, rex, boba_fett, sabe_nabierre, luke_skywalker, c3po, airen_cracken, strzalk, ninth_sister, ig_88b, garrick_versio, axis, gideon, fenn_shysa, boss, sabine_wren, mara_jade, alpha_17, omega, kal_skirata, gallius_rex, twelfth_brother, eli_vanto, saw_garrera, wolffe, lando_calrissian, evaarla_mereel, kyle_katarn, carnor_jax, mission_vao, x2, seventh_sister, jan_ors, scorch, lumiya, rahm_kota, pellaeon, leia_organa, tempprofit, ghos_gin, janitor, satele, mothma, bo_katan, bossk, snake_zapal, armstrong, death_troopers, nom_carver, samuel_rodrigues, mandalor_the_unwoke, fox, tie_fighter, x_wing) FROM stdin;
14458	Birb	Triplet987	5.48	12068.96	6868.96	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1604.80	0	1406	0	0	0	0	0	0	0	0	0	0	0	0	0
14465	fuck_knee_deep_in_doot	Torrent126	301.02	6555.84	1355.84	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	846.06	0	729	0	0	0	0	0	0	0	0	0	0	0	0	0
14463	Fordo	GifGod77ARCGang	1594.10	5530.71	330.71	1	2	0	0	0	0	5	1	0	0	0	7	2	1	32	0	0	0	0	0	4	0	8	0	4	0	0	2	0	0	0	1	1	0	0	1	0	0	5	0	0	0	0	0	0	1	1	0	1	1	3	2	0	12	0	2	0	0	1	1	0	1	0	0	0	0	0	1	0	0	0	0	-74.76	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0
14447	TheBlueMan	95wowtba	301.52	8533.52	3333.52	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4116	0	0	0	0	0	0	0	0	0	0	0	0	1131.62	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14457	romanova 	4n@kinSkywalker	4200.00	5147.70	-52.30	1	1	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	1	1	1	0	0	0	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	1	-73.38	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14456	Aleya	DMasterRevan.7929	3103.00	4966.54	-233.46	0	0	0	0	0	5	0	9	0	0	1	0	0	0	10	0	1	0	0	0	1	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	1	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	61.36	0	52	0	0	0	0	0	0	0	0	0	0	0	0	0
14433	Waxwing.exe	Malta2007	1345.70	5761.70	561.70	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	92	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14432	Epsilon	AlphaARC	1002.05	6546.95	1346.95	0	7	1	0	0	0	0	0	0	5	0	0	0	0	5	0	0	0	0	0	5	5	7	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3	0	0	0	5	0	20	0	0	0	5	5	1	0	0	0	0	0	0	0	0	0	0	0	0	252.50	1	275	1	0	1	0	0	1	0	0	0	0	0	0	0
14481	I.Like.The.Rain	16Wilafra#	1717.20	2700.00	0.00	0	0	0	0	0	0	0	0	14	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14479	janitor#1fan!!!!!	droiddroid	2500.40	4182.08	682.08	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	231.28	0	196	0	0	0	0	0	0	0	0	0	0	0	0	0
14444	Valtorax	Humb0ges	3700.00	5210.76	10.76	0	0	18	0	0	0	0	0	0	0	17	0	0	0	0	0	0	0	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6	0	0	0	4.16	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0
14437	fraskywalker	fraskywalker	2800.80	4130.70	-1069.30	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	182.90	0	155	0	0	0	0	0	0	0	0	0	0	0	0	0
14474	JANITORGOAT	JANITORWINS	3500.30	3925.76	-674.24	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	55.46	0	47	0	0	0	0	0	0	0	0	0	0	0	0	0
14476	GNK	Sindre123	2500.10	5863.46	2063.46	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	462.56	0	392	0	0	0	0	0	0	0	0	0	0	0	0	0
14431	Storm	JohnStormson	101.92	4669.92	-530.08	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2284	0	0	0	0	0	0	0	0	0	0	0	0	-88.32	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14436	mrcrashmaster	Khgibbons07	3700.00	6087.00	887.00	0	0	255	0	0	0	0	0	0	0	0	0	0	0	0	0	0	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14449	Chad Thundercock	11162316	3104.00	5236.00	36.00	0	0	0	0	0	0	26	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14466	felix	DidUPlaintextThese	2984.00	5211.96	11.96	0	0	10	0	0	2	1	0	0	1	0	0	0	0	10	0	0	0	0	1	0	0	0	0	0	0	1	8	0	0	10	0	0	0	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-11.04	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14475	JANITORGOAT2	JANITORWINS	3500.60	3885.52	-614.48	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	51.92	0	44	0	0	0	0	0	0	0	0	0	0	0	0	0
14472	Peace	Barisulkur2010	3202.00	4628.64	28.64	0	0	0	0	0	0	0	0	0	0	3	0	0	2	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	4	0	0	0	0	5	0	0	0	0	1	0	2	0	0	0.00	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0
14434	JabbaTheStockTrader	Malta2007	1314.50	6534.50	1334.50	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	87	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14448	TheGhos	Be462680	3604.00	5218.30	18.30	0	0	0	0	0	0	0	0	0	0	0	0	18	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	17	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0.30	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14462	vegito39	yoav0515	2568.00	5288.23	88.23	0	0	111	0	0	0	4	0	0	0	0	0	0	0	0	0	0	0	0	0	5	0	0	0	0	2	0	1	1	0	0	0	0	6	4	0	3	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	-75.51	0	3	0	1	0	0	0	0	0	0	1	0	0	0	0
14435	basaldo	6414287@GS	4200.00	6050.00	850.00	0	0	250	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14438	jammywins	rastafari	3728.00	5360.00	160.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	32	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14451	Jam7472	Ilovegothwomen1234	4203.00	5221.96	21.96	0	0	5	0	0	0	1	0	0	0	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	3	0	1	0	0	0	0	0	0	0	0	2	1	0	0	0	1	1	0	0	0	0	0	0	5	0	0	0	0	0	0	0	0	0	0	0	-4.49	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0
14469	volshe	babymeow402	4212.00	5195.55	-4.45	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	5	0	5	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-9.45	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14428	StemmedAxis06	ILoveMen123	2554.08	5264.30	64.30	0	0	0	0	0	0	0	0	0	0	0	5	0	0	21	0	0	0	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	15	0	0	0	0	0	1	21	0	0	0	2	0	0	0	0	0	0	3	0	0	4.72	0	4	0	0	0	0	0	2	0	0	0	0	0	0	0
14445	derredpig	gokuversal	115.81	6251.81	1051.81	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	156	0	0	0	0	0	0	0	9	0	0	0	0	0	0	0	0	0	0	0	0	-648.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14480	I.Like.The.Rain	16Wilafra#	1717.20	2700.00	0.00	0	0	0	0	0	0	0	0	14	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14443	piezerpie	Longlivetheempire	3624.00	5282.00	82.00	1	0	40	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	22	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14461	armada40	armada40	4240.00	5200.00	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	16	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14459	Beans	JohnPork1234	502.40	6622.20	1422.20	0	0	827	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14455	bigbrain__times	yularenGAR	303.76	5262.89	62.89	1	0	1	0	1	1	2	0	1	0	0	0	3	1	0	3	0	1	1	0	1	1	1	1	1	0	1	0	0	1	1	2	2	1	1	1	1	1	1	0	3	0	0	2	1	1	1	1	0	1	3	0	4	1	0	0	2	1	1	1	0	1	0	1	10	1	0	1	1	4	1	5	-60.61	0	11	0	1	0	1	1	0	0	5	0	0	0	4	10
14442	Future	Che@ter12	405.55	5326.55	126.55	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	185	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14429	sixes	blueballs	2504.89	6263.69	1063.69	0	0	0	0	0	0	0	0	0	0	0	0	0	0	156	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	306.80	0	260	0	0	0	0	0	0	0	0	0	0	0	0	0
14468	Ordo	Ordov661!!$	107.55	9056.69	3856.69	0	0	0	0	0	11	0	0	0	0	0	0	0	0	0	0	11	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1014.80	0	883	0	0	0	0	0	6	0	0	0	0	0	0	0
14467	droid	123456789	301.87	5533.67	333.67	0	0	100	2	0	0	0	0	0	0	0	10	10	0	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	14	0	12	10	0	0	21	0	0	0	0	0	0	0	103	0	0	0	0	0	0	0	0	5	0	0	0	73.48	0	37	0	0	10	0	0	0	2	0	0	0	0	0	0
14470	Dubby_Dubbers	Dubbers0410.	304.59	5112.00	412.00	0	0	44	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	17	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	12	0	0	0	0	0	0	0	0	0	0	0	25.69	0	49	0	0	0	0	0	0	0	0	0	35	0	0	0
14473	Votlic	Carbon77115!	3606.00	4574.00	-26.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	43	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	13	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14427	echo	password	306.16	9590.18	4390.18	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	35	0	57	0	0	0	0	35	0	0	0	0	0	0	0	0	0	0	0	0	0	683.22	0	579	0	0	0	0	0	0	0	0	0	0	0	0	0
14477	janitorsixes	balls124	2801.00	5658.14	1858.14	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	392.94	0	333	0	0	0	0	0	0	0	0	0	0	0	0	0
14454	twelve	Lawman1270@	4220.00	4460.24	-739.76	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	33.04	0	28	0	0	0	0	0	0	0	0	0	0	0	0	0
14471	EvilSpamton	Spamton0410.	3522.00	4773.96	73.96	0	0	7	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	16	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14441	sights	sights-1178	3404.00	5294.02	94.02	0	0	14	0	0	0	0	0	0	4	0	0	0	0	0	0	0	4	0	0	0	0	0	0	7	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	16	0	0	0	0	0	0
14440	rahmkotainshallah	rahmkotaballs	5002.00	5200.62	0.62	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	-1.38	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14446	Ferrasi777	pdfgh394ñaih39	3991.00	5227.92	27.92	0	0	2	0	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	10	0	0	3	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14430	publicthrone	thepublicthrone	4224.00	5312.10	112.10	1	0	20	0	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	10	0	0	0	0	0	0	0	0	0	0	0	0.00	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
14478	Claude	ElectricSheep	347.81	3792.70	-7.30	0	0	0	2	0	0	3	7	10	0	0	0	0	0	0	0	0	0	5	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	1	2	0	2	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0	0	0	0	0	0	0	7	0	0	0	0	0	0	0	0	0	0	6	-6.54	0	0	0	0	2	0	0	0	0	0	0	0	0	0	0
\.


--
-- Name: stockvalues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stockvalues_id_seq', 85, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 14481, true);


--
-- Name: stockvalues stockvalues_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stockvalues
    ADD CONSTRAINT stockvalues_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

