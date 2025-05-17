--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2025-05-16 23:29:38

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
-- TOC entry 7 (class 2615 OID 222801)
-- Name: pgagent; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgagent;


ALTER SCHEMA pgagent OWNER TO postgres;

--
-- TOC entry 5123 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA pgagent; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA pgagent IS 'pgAgent system tables';


--
-- TOC entry 2 (class 3079 OID 222802)
-- Name: pgagent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgagent WITH SCHEMA pgagent;


--
-- TOC entry 5124 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION pgagent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgagent IS 'A PostgreSQL job scheduler';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 232 (class 1259 OID 222960)
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
    janitor numeric(5,2) DEFAULT 35
);


ALTER TABLE public.stockvalues OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 223036)
-- Name: stockvalues_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stockvalues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stockvalues_id_seq OWNER TO postgres;

--
-- TOC entry 5125 (class 0 OID 0)
-- Dependencies: 233
-- Name: stockvalues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stockvalues_id_seq OWNED BY public.stockvalues.id;


--
-- TOC entry 234 (class 1259 OID 223037)
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
    janitor integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 223118)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 5126 (class 0 OID 0)
-- Dependencies: 235
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4778 (class 2604 OID 223119)
-- Name: stockvalues id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stockvalues ALTER COLUMN id SET DEFAULT nextval('public.stockvalues_id_seq'::regclass);


--
-- TOC entry 4854 (class 2604 OID 223120)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4740 (class 0 OID 222803)
-- Dependencies: 217
-- Data for Name: pga_jobagent; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobagent (jagpid, jaglogintime, jagstation) FROM stdin;
45163	2024-08-11 12:17:40.161801+05:30	halcyon
\.


--
-- TOC entry 4741 (class 0 OID 222812)
-- Dependencies: 219
-- Data for Name: pga_jobclass; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobclass (jclid, jclname) FROM stdin;
\.


--
-- TOC entry 4742 (class 0 OID 222822)
-- Dependencies: 221
-- Data for Name: pga_job; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_job (jobid, jobjclid, jobname, jobdesc, jobhostagent, jobenabled, jobcreated, jobchanged, jobagentid, jobnextrun, joblastrun) FROM stdin;
1	1	updateMoneyServer			t	2024-05-19 04:14:26.350379+05:30	2024-05-19 04:14:26.350379+05:30	\N	2025-05-17 00:00:00+05:30	2024-08-21 05:30:03.952911+05:30
\.


--
-- TOC entry 4744 (class 0 OID 222870)
-- Dependencies: 225
-- Data for Name: pga_schedule; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_schedule (jscid, jscjobid, jscname, jscdesc, jscenabled, jscstart, jscend, jscminutes, jschours, jscweekdays, jscmonthdays, jscmonths) FROM stdin;
1	1	daily		t	2024-05-19 04:30:00+05:30	\N	{t,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{t,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{t,t,t,t,t,t,t}	{f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f,f}	{f,f,f,f,f,f,f,f,f,f,f,f}
\.


--
-- TOC entry 4745 (class 0 OID 222898)
-- Dependencies: 227
-- Data for Name: pga_exception; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_exception (jexid, jexscid, jexdate, jextime) FROM stdin;
\.


--
-- TOC entry 4746 (class 0 OID 222912)
-- Dependencies: 229
-- Data for Name: pga_joblog; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_joblog (jlgid, jlgjobid, jlgstatus, jlgstart, jlgduration) FROM stdin;
1	1	s	2024-08-09 23:53:00.778258+05:30	00:00:00.010281
2	1	s	2024-08-11 12:17:40.169419+05:30	00:00:00.00878
3	1	s	2024-08-12 05:30:00.110954+05:30	00:00:00.00926
4	1	s	2024-08-13 05:30:00.442049+05:30	00:00:00.008507
5	1	s	2024-08-14 05:30:03.926145+05:30	00:00:00.008551
6	1	s	2024-08-15 05:30:02.927457+05:30	00:00:00.00877
7	1	s	2024-08-16 05:30:03.45192+05:30	00:00:00.008841
8	1	s	2024-08-17 05:30:01.297003+05:30	00:00:00.009065
9	1	s	2024-08-18 05:30:00.795245+05:30	00:00:00.008768
10	1	s	2024-08-19 05:30:03.928288+05:30	00:00:00.008825
11	1	s	2024-08-20 05:30:01.444171+05:30	00:00:00.009037
12	1	s	2024-08-21 05:30:03.956738+05:30	00:00:00.009047
\.


--
-- TOC entry 4743 (class 0 OID 222846)
-- Dependencies: 223
-- Data for Name: pga_jobstep; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobstep (jstid, jstjobid, jstname, jstdesc, jstenabled, jstkind, jstcode, jstconnstr, jstdbname, jstonerror, jscnextrun) FROM stdin;
\.


--
-- TOC entry 4747 (class 0 OID 222928)
-- Dependencies: 231
-- Data for Name: pga_jobsteplog; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobsteplog (jslid, jsljlgid, jsljstid, jslstatus, jslresult, jslstart, jslduration, jsloutput) FROM stdin;
\.


--
-- TOC entry 5114 (class 0 OID 222960)
-- Dependencies: 232
-- Data for Name: stockvalues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stockvalues (id, r2_d2, aden_skirata, lesser_stormtrooper, ysanne_isard, victorie_talik, eleventh_brother, darth_vader, chewbacca, sergeant_kreel, pt_1178, unknown_valtorax_character, third_brother, second_sister, fixer, thirteenth_brother, dexter_jettster, cyan, grand_admiral_piett, unknown_stemmedaxis06_character, fifth_brother, maze, rav_bralor, epsilon, zeb, agent66, wedge_antilles, cipher9, thrawn, corran_horn, agent_kallus, sixth_sister, chopper, han_solo, ackbar, grand_inquisitor, rex, boba_fett, sabe_nabierre, luke_skywalker, c3po, airen_cracken, strzalk, ninth_sister, ig_88b, garrick_versio, axis, gideon, fenn_shysa, boss, sabine_wren, mara_jade, alpha_17, omega, kal_skirata, gallius_rex, twelfth_brother, eli_vanto, saw_garrera, wolffe, lando_calrissian, evaarla_mereel, kyle_katarn, carnor_jax, mission_vao, x2, seventh_sister, jan_ors, scorch, lumiya, rahm_kota, pellaeon, leia_organa, lastchapter, ghos_gin, janitor) FROM stdin;
54	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	1	60.00	35.00
55	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	2	60.00	35.00
56	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	3	60.00	35.00
57	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	4	60.00	35.00
58	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	5	60.00	35.00
59	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	6	60.00	35.00
60	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	7	60.00	35.00
61	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	8	60.00	35.00
62	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	9	60.00	35.00
63	76.00	59.00	4.00	14.00	60.00	40.00	80.00	68.00	64.00	46.00	48.00	32.00	32.00	48.00	8.00	60.00	40.00	48.00	78.00	40.00	36.00	44.00	60.00	48.00	42.00	60.00	46.00	68.00	51.00	48.00	40.00	66.00	72.00	68.00	62.00	64.00	61.00	52.00	79.00	55.00	44.00	48.00	40.00	44.00	38.00	74.00	46.00	30.00	48.00	50.00	52.00	34.00	40.00	26.00	40.00	48.00	41.00	46.00	32.00	74.00	66.00	61.00	44.00	42.00	40.00	40.00	42.00	48.00	8.00	51.00	48.00	72.00	10	60.00	35.00
\.


--
-- TOC entry 5116 (class 0 OID 223037)
-- Dependencies: 234
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password, money, totalstockvalue, profit, r2_d2, aden_skirata, lesser_stormtrooper, ysanne_isard, victorie_talik, eleventh_brother, darth_vader, chewbacca, sergeant_kreel, pt_1178, unknown_valtorax_character, third_brother, second_sister, fixer, thirteenth_brother, dexter_jettster, cyan, grand_admiral_piett, unknown_stemmedaxis06_character, fifth_brother, maze, rav_bralor, epsilon, zeb, agent66, wedge_antilles, cipher9, thrawn, corran_horn, agent_kallus, sixth_sister, chopper, han_solo, ackbar, grand_inquisitor, rex, boba_fett, sabe_nabierre, luke_skywalker, c3po, airen_cracken, strzalk, ninth_sister, ig_88b, garrick_versio, axis, gideon, fenn_shysa, boss, sabine_wren, mara_jade, alpha_17, omega, kal_skirata, gallius_rex, twelfth_brother, eli_vanto, saw_garrera, wolffe, lando_calrissian, evaarla_mereel, kyle_katarn, carnor_jax, mission_vao, x2, seventh_sister, jan_ors, scorch, lumiya, rahm_kota, pellaeon, leia_organa, tempprofit, ghos_gin, janitor) FROM stdin;
\.


--
-- TOC entry 5127 (class 0 OID 0)
-- Dependencies: 233
-- Name: stockvalues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.stockvalues_id_seq', 63, true);


--
-- TOC entry 5128 (class 0 OID 0)
-- Dependencies: 235
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 14426, true);


--
-- TOC entry 4968 (class 2606 OID 223122)
-- Name: stockvalues stockvalues_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stockvalues
    ADD CONSTRAINT stockvalues_pkey PRIMARY KEY (id);


--
-- TOC entry 4970 (class 2606 OID 223124)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


-- Completed on 2025-05-16 23:29:39

--
-- PostgreSQL database dump complete
--

