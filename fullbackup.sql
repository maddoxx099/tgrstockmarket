--
-- PostgreSQL database dump
--

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
-- Name: stockvalues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stockvalues (
    id integer NOT NULL,
    arye_prays numeric(5,2) DEFAULT 97,
    jango_fett numeric(5,2) DEFAULT 97,
    satele_shan numeric(5,2) DEFAULT 95,
    revan numeric(5,2) DEFAULT 94,
    havok numeric(5,2) DEFAULT 93,
    count_dooku numeric(5,2) DEFAULT 92,
    anakin_skywalker numeric(5,2) DEFAULT 90,
    ahsoka_tano numeric(5,2) DEFAULT 85,
    asharad_hett numeric(5,2) DEFAULT 84,
    general_grievous numeric(5,2) DEFAULT 83,
    seloth numeric(5,2) DEFAULT 82,
    mereel_skirata numeric(5,2) DEFAULT 82,
    venku_kad_skirata numeric(5,2) DEFAULT 81,
    quinlan_vos numeric(5,2) DEFAULT 80,
    near_farr numeric(5,2) DEFAULT 79,
    evaarla_mereel numeric(5,2) DEFAULT 78,
    clarrarifufza numeric(5,2) DEFAULT 75,
    elizabeth_persche numeric(5,2) DEFAULT 75,
    darth_vorhn numeric(5,2) DEFAULT 72,
    wrecker numeric(5,2) DEFAULT 71,
    annalise_dimidium numeric(5,2) DEFAULT 71,
    plo_koon numeric(5,2) DEFAULT 70,
    ghos_gin numeric(5,2) DEFAULT 62,
    tallisibeth_enwandung_esterhazy numeric(5,2) DEFAULT 60,
    sevaronurudo numeric(5,2) DEFAULT 60,
    a_77_fordo numeric(5,2) DEFAULT 59,
    a_07_epsilon numeric(5,2) DEFAULT 59,
    belkrin_priest_wren numeric(5,2) DEFAULT 58,
    rc_5704_storm numeric(5,2) DEFAULT 58,
    rc_6008_goober numeric(5,2) DEFAULT 56,
    meisis_zerliss numeric(5,2) DEFAULT 55,
    cc_1359_obsidian numeric(5,2) DEFAULT 55,
    dryden_vos numeric(5,2) DEFAULT 54,
    the_singer numeric(5,2) DEFAULT 54,
    cc_5597_jesse numeric(5,2) DEFAULT 52,
    rc_1025_fuse numeric(5,2) DEFAULT 51,
    cc_0087_blitz numeric(5,2) DEFAULT 50,
    daybreak_axis numeric(5,2) DEFAULT 45,
    cc_2237_oddball numeric(5,2) DEFAULT 42,
    dagan_gera numeric(5,2) DEFAULT 40,
    ct_1614_hasser numeric(5,2) DEFAULT 40,
    raiden numeric(5,2) DEFAULT 39,
    cc_1178_sights numeric(5,2) DEFAULT 38,
    cc_1212_twelve numeric(5,2) DEFAULT 37,
    ty_rell numeric(5,2) DEFAULT 36,
    valire_ameile_tone numeric(5,2) DEFAULT 30,
    ct_2602_rhino_slayer numeric(5,2) DEFAULT 17,
    bb_c03_cothree numeric(5,2) DEFAULT 12,
    lastchapter integer DEFAULT 9
);

ALTER TABLE public.stockvalues OWNER TO postgres;

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
    tempprofit numeric(100,2) DEFAULT 0,
    lastchapter integer DEFAULT 9,

    arye_prays integer DEFAULT 0,
    jango_fett integer DEFAULT 0,
    satele_shan integer DEFAULT 0,
    revan integer DEFAULT 0,
    havok integer DEFAULT 0,
    count_dooku integer DEFAULT 0,
    anakin_skywalker integer DEFAULT 0,
    ahsoka_tano integer DEFAULT 0,
    asharad_hett integer DEFAULT 0,
    general_grievous integer DEFAULT 0,
    seloth integer DEFAULT 0,
    mereel_skirata integer DEFAULT 0,
    venku_kad_skirata integer DEFAULT 0,
    quinlan_vos integer DEFAULT 0,
    near_farr integer DEFAULT 0,
    evaarla_mereel integer DEFAULT 0,
    clarrarifufza integer DEFAULT 0,
    elizabeth_persche integer DEFAULT 0,
    darth_vorhn integer DEFAULT 0,
    wrecker integer DEFAULT 0,
    annalise_dimidium integer DEFAULT 0,
    plo_koon integer DEFAULT 0,
    ghos_gin integer DEFAULT 0,
    tallisibeth_enwandung_esterhazy integer DEFAULT 0,
    sevaronurudo integer DEFAULT 0,
    a_77_fordo integer DEFAULT 0,
    a_07_epsilon integer DEFAULT 0,
    belkrin_priest_wren integer DEFAULT 0,
    rc_5704_storm integer DEFAULT 0,
    rc_6008_goober integer DEFAULT 0,
    meisis_zerliss integer DEFAULT 0,
    cc_1359_obsidian integer DEFAULT 0,
    dryden_vos integer DEFAULT 0,
    the_singer integer DEFAULT 0,
    cc_5597_jesse integer DEFAULT 0,
    rc_1025_fuse integer DEFAULT 0,
    cc_0087_blitz integer DEFAULT 0,
    daybreak_axis integer DEFAULT 0,
    cc_2237_oddball integer DEFAULT 0,
    dagan_gera integer DEFAULT 0,
    ct_1614_hasser integer DEFAULT 0,
    raiden integer DEFAULT 0,
    cc_1178_sights integer DEFAULT 0,
    cc_1212_twelve integer DEFAULT 0,
    ty_rell integer DEFAULT 0,
    valire_ameile_tone integer DEFAULT 0,
    ct_2602_rhino_slayer integer DEFAULT 0,
    bb_c03_cothree integer DEFAULT 0
);

ALTER TABLE public.users OWNER TO postgres;

--
-- PostgreSQL database dump complete
--
