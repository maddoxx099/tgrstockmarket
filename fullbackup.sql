--
-- PostgreSQL database dump
--

-- Dumped from database version 12.20 (Ubuntu 12.20-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.20 (Ubuntu 12.20-0ubuntu0.20.04.1)

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
    la_mereel numeric(5,2) DEFAULT 66,
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
    lastchapter integer DEFAULT 9
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
    la_mereel integer DEFAULT 0,
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
    tempprofit numeric(100,2) DEFAULT 0

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
1	1	updateMoneyServer			t	2024-05-18 22:44:26.350379+00	2024-05-18 22:44:26.350379+00	\N	2024-08-22 00:00:00+00	2024-08-21 00:00:03.952911+00
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
-- Data for Name: pga_jobstep; Type: TABLE DATA; Schema: pgagent; Owner: postg

--
-- Data for Name: pga_jobsteplog; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobsteplog (jslid, jsljlgid, jsljstid, jslstatus, jslresult, jslstart, jslduration, jsloutput) FROM stdin;
1	1	1	s	10	2024-08-09 18:23:00.781221+00	00:00:00.006352	
2	2	1	s	13	2024-08-11 06:47:40.171742+00	00:00:00.00568	
3	3	1	s	14	2024-08-12 00:00:00.113071+00	00:00:00.00634	
4	4	1	s	14	2024-08-13 00:00:00.444087+00	00:00:00.005716	
5	5	1	s	15	2024-08-14 00:00:03.928269+00	00:00:00.005622	
6	6	1	s	16	2024-08-15 00:00:02.929649+00	00:00:00.005781	
7	7	1	s	16	2024-08-16 00:00:03.454162+00	00:00:00.005828	
8	8	1	s	16	2024-08-17 00:00:01.299239+00	00:00:00.006024	
9	9	1	s	16	2024-08-18 00:00:00.797366+00	00:00:00.005893	
10	10	1	s	16	2024-08-19 00:00:03.930539+00	00:00:00.005846	
11	11	1	s	16	2024-08-20 00:00:01.446522+00	00:00:00.005945	
12	12	1	s	16	2024-08-21 00:00:03.959062+00	00:00:00.005915	
\.


--
-- Data for Name: stockvalues; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--


--
-- Name: stockvalues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stockvalues_id_seq', 52, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 14424, true);


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

