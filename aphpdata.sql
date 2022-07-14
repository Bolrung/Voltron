--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4
-- Dumped by pg_dump version 14.4

-- Started on 2022-07-08 14:30:04

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
-- TOC entry 212 (class 1259 OID 16406)
-- Name: bloc; Type: TABLE; Schema: public; Owner: Alexa
--

CREATE TABLE public.bloc (
    id integer NOT NULL,
    type character varying(50)
);


ALTER TABLE public.bloc OWNER TO "Alexa";

--
-- TOC entry 226 (class 1259 OID 16499)
-- Name: bloc_hopital; Type: TABLE; Schema: public; Owner: Alexa
--

CREATE TABLE public.bloc_hopital (
    blochopitalid integer NOT NULL,
    hopitalid integer NOT NULL,
    blocid integer NOT NULL,
    quantite integer
);


ALTER TABLE public.bloc_hopital OWNER TO "Alexa";

--
-- TOC entry 225 (class 1259 OID 16498)
-- Name: bloc_hopital_blochopitalid_seq; Type: SEQUENCE; Schema: public; Owner: Alexa
--

CREATE SEQUENCE public.bloc_hopital_blochopitalid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bloc_hopital_blochopitalid_seq OWNER TO "Alexa";

--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 225
-- Name: bloc_hopital_blochopitalid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Alexa
--

ALTER SEQUENCE public.bloc_hopital_blochopitalid_seq OWNED BY public.bloc_hopital.blochopitalid;


--
-- TOC entry 211 (class 1259 OID 16405)
-- Name: bloc_id_seq; Type: SEQUENCE; Schema: public; Owner: Alexa
--

CREATE SEQUENCE public.bloc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bloc_id_seq OWNER TO "Alexa";

--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 211
-- Name: bloc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Alexa
--

ALTER SEQUENCE public.bloc_id_seq OWNED BY public.bloc.id;


--
-- TOC entry 220 (class 1259 OID 16453)
-- Name: brancard; Type: TABLE; Schema: public; Owner: Alexa
--

CREATE TABLE public.brancard (
    brancardid integer NOT NULL,
    hopitalid integer NOT NULL,
    etage character varying(50) NOT NULL,
    quantite integer
);


ALTER TABLE public.brancard OWNER TO "Alexa";

--
-- TOC entry 219 (class 1259 OID 16452)
-- Name: brancard_brancardid_seq; Type: SEQUENCE; Schema: public; Owner: Alexa
--

CREATE SEQUENCE public.brancard_brancardid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.brancard_brancardid_seq OWNER TO "Alexa";

--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 219
-- Name: brancard_brancardid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Alexa
--

ALTER SEQUENCE public.brancard_brancardid_seq OWNED BY public.brancard.brancardid;


--
-- TOC entry 228 (class 1259 OID 16555)
-- Name: capteur_bloc; Type: TABLE; Schema: public; Owner: Alexa
--

CREATE TABLE public.capteur_bloc (
    capteurblocid integer NOT NULL,
    tag character varying(50) NOT NULL,
    hopitalid integer,
    bloc_code character varying(50)
);


ALTER TABLE public.capteur_bloc OWNER TO "Alexa";

--
-- TOC entry 227 (class 1259 OID 16554)
-- Name: capteur_bloc_capteurblocid_seq; Type: SEQUENCE; Schema: public; Owner: Alexa
--

CREATE SEQUENCE public.capteur_bloc_capteurblocid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.capteur_bloc_capteurblocid_seq OWNER TO "Alexa";

--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 227
-- Name: capteur_bloc_capteurblocid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Alexa
--

ALTER SEQUENCE public.capteur_bloc_capteurblocid_seq OWNED BY public.capteur_bloc.capteurblocid;


--
-- TOC entry 210 (class 1259 OID 16397)
-- Name: hopital; Type: TABLE; Schema: public; Owner: Alexa
--

CREATE TABLE public.hopital (
    id integer NOT NULL,
    name character varying(50),
    city character varying(50),
    etage integer
);


ALTER TABLE public.hopital OWNER TO "Alexa";

--
-- TOC entry 209 (class 1259 OID 16396)
-- Name: hopital_id_seq; Type: SEQUENCE; Schema: public; Owner: Alexa
--

CREATE SEQUENCE public.hopital_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hopital_id_seq OWNER TO "Alexa";

--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 209
-- Name: hopital_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Alexa
--

ALTER SEQUENCE public.hopital_id_seq OWNED BY public.hopital.id;


--
-- TOC entry 218 (class 1259 OID 16441)
-- Name: lit; Type: TABLE; Schema: public; Owner: Alexa
--

CREATE TABLE public.lit (
    litid integer NOT NULL,
    hopitalid integer NOT NULL,
    etage character varying(50) NOT NULL,
    quantite integer
);


ALTER TABLE public.lit OWNER TO "Alexa";

--
-- TOC entry 217 (class 1259 OID 16440)
-- Name: lit_litid_seq; Type: SEQUENCE; Schema: public; Owner: Alexa
--

CREATE SEQUENCE public.lit_litid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lit_litid_seq OWNER TO "Alexa";

--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 217
-- Name: lit_litid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Alexa
--

ALTER SEQUENCE public.lit_litid_seq OWNED BY public.lit.litid;


--
-- TOC entry 216 (class 1259 OID 16424)
-- Name: material; Type: TABLE; Schema: public; Owner: Alexa
--

CREATE TABLE public.material (
    id integer NOT NULL,
    type character varying(50)
);


ALTER TABLE public.material OWNER TO "Alexa";

--
-- TOC entry 224 (class 1259 OID 16482)
-- Name: material_hopital; Type: TABLE; Schema: public; Owner: Alexa
--

CREATE TABLE public.material_hopital (
    materialhopitalid integer NOT NULL,
    hopitalid integer NOT NULL,
    materialid integer NOT NULL,
    quantite integer
);


ALTER TABLE public.material_hopital OWNER TO "Alexa";

--
-- TOC entry 223 (class 1259 OID 16481)
-- Name: material_hopital_materialhopitalid_seq; Type: SEQUENCE; Schema: public; Owner: Alexa
--

CREATE SEQUENCE public.material_hopital_materialhopitalid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.material_hopital_materialhopitalid_seq OWNER TO "Alexa";

--
-- TOC entry 3413 (class 0 OID 0)
-- Dependencies: 223
-- Name: material_hopital_materialhopitalid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Alexa
--

ALTER SEQUENCE public.material_hopital_materialhopitalid_seq OWNED BY public.material_hopital.materialhopitalid;


--
-- TOC entry 215 (class 1259 OID 16423)
-- Name: material_id_seq; Type: SEQUENCE; Schema: public; Owner: Alexa
--

CREATE SEQUENCE public.material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.material_id_seq OWNER TO "Alexa";

--
-- TOC entry 3414 (class 0 OID 0)
-- Dependencies: 215
-- Name: material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Alexa
--

ALTER SEQUENCE public.material_id_seq OWNED BY public.material.id;


--
-- TOC entry 222 (class 1259 OID 16465)
-- Name: place_secteur; Type: TABLE; Schema: public; Owner: Alexa
--

CREATE TABLE public.place_secteur (
    palceid integer NOT NULL,
    hopitalid integer NOT NULL,
    secteurid integer NOT NULL,
    quantite integer
);


ALTER TABLE public.place_secteur OWNER TO "Alexa";

--
-- TOC entry 221 (class 1259 OID 16464)
-- Name: place_palceid_seq; Type: SEQUENCE; Schema: public; Owner: Alexa
--

CREATE SEQUENCE public.place_palceid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.place_palceid_seq OWNER TO "Alexa";

--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 221
-- Name: place_palceid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Alexa
--

ALTER SEQUENCE public.place_palceid_seq OWNED BY public.place_secteur.palceid;


--
-- TOC entry 230 (class 1259 OID 16567)
-- Name: releve_bloc; Type: TABLE; Schema: public; Owner: Alexa
--

CREATE TABLE public.releve_bloc (
    releveblocid integer NOT NULL,
    tag character varying(50),
    humidite double precision,
    pression double precision,
    qualite double precision,
    date date
);


ALTER TABLE public.releve_bloc OWNER TO "Alexa";

--
-- TOC entry 229 (class 1259 OID 16566)
-- Name: releve_bloc_releveblocid_seq; Type: SEQUENCE; Schema: public; Owner: Alexa
--

CREATE SEQUENCE public.releve_bloc_releveblocid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.releve_bloc_releveblocid_seq OWNER TO "Alexa";

--
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 229
-- Name: releve_bloc_releveblocid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Alexa
--

ALTER SEQUENCE public.releve_bloc_releveblocid_seq OWNED BY public.releve_bloc.releveblocid;


--
-- TOC entry 214 (class 1259 OID 16415)
-- Name: secteur; Type: TABLE; Schema: public; Owner: Alexa
--

CREATE TABLE public.secteur (
    id integer NOT NULL,
    type character varying(50)
);


ALTER TABLE public.secteur OWNER TO "Alexa";

--
-- TOC entry 213 (class 1259 OID 16414)
-- Name: secteur_id_seq; Type: SEQUENCE; Schema: public; Owner: Alexa
--

CREATE SEQUENCE public.secteur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.secteur_id_seq OWNER TO "Alexa";

--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 213
-- Name: secteur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Alexa
--

ALTER SEQUENCE public.secteur_id_seq OWNED BY public.secteur.id;


--
-- TOC entry 3215 (class 2604 OID 16409)
-- Name: bloc id; Type: DEFAULT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.bloc ALTER COLUMN id SET DEFAULT nextval('public.bloc_id_seq'::regclass);


--
-- TOC entry 3222 (class 2604 OID 16502)
-- Name: bloc_hopital blochopitalid; Type: DEFAULT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.bloc_hopital ALTER COLUMN blochopitalid SET DEFAULT nextval('public.bloc_hopital_blochopitalid_seq'::regclass);


--
-- TOC entry 3219 (class 2604 OID 16456)
-- Name: brancard brancardid; Type: DEFAULT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.brancard ALTER COLUMN brancardid SET DEFAULT nextval('public.brancard_brancardid_seq'::regclass);


--
-- TOC entry 3223 (class 2604 OID 16558)
-- Name: capteur_bloc capteurblocid; Type: DEFAULT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.capteur_bloc ALTER COLUMN capteurblocid SET DEFAULT nextval('public.capteur_bloc_capteurblocid_seq'::regclass);


--
-- TOC entry 3214 (class 2604 OID 16400)
-- Name: hopital id; Type: DEFAULT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.hopital ALTER COLUMN id SET DEFAULT nextval('public.hopital_id_seq'::regclass);


--
-- TOC entry 3218 (class 2604 OID 16444)
-- Name: lit litid; Type: DEFAULT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.lit ALTER COLUMN litid SET DEFAULT nextval('public.lit_litid_seq'::regclass);


--
-- TOC entry 3217 (class 2604 OID 16427)
-- Name: material id; Type: DEFAULT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.material ALTER COLUMN id SET DEFAULT nextval('public.material_id_seq'::regclass);


--
-- TOC entry 3221 (class 2604 OID 16485)
-- Name: material_hopital materialhopitalid; Type: DEFAULT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.material_hopital ALTER COLUMN materialhopitalid SET DEFAULT nextval('public.material_hopital_materialhopitalid_seq'::regclass);


--
-- TOC entry 3220 (class 2604 OID 16468)
-- Name: place_secteur palceid; Type: DEFAULT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.place_secteur ALTER COLUMN palceid SET DEFAULT nextval('public.place_palceid_seq'::regclass);


--
-- TOC entry 3224 (class 2604 OID 16570)
-- Name: releve_bloc releveblocid; Type: DEFAULT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.releve_bloc ALTER COLUMN releveblocid SET DEFAULT nextval('public.releve_bloc_releveblocid_seq'::regclass);


--
-- TOC entry 3216 (class 2604 OID 16418)
-- Name: secteur id; Type: DEFAULT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.secteur ALTER COLUMN id SET DEFAULT nextval('public.secteur_id_seq'::regclass);


--
-- TOC entry 3250 (class 2606 OID 16504)
-- Name: bloc_hopital bloc_hopital_pkey; Type: CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.bloc_hopital
    ADD CONSTRAINT bloc_hopital_pkey PRIMARY KEY (hopitalid, blocid);


--
-- TOC entry 3230 (class 2606 OID 16411)
-- Name: bloc bloc_pkey; Type: CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.bloc
    ADD CONSTRAINT bloc_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 16413)
-- Name: bloc bloc_type_key; Type: CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.bloc
    ADD CONSTRAINT bloc_type_key UNIQUE (type);


--
-- TOC entry 3244 (class 2606 OID 16458)
-- Name: brancard brancard_pkey; Type: CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.brancard
    ADD CONSTRAINT brancard_pkey PRIMARY KEY (hopitalid, etage);


--
-- TOC entry 3252 (class 2606 OID 16560)
-- Name: capteur_bloc capteur_bloc_pkey; Type: CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.capteur_bloc
    ADD CONSTRAINT capteur_bloc_pkey PRIMARY KEY (tag);


--
-- TOC entry 3226 (class 2606 OID 16404)
-- Name: hopital hopital_name_key; Type: CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.hopital
    ADD CONSTRAINT hopital_name_key UNIQUE (name);


--
-- TOC entry 3228 (class 2606 OID 16402)
-- Name: hopital hopital_pkey; Type: CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.hopital
    ADD CONSTRAINT hopital_pkey PRIMARY KEY (id);


--
-- TOC entry 3242 (class 2606 OID 16446)
-- Name: lit lit_pkey; Type: CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.lit
    ADD CONSTRAINT lit_pkey PRIMARY KEY (hopitalid, etage);


--
-- TOC entry 3248 (class 2606 OID 16487)
-- Name: material_hopital material_hopital_pkey; Type: CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.material_hopital
    ADD CONSTRAINT material_hopital_pkey PRIMARY KEY (hopitalid, materialid);


--
-- TOC entry 3238 (class 2606 OID 16429)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id);


--
-- TOC entry 3240 (class 2606 OID 16431)
-- Name: material material_type_key; Type: CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_type_key UNIQUE (type);


--
-- TOC entry 3246 (class 2606 OID 16470)
-- Name: place_secteur place_pkey; Type: CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.place_secteur
    ADD CONSTRAINT place_pkey PRIMARY KEY (hopitalid, secteurid);


--
-- TOC entry 3234 (class 2606 OID 16420)
-- Name: secteur secteur_pkey; Type: CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.secteur
    ADD CONSTRAINT secteur_pkey PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 16422)
-- Name: secteur secteur_type_key; Type: CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.secteur
    ADD CONSTRAINT secteur_type_key UNIQUE (type);


--
-- TOC entry 3260 (class 2606 OID 16510)
-- Name: bloc_hopital blocid; Type: FK CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.bloc_hopital
    ADD CONSTRAINT blocid FOREIGN KEY (blocid) REFERENCES public.bloc(id);


--
-- TOC entry 3253 (class 2606 OID 16447)
-- Name: lit hopitalid; Type: FK CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.lit
    ADD CONSTRAINT hopitalid FOREIGN KEY (hopitalid) REFERENCES public.hopital(id);


--
-- TOC entry 3254 (class 2606 OID 16459)
-- Name: brancard hopitalid; Type: FK CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.brancard
    ADD CONSTRAINT hopitalid FOREIGN KEY (hopitalid) REFERENCES public.hopital(id);


--
-- TOC entry 3255 (class 2606 OID 16471)
-- Name: place_secteur hopitalid; Type: FK CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.place_secteur
    ADD CONSTRAINT hopitalid FOREIGN KEY (hopitalid) REFERENCES public.hopital(id);


--
-- TOC entry 3257 (class 2606 OID 16488)
-- Name: material_hopital hopitalid; Type: FK CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.material_hopital
    ADD CONSTRAINT hopitalid FOREIGN KEY (hopitalid) REFERENCES public.hopital(id);


--
-- TOC entry 3259 (class 2606 OID 16505)
-- Name: bloc_hopital hopitalid; Type: FK CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.bloc_hopital
    ADD CONSTRAINT hopitalid FOREIGN KEY (hopitalid) REFERENCES public.hopital(id);


--
-- TOC entry 3261 (class 2606 OID 16561)
-- Name: capteur_bloc hopitalid; Type: FK CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.capteur_bloc
    ADD CONSTRAINT hopitalid FOREIGN KEY (hopitalid) REFERENCES public.hopital(id);


--
-- TOC entry 3258 (class 2606 OID 16493)
-- Name: material_hopital materialid; Type: FK CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.material_hopital
    ADD CONSTRAINT materialid FOREIGN KEY (materialid) REFERENCES public.material(id);


--
-- TOC entry 3256 (class 2606 OID 16476)
-- Name: place_secteur secteurid; Type: FK CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.place_secteur
    ADD CONSTRAINT secteurid FOREIGN KEY (secteurid) REFERENCES public.secteur(id);


--
-- TOC entry 3262 (class 2606 OID 16571)
-- Name: releve_bloc tag; Type: FK CONSTRAINT; Schema: public; Owner: Alexa
--

ALTER TABLE ONLY public.releve_bloc
    ADD CONSTRAINT tag FOREIGN KEY (tag) REFERENCES public.capteur_bloc(tag);


-- Completed on 2022-07-08 14:30:07

--
-- PostgreSQL database dump complete
--

