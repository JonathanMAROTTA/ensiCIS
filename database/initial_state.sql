--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2 (Debian 17.2-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: addresses; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.addresses (
    userid integer,
    id integer NOT NULL,
    fullname character varying(255),
    mobilenum bigint,
    zipcode character varying(255),
    streetaddress character varying(255),
    city character varying(255),
    state character varying(255),
    country character varying(255),
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.addresses OWNER TO projetcis;

--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.addresses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.addresses_id_seq OWNER TO projetcis;

--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;


--
-- Name: basketitems; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.basketitems (
    productid integer,
    basketid integer,
    id integer NOT NULL,
    quantity integer,
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.basketitems OWNER TO projetcis;

--
-- Name: basketitems_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.basketitems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.basketitems_id_seq OWNER TO projetcis;

--
-- Name: basketitems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.basketitems_id_seq OWNED BY public.basketitems.id;


--
-- Name: baskets; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.baskets (
    id integer NOT NULL,
    coupon character varying(255),
    userid integer,
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.baskets OWNER TO projetcis;

--
-- Name: baskets_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.baskets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.baskets_id_seq OWNER TO projetcis;

--
-- Name: baskets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.baskets_id_seq OWNED BY public.baskets.id;


--
-- Name: captchas; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.captchas (
    id integer NOT NULL,
    captchaid integer,
    captcha character varying(255),
    answer character varying(255),
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.captchas OWNER TO projetcis;

--
-- Name: captchas_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.captchas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.captchas_id_seq OWNER TO projetcis;

--
-- Name: captchas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.captchas_id_seq OWNED BY public.captchas.id;


--
-- Name: cards; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.cards (
    userid integer,
    id integer NOT NULL,
    fullname character varying(255),
    cardnum bigint,
    expmonth integer,
    expyear integer,
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.cards OWNER TO projetcis;

--
-- Name: cards_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.cards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cards_id_seq OWNER TO projetcis;

--
-- Name: cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.cards_id_seq OWNED BY public.cards.id;


--
-- Name: challenges; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.challenges (
    id integer NOT NULL,
    key character varying(255),
    name character varying(255),
    category character varying(255),
    tags character varying(255),
    description text,
    difficulty integer,
    hint character varying(255),
    hinturl character varying(255),
    mitigationurl character varying(255),
    solved boolean,
    disabledenv character varying(255),
    tutorialorder integer,
    codingchallengestatus integer,
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.challenges OWNER TO projetcis;

--
-- Name: challenges_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.challenges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.challenges_id_seq OWNER TO projetcis;

--
-- Name: challenges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.challenges_id_seq OWNED BY public.challenges.id;


--
-- Name: complaints; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.complaints (
    userid integer,
    id integer NOT NULL,
    message character varying(255),
    file character varying(255),
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.complaints OWNER TO projetcis;

--
-- Name: complaints_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.complaints_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.complaints_id_seq OWNER TO projetcis;

--
-- Name: complaints_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.complaints_id_seq OWNED BY public.complaints.id;


--
-- Name: deliveries; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.deliveries (
    id integer NOT NULL,
    name character varying(255),
    price double precision,
    deluxeprice double precision,
    eta double precision,
    icon character varying(255),
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.deliveries OWNER TO projetcis;

--
-- Name: deliveries_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.deliveries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.deliveries_id_seq OWNER TO projetcis;

--
-- Name: deliveries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.deliveries_id_seq OWNED BY public.deliveries.id;


--
-- Name: feedbacks; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.feedbacks (
    userid integer,
    id integer NOT NULL,
    comment character varying(255),
    rating integer NOT NULL,
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.feedbacks OWNER TO projetcis;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.feedbacks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.feedbacks_id_seq OWNER TO projetcis;

--
-- Name: feedbacks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.feedbacks_id_seq OWNED BY public.feedbacks.id;


--
-- Name: imagecaptchas; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.imagecaptchas (
    id integer NOT NULL,
    image character varying(255),
    answer character varying(255),
    userid integer,
    createdat timestamp with time zone,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.imagecaptchas OWNER TO projetcis;

--
-- Name: imagecaptchas_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.imagecaptchas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.imagecaptchas_id_seq OWNER TO projetcis;

--
-- Name: imagecaptchas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.imagecaptchas_id_seq OWNED BY public.imagecaptchas.id;


--
-- Name: memories; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.memories (
    userid integer,
    id integer NOT NULL,
    caption character varying(255),
    imagepath character varying(255),
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.memories OWNER TO projetcis;

--
-- Name: memories_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.memories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.memories_id_seq OWNER TO projetcis;

--
-- Name: memories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.memories_id_seq OWNED BY public.memories.id;


--
-- Name: privacyrequests; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.privacyrequests (
    id integer NOT NULL,
    userid integer,
    deletionrequested boolean DEFAULT false,
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.privacyrequests OWNER TO projetcis;

--
-- Name: privacyrequests_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.privacyrequests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.privacyrequests_id_seq OWNER TO projetcis;

--
-- Name: privacyrequests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.privacyrequests_id_seq OWNED BY public.privacyrequests.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255),
    description text,
    price numeric,
    deluxeprice numeric,
    image character varying(255),
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL,
    deletedat timestamp with time zone
);


ALTER TABLE public.products OWNER TO projetcis;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_id_seq OWNER TO projetcis;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: quantities; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.quantities (
    productid integer,
    id integer NOT NULL,
    quantity integer,
    limitperuser integer,
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.quantities OWNER TO projetcis;

--
-- Name: quantities_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.quantities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.quantities_id_seq OWNER TO projetcis;

--
-- Name: quantities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.quantities_id_seq OWNED BY public.quantities.id;


--
-- Name: recycles; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.recycles (
    userid integer,
    addressid integer,
    id integer NOT NULL,
    quantity integer,
    ispickup boolean DEFAULT false,
    date timestamp with time zone,
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.recycles OWNER TO projetcis;

--
-- Name: recycles_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.recycles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.recycles_id_seq OWNER TO projetcis;

--
-- Name: recycles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.recycles_id_seq OWNED BY public.recycles.id;


--
-- Name: securityanswers; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.securityanswers (
    userid integer,
    securityquestionid integer,
    id integer NOT NULL,
    answer character varying(255),
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.securityanswers OWNER TO projetcis;

--
-- Name: securityanswers_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.securityanswers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.securityanswers_id_seq OWNER TO projetcis;

--
-- Name: securityanswers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.securityanswers_id_seq OWNED BY public.securityanswers.id;


--
-- Name: securityquestions; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.securityquestions (
    id integer NOT NULL,
    question character varying(255),
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.securityquestions OWNER TO projetcis;

--
-- Name: securityquestions_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.securityquestions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.securityquestions_id_seq OWNER TO projetcis;

--
-- Name: securityquestions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.securityquestions_id_seq OWNED BY public.securityquestions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(255) DEFAULT ''::character varying,
    email character varying(255),
    password character varying(255),
    role character varying(255) DEFAULT 'customer'::character varying,
    deluxetoken character varying(255) DEFAULT ''::character varying,
    lastloginip character varying(255) DEFAULT '0.0.0.0'::character varying,
    profileimage character varying(255) DEFAULT '/assets/public/images/uploads/default.svg'::character varying,
    totpsecret character varying(255) DEFAULT ''::character varying,
    isactive boolean DEFAULT true,
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL,
    deletedat timestamp with time zone
);


ALTER TABLE public.users OWNER TO projetcis;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO projetcis;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: wallets; Type: TABLE; Schema: public; Owner: projetcis
--

CREATE TABLE public.wallets (
    userid integer,
    id integer NOT NULL,
    balance integer DEFAULT 0,
    createdat timestamp with time zone NOT NULL,
    updatedat timestamp with time zone NOT NULL
);


ALTER TABLE public.wallets OWNER TO projetcis;

--
-- Name: wallets_id_seq; Type: SEQUENCE; Schema: public; Owner: projetcis
--

CREATE SEQUENCE public.wallets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.wallets_id_seq OWNER TO projetcis;

--
-- Name: wallets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: projetcis
--

ALTER SEQUENCE public.wallets_id_seq OWNED BY public.wallets.id;


--
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);


--
-- Name: basketitems id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.basketitems ALTER COLUMN id SET DEFAULT nextval('public.basketitems_id_seq'::regclass);


--
-- Name: baskets id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.baskets ALTER COLUMN id SET DEFAULT nextval('public.baskets_id_seq'::regclass);


--
-- Name: captchas id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.captchas ALTER COLUMN id SET DEFAULT nextval('public.captchas_id_seq'::regclass);


--
-- Name: cards id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.cards ALTER COLUMN id SET DEFAULT nextval('public.cards_id_seq'::regclass);


--
-- Name: challenges id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.challenges ALTER COLUMN id SET DEFAULT nextval('public.challenges_id_seq'::regclass);


--
-- Name: complaints id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.complaints ALTER COLUMN id SET DEFAULT nextval('public.complaints_id_seq'::regclass);


--
-- Name: deliveries id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.deliveries ALTER COLUMN id SET DEFAULT nextval('public.deliveries_id_seq'::regclass);


--
-- Name: feedbacks id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.feedbacks ALTER COLUMN id SET DEFAULT nextval('public.feedbacks_id_seq'::regclass);


--
-- Name: imagecaptchas id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.imagecaptchas ALTER COLUMN id SET DEFAULT nextval('public.imagecaptchas_id_seq'::regclass);


--
-- Name: memories id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.memories ALTER COLUMN id SET DEFAULT nextval('public.memories_id_seq'::regclass);


--
-- Name: privacyrequests id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.privacyrequests ALTER COLUMN id SET DEFAULT nextval('public.privacyrequests_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: quantities id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.quantities ALTER COLUMN id SET DEFAULT nextval('public.quantities_id_seq'::regclass);


--
-- Name: recycles id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.recycles ALTER COLUMN id SET DEFAULT nextval('public.recycles_id_seq'::regclass);


--
-- Name: securityanswers id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.securityanswers ALTER COLUMN id SET DEFAULT nextval('public.securityanswers_id_seq'::regclass);


--
-- Name: securityquestions id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.securityquestions ALTER COLUMN id SET DEFAULT nextval('public.securityquestions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: wallets id; Type: DEFAULT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.wallets ALTER COLUMN id SET DEFAULT nextval('public.wallets_id_seq'::regclass);


--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.addresses (userid, id, fullname, mobilenum, zipcode, streetaddress, city, state, country, createdat, updatedat) FROM stdin;
3	1	Bjoern Kimminich	4917000001	25436	Am Lokalhorst 42	Uetersen	Schleswig-Holstein	Germany	2024-11-25 14:33:23.085+00	2024-11-25 14:33:23.085+00
17	2	Tim Tester	4917000000	12345	Dummystreet 42	Mocktown	Testilvania	United Fakedom	2024-11-25 14:33:23.148+00	2024-11-25 14:33:23.148+00
2	3	Administrator	1234567890	4711	0815 Test Street	Test	Test	Test	2024-11-25 14:33:23.151+00	2024-11-25 14:33:23.151+00
1	4	Jim	523423432	1701	Room 3F 121	Deck 5	USS Enterprise	Space	2024-11-25 14:33:23.154+00	2024-11-25 14:33:23.154+00
1	5	Sam	1000000783	GSK783	Deneva Colony	Deneva	Beta Darius System	United Federation of Planets	2024-11-25 14:33:23.154+00	2024-11-25 14:33:23.154+00
4	6	Bender	797675345	10001	Robot Arms Apts 42	New New York	New New York	Planet Earth	2024-11-25 14:33:23.157+00	2024-11-25 14:33:23.157+00
\.


--
-- Data for Name: basketitems; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.basketitems (productid, basketid, id, quantity, createdat, updatedat) FROM stdin;
2	1	2	3	2024-11-25 14:33:23.483+00	2024-11-25 14:33:23.483+00
1	1	1	2	2024-11-25 14:33:23.483+00	2024-11-25 14:33:23.483+00
3	1	3	1	2024-11-25 14:33:23.483+00	2024-11-25 14:33:23.483+00
4	2	4	2	2024-11-25 14:33:23.483+00	2024-11-25 14:33:23.483+00
4	3	5	1	2024-11-25 14:33:23.483+00	2024-11-25 14:33:23.483+00
4	4	6	2	2024-11-25 14:33:23.484+00	2024-11-25 14:33:23.484+00
3	5	7	5	2024-11-25 14:33:23.484+00	2024-11-25 14:33:23.484+00
4	5	8	2	2024-11-25 14:33:23.484+00	2024-11-25 14:33:23.484+00
\.


--
-- Data for Name: baskets; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.baskets (id, coupon, userid, createdat, updatedat) FROM stdin;
1	\N	1	2024-11-25 14:33:23.473+00	2024-11-25 14:33:23.473+00
2	\N	2	2024-11-25 14:33:23.473+00	2024-11-25 14:33:23.473+00
3	\N	3	2024-11-25 14:33:23.473+00	2024-11-25 14:33:23.473+00
4	\N	11	2024-11-25 14:33:23.473+00	2024-11-25 14:33:23.473+00
5	\N	16	2024-11-25 14:33:23.473+00	2024-11-25 14:33:23.473+00
\.


--
-- Data for Name: captchas; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.captchas (id, captchaid, captcha, answer, createdat, updatedat) FROM stdin;
\.


--
-- Data for Name: cards; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.cards (userid, id, fullname, cardnum, expmonth, expyear, createdat, updatedat) FROM stdin;
3	1	Bjoern Kimminich	4815205605542754	12	2092	2024-11-25 14:33:23.129+00	2024-11-25 14:33:23.129+00
2	2	Administrator	4716190207394368	2	2081	2024-11-25 14:33:23.159+00	2024-11-25 14:33:23.159+00
2	3	Administrator	4024007105648108	4	2086	2024-11-25 14:33:23.159+00	2024-11-25 14:33:23.159+00
1	4	Jim	5107891722278705	11	2099	2024-11-25 14:33:23.162+00	2024-11-25 14:33:23.162+00
17	5	Tim Tester	1234567812345678	12	2099	2024-11-25 14:33:23.164+00	2024-11-25 14:33:23.164+00
4	6	Bender	4716943969046208	2	2081	2024-11-25 14:33:23.166+00	2024-11-25 14:33:23.166+00
\.


--
-- Data for Name: challenges; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.challenges (id, key, name, category, tags, description, difficulty, hint, hinturl, mitigationurl, solved, disabledenv, tutorialorder, codingchallengestatus, createdat, updatedat) FROM stdin;
1	restfulXssChallenge	API-only XSS	XSS	Danger Zone	Perform a <i>persisted</i> XSS attack with <code>&lt;iframe src="javascript:alert(`xss`)"&gt;</code> without using the frontend application at all. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	3	You need to work with the server-side API directly. Try different HTTP verbs on different entities exposed through the API.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/xss.html#_perform_a_persisted_xss_attack_without_using_the_frontend_application_at_all	https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html	f	Docker	\N	0	2024-11-25 14:33:23.187+00	2024-11-25 14:33:23.187+00
2	accessLogDisclosureChallenge	Access Log	Sensitive Data Exposure	\N	Gain access to any access log file of the server.	4	Who would want a server access log to be accessible through a web application?	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_gain_access_to_any_access_log_file_of_the_server	https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.187+00	2024-11-25 14:33:23.187+00
3	registerAdminChallenge	Admin Registration	Improper Input Validation	\N	Register as a user with administrator privileges.	3	You have to assign the unassignable.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/improper-input-validation.html#_register_as_a_user_with_administrator_privileges	https://cheatsheetseries.owasp.org/cheatsheets/Mass_Assignment_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.188+00	2024-11-25 14:33:23.188+00
4	fileWriteChallenge	Arbitrary File Write	Vulnerable Components	Danger Zone,Prerequisite	Overwrite the <a href="/ftp/legal.md">Legal Information</a> file. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	6	Look out for a tweet praising new functionality of the web shop. Then find a third party vulnerability associated with it.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/vulnerable-components.html#_overwrite_the_legal_information_file	https://cheatsheetseries.owasp.org/cheatsheets/Vulnerable_Dependency_Management_Cheat_Sheet.html	f	Docker	\N	0	2024-11-25 14:33:23.189+00	2024-11-25 14:33:23.189+00
5	adminSectionChallenge	Admin Section	Broken Access Control	Good for Demos	Access the administration section of the store.	2	It is just slightly harder to find than the score board link.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-access-control.html#_access_the_administration_section_of_the_store	https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html	f	\N	7	0	2024-11-25 14:33:23.188+00	2024-11-25 14:33:23.188+00
6	resetPasswordBjoernOwaspChallenge	Bjoern's Favorite Pet	Broken Authentication	OSINT	Reset the password of Bjoern's OWASP account via the <a href="/#/forgot-password">Forgot Password</a> mechanism with <i>the original answer</i> to his security question.	3	He might have trumpeted it on at least one occasion where a camera was running. Maybe elsewhere as well.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-authentication.html#_reset_the_password_of_bjoerns_owasp_account_via_the_forgot_password_mechanism	https://cheatsheetseries.owasp.org/cheatsheets/Choosing_and_Using_Security_Questions_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.189+00	2024-11-25 14:33:23.189+00
7	tokenSaleChallenge	Blockchain Hype	Security through Obscurity	Contraption,Code Analysis,Web3	Learn about the Token Sale before its official announcement.	5	The developers truly believe in "Security through Obscurity" over actual access restrictions.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/security-through-obscurity.html#_learn_about_the_token_sale_before_its_official_announcement	\N	f	\N	\N	0	2024-11-25 14:33:23.19+00	2024-11-25 14:33:23.19+00
8	nftUnlockChallenge	NFT Takeover	Sensitive Data Exposure	Contraption,Good for Demos,Web3	Take over the wallet containing our official Soul Bound Token (NFT).	2	Find the seed phrase posted accidentally.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_take_over_the_wallet_containing_our_official_soul_bound_token	\N	f	\N	\N	0	2024-11-25 14:33:23.19+00	2024-11-25 14:33:23.19+00
9	nftMintChallenge	Mint the Honey Pot	Improper Input Validation	Web3,Internet Traffic	Mint the Honey Pot NFT by gathering BEEs from the bee haven.	3	Discover NFT wonders among the captivating visual memories.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/improper-input-validation.html#_mint_the_honey_pot_nft_by_gathering_bees_from_the_bee_haven	\N	f	\N	\N	0	2024-11-25 14:33:23.191+00	2024-11-25 14:33:23.191+00
10	web3WalletChallenge	Wallet Depletion	Miscellaneous	Web3,Internet Traffic	Withdraw more ETH from the new wallet than you deposited.	6	Try to exploit the contract of the wallet.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/miscellaneous.html#_withdraw_more_eth_from_the_new_wallet_than_you_deposited	\N	f	\N	\N	0	2024-11-25 14:33:23.191+00	2024-11-25 14:33:23.191+00
11	web3SandboxChallenge	Web3 Sandbox	Broken Access Control	Web3	Find an accidentally deployed code sandbox for writing smart contracts on the fly.	1	It is just as easy as finding the Score Board.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-access-control.html#_find_an_accidentally_deployed_code_sandbox	\N	f	\N	\N	0	2024-11-25 14:33:23.191+00	2024-11-25 14:33:23.191+00
12	rceChallenge	Blocked RCE DoS	Insecure Deserialization	Danger Zone	Perform a Remote Code Execution that would keep a less hardened application busy <em>forever</em>. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	5	The feature you need to exploit for this challenge is not directly advertised anywhere.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/insecure-deserialization.html#_perform_a_remote_code_execution_that_would_keep_a_less_hardened_application_busy_forever	https://cheatsheetseries.owasp.org/cheatsheets/Denial_of_Service_Cheat_Sheet.html	f	Docker	\N	0	2024-11-25 14:33:23.192+00	2024-11-25 14:33:23.192+00
13	captchaBypassChallenge	CAPTCHA Bypass	Broken Anti Automation	Brute Force	Submit 10 or more customer feedbacks within 20 seconds.	3	After finding a CAPTCHA bypass, write a script that automates feedback submission. Or open many browser tabs and be really quick.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-anti-automation.html#_submit_10_or_more_customer_feedbacks_within_20_seconds	\N	f	\N	\N	0	2024-11-25 14:33:23.192+00	2024-11-25 14:33:23.192+00
14	changePasswordBenderChallenge	Change Bender's Password	Broken Authentication	\N	Change Bender's password into <i>slurmCl4ssic</i> without using SQL Injection or Forgot Password.	5	In previous releases this challenge was wrongly accused of being based on CSRF.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-authentication.html#_change_benders_password_into_slurmcl4ssic_without_using_sql_injection_or_forgot_password	https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.193+00	2024-11-25 14:33:23.193+00
15	christmasSpecialChallenge	Christmas Special	Injection	\N	Order the Christmas special offer of 2014.	4	Find out how the application handles unavailable products and try to find a loophole.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/injection.html#_order_the_christmas_special_offer_of_2014	https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.193+00	2024-11-25 14:33:23.193+00
16	usernameXssChallenge	CSP Bypass	XSS	Danger Zone	Bypass the Content Security Policy and perform an XSS attack with <code>&lt;script&gt;alert(`xss`)&lt;/script&gt;</code> on a legacy page within the application. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	4	What is even "better" than a legacy page with a homegrown RegEx sanitizer? Having CSP injection issues on the exact same page as well!	https://pwning.owasp-juice.shop/companion-guide/latest/part2/xss.html#_bypass_the_content_security_policy_and_perform_an_xss_attack_on_a_legacy_page	https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html	f	Docker	\N	0	2024-11-25 14:33:23.194+00	2024-11-25 14:33:23.194+00
20	dbSchemaChallenge	Database Schema	Injection	\N	Exfiltrate the entire DB schema definition via SQL Injection.	3	Find out where this information could come from. Then craft a UNION SELECT attack string against an endpoint that offers an unnecessary way to filter data.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/injection.html#_exfiltrate_the_entire_db_schema_definition_via_sql_injection	https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.195+00	2024-11-25 14:33:23.195+00
24	emptyUserRegistration	Empty User Registration	Improper Input Validation	\N	Register a user with an empty email and password.	2	Consider intercepting and playing with the request payload.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/improper-input-validation.html#_register_a_user_account_with_an_empty_email_and_password	https://cheatsheetseries.owasp.org/cheatsheets/Input_Validation_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.196+00	2024-11-25 14:33:23.196+00
28	extraLanguageChallenge	Extra Language	Broken Anti Automation	Brute Force	Retrieve the language file that never made it into production.	5	Brute force is not the only option for this challenge, but a perfectly viable one.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-anti-automation.html#_retrieve_the_language_file_that_never_made_it_into_production	\N	f	\N	\N	0	2024-11-25 14:33:23.198+00	2024-11-25 14:33:23.198+00
32	forgedReviewChallenge	Forged Review	Broken Access Control	\N	Post a product review as another user or edit any user's existing review.	3	Observe the flow of product review posting and editing and see if you can exploit it.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-access-control.html#_post_a_product_review_as_another_user_or_edit_any_users_existing_review	https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.199+00	2024-11-25 14:33:23.199+00
36	typosquattingAngularChallenge	Frontend Typosquatting	Vulnerable Components	\N	<a href="/#/contact">Inform the shop</a> about a <i>typosquatting</i> imposter that dug itself deep into the frontend. (Mention the exact name of the culprit)	5	This challenge has nothing to do with mistyping web domains. There is no conveniently misplaced file helping you with this one either. Or is there?	https://pwning.owasp-juice.shop/companion-guide/latest/part2/vulnerable-components.html#_inform_the_shop_about_a_typosquatting_imposter_that_dug_itself_deep_into_the_frontend	https://cheatsheetseries.owasp.org/cheatsheets/Vulnerable_Dependency_Management_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.201+00	2024-11-25 14:33:23.201+00
40	continueCodeChallenge	Imaginary Challenge	Cryptographic Issues	Shenanigans,Code Analysis	Solve challenge #999. Unfortunately, this challenge does not exist.	6	You need to trick the hacking progress persistence feature into thinking you solved challenge #999.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/cryptographic-issues.html#_solve_challenge_999	https://cheatsheetseries.owasp.org/cheatsheets/Cryptographic_Storage_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.201+00	2024-11-25 14:33:23.201+00
44	loginAdminChallenge	Login Admin	Injection	Tutorial,Good for Demos	Log in with the administrator's user account.	2	Try different SQL Injection attack patterns depending whether you know the admin's email address or not.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/injection.html#_log_in_with_the_administrators_user_account	https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html	f	\N	6	0	2024-11-25 14:33:23.202+00	2024-11-25 14:33:23.202+00
48	loginJimChallenge	Login Jim	Injection	Tutorial	Log in with Jim's user account.	3	Try cracking Jim's password hash if you harvested it already. Alternatively, if you know Jim's email address, try SQL Injection.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/injection.html#_log_in_with_jims_user_account	https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html	f	\N	11	0	2024-11-25 14:33:23.203+00	2024-11-25 14:33:23.203+00
52	misplacedSignatureFileChallenge	Misplaced Signature File	Sensitive Data Exposure	Good Practice,Contraption	Access a misplaced <a href="https://github.com/Neo23x0/sigma">SIEM signature</a> file.	4	You need to trick a security mechanism into thinking that the file you want has a valid file type.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_access_a_misplaced_siem_signature_file	https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.203+00	2024-11-25 14:33:23.203+00
56	noSqlOrdersChallenge	NoSQL Exfiltration	Injection	Danger Zone	All your orders are belong to us! Even the ones which don't. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	5	Take a close look on how the $where query operator works in MongoDB.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/injection.html#_all_your_orders_are_belong_to_us	https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet.html	f	Docker	\N	0	2024-11-25 14:33:23.204+00	2024-11-25 14:33:23.204+00
60	negativeOrderChallenge	Payback Time	Improper Input Validation	\N	Place an order that makes you rich.	3	You literally need to make the shop owe you any amount of money.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/improper-input-validation.html#_place_an_order_that_makes_you_rich	https://cheatsheetseries.owasp.org/cheatsheets/Input_Validation_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.205+00	2024-11-25 14:33:23.205+00
64	changeProductChallenge	Product Tampering	Broken Access Control	\N	Change the <code>href</code> of the link within the <a href="/#/search?q=OWASP SSL Advanced Forensic Tool (O-Saft)">OWASP SSL Advanced Forensic Tool (O-Saft)</a> product description into <i>https://owasp.slack.com</i>.	3	Look for one of the following: a) broken admin functionality, b) holes in RESTful API or c) possibility for SQL Injection.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-access-control.html#_change_the_href_of_the_link_within_the_o_saft_product_description	https://cheatsheetseries.owasp.org/cheatsheets/REST_Security_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.205+00	2024-11-25 14:33:23.205+00
68	resetPasswordBjoernChallenge	Reset Bjoern's Password	Broken Authentication	OSINT	Reset the password of Bjoern's internal account via the <a href="/#/forgot-password">Forgot Password</a> mechanism with <i>the original answer</i> to his security question.	5	Nothing a little bit of Facebook stalking couldn't reveal. Might involve a historical twist.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-authentication.html#_reset_the_password_of_bjoerns_internal_account_via_the_forgot_password_mechanism	https://cheatsheetseries.owasp.org/cheatsheets/Choosing_and_Using_Security_Questions_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.206+00	2024-11-25 14:33:23.206+00
17	persistedXssUserChallenge	Client-side XSS Protection	XSS	Danger Zone	Perform a <i>persisted</i> XSS attack with <code>&lt;iframe src="javascript:alert(`xss`)"&gt;</code> bypassing a <i>client-side</i> security mechanism. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	3	Only some input fields validate their input. Even less of these are persisted in a way where their content is shown on another screen.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/xss.html#_perform_a_persisted_xss_attack_bypassing_a_client_side_security_mechanism	https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html	f	Docker	\N	0	2024-11-25 14:33:23.194+00	2024-11-25 14:33:23.194+00
21	deprecatedInterfaceChallenge	Deprecated Interface	Security Misconfiguration	Contraption,Prerequisite	Use a deprecated B2B interface that was not properly shut down.	2	The developers who disabled the interface think they could go invisible by just closing their eyes.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/security-misconfiguration.html#_use_a_deprecated_b2b_interface_that_was_not_properly_shut_down	https://cheatsheetseries.owasp.org/cheatsheets/Web_Service_Security_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.195+00	2024-11-25 14:33:23.195+00
25	ephemeralAccountantChallenge	Ephemeral Accountant	Injection	\N	Log in with the (non-existing) accountant <i>acc0unt4nt@juice-sh.op</i> without ever registering that user.	4	Try to create the needed user "out of thin air".	https://pwning.owasp-juice.shop/companion-guide/latest/part2/injection.html#_log_in_with_the_non_existing_accountant_without_ever_registering_that_user	https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.197+00	2024-11-25 14:33:23.197+00
29	feedbackChallenge	Five-Star Feedback	Broken Access Control	\N	Get rid of all 5-star customer feedback.	2	Once you found admin section of the application, this challenge is almost trivial.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-access-control.html#_get_rid_of_all_5_star_customer_feedback	https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.198+00	2024-11-25 14:33:23.198+00
33	jwtForgedChallenge	Forged Signed JWT	Vulnerable Components	\N	Forge an almost properly RSA-signed JWT token that impersonates the (non-existing) user <i>rsa_lord@juice-sh.op</i>.	6	This challenge is explicitly not about acquiring the RSA private key used for JWT signing.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/vulnerable-components.html#_forge_an_almost_properly_rsa_signed_jwt_token	https://cheatsheetseries.owasp.org/cheatsheets/JSON_Web_Token_for_Java_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.2+00	2024-11-25 14:33:23.2+00
37	ghostLoginChallenge	GDPR Data Erasure	Broken Authentication	\N	Log in with Chris' erased user account.	3	Turns out that something is technically and legally wrong with the implementation of the "right to be forgotten" for users.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-authentication.html#_log_in_with_chris_erased_user_account	https://cheatsheetseries.owasp.org/cheatsheets/User_Privacy_Protection_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.201+00	2024-11-25 14:33:23.201+00
41	dlpPasswordSprayingChallenge	Leaked Access Logs	Sensitive Data Exposure	OSINT	Dumpster dive the Internet for a leaked password and log in to the original user account it belongs to. (Creating a new account with the same password does not qualify as a solution.)	5	Once you have it, a technique called "Password Spraying" might prove useful.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_dumpster_dive_the_internet_for_a_leaked_password_and_log_in_to_the_original_user_account_it_belongs_to	https://cheatsheetseries.owasp.org/cheatsheets/Credential_Stuffing_Prevention_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.202+00	2024-11-25 14:33:23.202+00
45	loginAmyChallenge	Login Amy	Sensitive Data Exposure	OSINT	Log in with Amy's original user credentials. (This could take 93.83 billion trillion trillion centuries to brute force, but luckily she did not read the "One Important Final Note")	3	This challenge will make you go after a needle in a haystack.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_log_in_with_amys_original_user_credentials	\N	f	\N	\N	0	2024-11-25 14:33:23.202+00	2024-11-25 14:33:23.202+00
49	loginRapperChallenge	Login MC SafeSearch	Sensitive Data Exposure	Shenanigans,OSINT	Log in with MC SafeSearch's original user credentials without applying SQL Injection or any other bypass.	2	You should listen to MC's hit song "Protect Ya Passwordz".	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_log_in_with_mc_safesearchs_original_user_credentials	\N	f	\N	\N	0	2024-11-25 14:33:23.203+00	2024-11-25 14:33:23.203+00
53	timingAttackChallenge	Multiple Likes	Broken Anti Automation	\N	Like any review at least three times as the same user.	6	Punctuality is the politeness of kings.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-anti-automation.html#_like_any_review_at_least_three_times_as_the_same_user	\N	f	\N	\N	0	2024-11-25 14:33:23.203+00	2024-11-25 14:33:23.203+00
57	noSqlReviewsChallenge	NoSQL Manipulation	Injection	\N	Update multiple product reviews at the same time.	4	Take a close look on how the equivalent of UPDATE-statements in MongoDB work.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/injection.html#_update_multiple_product_reviews_at_the_same_time	https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.204+00	2024-11-25 14:33:23.204+00
61	premiumPaywallChallenge	Premium Paywall	Cryptographic Issues	Shenanigans	<i class="far fa-gem"></i><i class="far fa-gem"></i><i class="far fa-gem"></i><i class="far fa-gem"></i><i class="far fa-gem"></i><!--IvLuRfBJYlmStf9XfL6ckJFngyd9LfV1JaaN/KRTPQPidTuJ7FR+D/nkWJUF+0xUF07CeCeqYfxq+OJVVa0gNbqgYkUNvn//UbE7e95C+6e+7GtdpqJ8mqm4WcPvUGIUxmGLTTAC2+G9UuFCD1DUjg==--> <a href="https://blockchain.info/address/1AbKfgvw9psQ41NbLi8kufDQTezwG8DRZm" target="_blank"><i class="fab fa-btc fa-sm"></i> Unlock Premium Challenge</a> to access exclusive content.	6	You do not have to pay anything to unlock this challenge! Nonetheless, donations are very much appreciated.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/cryptographic-issues.html#_unlock_premium_challenge_to_access_exclusive_content	https://cheatsheetseries.owasp.org/cheatsheets/Key_Management_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.205+00	2024-11-25 14:33:23.205+00
65	reflectedXssChallenge	Reflected XSS	XSS	Tutorial,Danger Zone,Good for Demos	Perform a <i>reflected</i> XSS attack with <code>&lt;iframe src="javascript:alert(`xss`)"&gt;</code>. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	2	Look for a url parameter where its value appears in the page it is leading to.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/xss.html#_perform_a_reflected_xss_attack	https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html	f	Docker	5	0	2024-11-25 14:33:23.205+00	2024-11-25 14:33:23.205+00
69	resetPasswordJimChallenge	Reset Jim's Password	Broken Authentication	OSINT	Reset Jim's password via the <a href="/#/forgot-password">Forgot Password</a> mechanism with <i>the original answer</i> to his security question.	3	It's hard for celebrities to pick a security question from a hard-coded list where the answer is not publicly exposed.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-authentication.html#_reset_jims_password_via_the_forgot_password_mechanism	https://cheatsheetseries.owasp.org/cheatsheets/Choosing_and_Using_Security_Questions_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.206+00	2024-11-25 14:33:23.206+00
18	directoryListingChallenge	Confidential Document	Sensitive Data Exposure	Good for Demos	Access a confidential document.	1	Analyze and tamper with links in the application that deliver a file directly.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_access_a_confidential_document	\N	f	\N	\N	0	2024-11-25 14:33:23.194+00	2024-11-25 14:33:23.194+00
26	errorHandlingChallenge	Error Handling	Security Misconfiguration	Prerequisite	Provoke an error that is neither very gracefully nor consistently handled.	1	Try to submit bad input to forms. Alternatively tamper with URL paths or parameters.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/security-misconfiguration.html#_provoke_an_error_that_is_neither_very_gracefully_nor_consistently_handled	https://cheatsheetseries.owasp.org/cheatsheets/Error_Handling_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.197+00	2024-11-25 14:33:23.197+00
34	forgottenDevBackupChallenge	Forgotten Developer Backup	Sensitive Data Exposure	Contraption,Good for Demos,Prerequisite	Access a developer's forgotten backup file.	4	You need to trick a security mechanism into thinking that the file you want has a valid file type.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_access_a_developers_forgotten_backup_file	\N	f	\N	\N	0	2024-11-25 14:33:23.2+00	2024-11-25 14:33:23.2+00
42	dlpPastebinDataLeakChallenge	Leaked Unsafe Product	Sensitive Data Exposure	Shenanigans,OSINT	Identify an unsafe product that was removed from the shop and <a href="/#/contact">inform the shop</a> which ingredients are dangerous.	4	Your own SQLi and someone else's Ctrl-V will be your accomplices in this challenge!	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_identify_an_unsafe_product_that_was_removed_from_the_shop_and_inform_the_shop_which_ingredients_are_dangerous	\N	f	\N	\N	0	2024-11-25 14:33:23.202+00	2024-11-25 14:33:23.202+00
50	loginSupportChallenge	Login Support Team	Security Misconfiguration	Brute Force,Code Analysis	Log in with the support team's original user credentials without applying SQL Injection or any other bypass.	6	The underlying flaw of this challenge is a lot more human error than technical weakness.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/security-misconfiguration.html#_log_in_with_the_support_teams_original_user_credentials	https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.203+00	2024-11-25 14:33:23.203+00
58	redirectCryptoCurrencyChallenge	Outdated Allowlist	Unvalidated Redirects	Code Analysis	Let us redirect you to one of our crypto currency addresses which are not promoted any longer.	1	We might have failed to take this out of our code properly.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/unvalidated-redirects.html#_let_us_redirect_you_to_one_of_our_crypto_currency_addresses	https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.204+00	2024-11-25 14:33:23.204+00
66	passwordRepeatChallenge	Repetitive Registration	Improper Input Validation	\N	Follow the DRY principle while registering a user.	1	You can solve this by cleverly interacting with the UI or bypassing it altogether.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/improper-input-validation.html#_follow_the_dry_principle_while_registering_a_user	https://cheatsheetseries.owasp.org/cheatsheets/Input_Validation_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.205+00	2024-11-25 14:33:23.205+00
74	scoreBoardChallenge	Score Board	Miscellaneous	Tutorial,Code Analysis	Find the carefully hidden 'Score Board' page.	1	Try to find a reference or clue behind the scenes. Or simply guess what URL the Score Board might have.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/score-board.html#_find_the_carefully_hidden_score_board_page	\N	f	\N	1	0	2024-11-25 14:33:23.206+00	2024-11-25 14:33:23.206+00
82	uploadSizeChallenge	Upload Size	Improper Input Validation	\N	Upload a file larger than 100 kB.	3	You can attach a small file to the "Complaint" form. Investigate how this upload actually works.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/improper-input-validation.html#_upload_a_file_larger_than_100_kb	https://cheatsheetseries.owasp.org/cheatsheets/File_Upload_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.207+00	2024-11-25 14:33:23.207+00
90	xxeFileDisclosureChallenge	XXE Data Access	XXE	Danger Zone	Retrieve the content of <code>C:\\Windows\\system.ini</code> or <code>/etc/passwd</code> from the server. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	3	The leverage point for this challenge is the deprecated B2B interface.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/xxe.html#_retrieve_the_content_of_cwindowssystemini_or_etcpasswd_from_the_server	https://cheatsheetseries.owasp.org/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.html	f	Docker	\N	0	2024-11-25 14:33:23.208+00	2024-11-25 14:33:23.208+00
98	xssBonusChallenge	Bonus Payload	XSS	Shenanigans,Tutorial	Use the bonus payload <code>&lt;iframe width=&quot;100%&quot; height=&quot;166&quot; scrolling=&quot;no&quot; frameborder=&quot;no&quot; allow=&quot;autoplay&quot; src=&quot;https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/771984076&amp;color=%23ff5500&amp;auto_play=true&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true&quot;&gt;&lt;/iframe&gt;</code> in the <i>DOM XSS</i> challenge.	1	Copy + Paste = Solved!	https://pwning.owasp-juice.shop/companion-guide/latest/part2/xss.html#_use_the_bonus_payload_in_the_dom_xss_challenge	https://cheatsheetseries.owasp.org/cheatsheets/DOM_based_XSS_Prevention_Cheat_Sheet.html	f	\N	3	0	2024-11-25 14:33:23.209+00	2024-11-25 14:33:23.209+00
106	closeNotificationsChallenge	Mass Dispel	Miscellaneous	\N	Close multiple "Challenge solved"-notifications in one go.	1	Either check the official documentation or inspect a notification UI element directly.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/score-board.html#_close_multiple_challenge_solved_notifications_in_one_go	\N	f	\N	\N	0	2024-11-25 14:33:23.21+00	2024-11-25 14:33:23.21+00
19	localXssChallenge	DOM XSS	XSS	Tutorial,Good for Demos	Perform a <i>DOM</i> XSS attack with <code>&lt;iframe src="javascript:alert(`xss`)"&gt;</code>.	1	Look for an input field where its content appears in the HTML when its form is submitted.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/xss.html#_perform_a_dom_xss_attack	https://cheatsheetseries.owasp.org/cheatsheets/DOM_based_XSS_Prevention_Cheat_Sheet.html	f	\N	2	0	2024-11-25 14:33:23.195+00	2024-11-25 14:33:23.195+00
23	emailLeakChallenge	Email Leak	Sensitive Data Exposure	\N	Perform an unwanted information disclosure by accessing data cross-domain.	5	Try to find and attack an endpoint that responds with user information. SQL Injection is not the solution here.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_perform_an_unwanted_information_disclosure_by_accessing_data_cross_domain	https://cheatsheetseries.owasp.org/cheatsheets/XS_Leaks_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.196+00	2024-11-25 14:33:23.196+00
27	manipulateClockChallenge	Expired Coupon	Improper Input Validation	\N	Successfully redeem an expired campaign coupon code.	4	Try to identify past special event or holiday campaigns of the shop first.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/improper-input-validation.html#_successfully_redeem_an_expired_campaign_coupon_code	\N	f	\N	\N	0	2024-11-25 14:33:23.197+00	2024-11-25 14:33:23.197+00
31	forgedFeedbackChallenge	Forged Feedback	Broken Access Control	Tutorial	Post some feedback in another user's name.	3	You can solve this by tampering with the user interface or by intercepting the communication with the RESTful backend.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-access-control.html#_post_some_feedback_in_another_users_name	https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html	f	\N	10	0	2024-11-25 14:33:23.199+00	2024-11-25 14:33:23.199+00
35	forgottenBackupChallenge	Forgotten Sales Backup	Sensitive Data Exposure	Contraption	Access a salesman's forgotten backup file.	4	You need to trick a security mechanism into thinking that the file you want has a valid file type.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_access_a_salesmans_forgotten_backup_file	\N	f	\N	\N	0	2024-11-25 14:33:23.2+00	2024-11-25 14:33:23.2+00
39	httpHeaderXssChallenge	HTTP-Header XSS	XSS	Danger Zone	Perform a <i>persisted</i> XSS attack with <code>&lt;iframe src="javascript:alert(`xss`)"&gt;</code> through an HTTP header. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	4	Finding a piece of displayed information that could originate from an HTTP header is part of this challenge.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/xss.html#_perform_a_persisted_xss_attack_through_an_http_header	https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html	f	Docker	\N	0	2024-11-25 14:33:23.201+00	2024-11-25 14:33:23.201+00
43	typosquattingNpmChallenge	Legacy Typosquatting	Vulnerable Components	\N	<a href="/#/contact">Inform the shop</a> about a <i>typosquatting</i> trick it has been a victim of at least in <code>v6.2.0-SNAPSHOT</code>. (Mention the exact name of the culprit)	4	This challenge has nothing to do with mistyping web domains. Investigate the forgotten developer's backup file instead.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/vulnerable-components.html#_inform_the_shop_about_a_typosquatting_trick_it_has_been_a_victim_of	https://cheatsheetseries.owasp.org/cheatsheets/Vulnerable_Dependency_Management_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.202+00	2024-11-25 14:33:23.202+00
47	oauthUserPasswordChallenge	Login Bjoern	Broken Authentication	Code Analysis	Log in with Bjoern's Gmail account <i>without</i> previously changing his password, applying SQL Injection, or hacking his Google account.	4	The security flaw behind this challenge is 100% OWASP Juice Shop's fault and 0% Google's.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-authentication.html#_log_in_with_bjoerns_gmail_account	https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.203+00	2024-11-25 14:33:23.203+00
51	basketManipulateChallenge	Manipulate Basket	Broken Access Control	\N	Put an additional product into another user's shopping basket.	3	Have an eye on the HTTP traffic while placing products in the shopping basket. Changing the quantity of products already in the basket doesn't count.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-access-control.html#_put_an_additional_product_into_another_users_shopping_basket	https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.203+00	2024-11-25 14:33:23.203+00
55	noSqlCommandChallenge	NoSQL DoS	Injection	Danger Zone	Let the server sleep for some time. (It has done more than enough hard work for you) <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	4	This challenge is essentially a stripped-down Denial of Service (DoS) attack.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/injection.html#_let_the_server_sleep_for_some_time	https://cheatsheetseries.owasp.org/cheatsheets/Denial_of_Service_Cheat_Sheet.html	f	Docker	\N	0	2024-11-25 14:33:23.204+00	2024-11-25 14:33:23.204+00
59	weakPasswordChallenge	Password Strength	Broken Authentication	Brute Force,Tutorial	Log in with the administrator's user credentials without previously changing them or applying SQL Injection.	2	This one should be equally easy to a) brute force, b) crack the password hash or c) simply guess.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-authentication.html#_log_in_with_the_administrators_user_credentials_without_previously_changing_them_or_applying_sql_injection	https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html	f	\N	8	0	2024-11-25 14:33:23.204+00	2024-11-25 14:33:23.204+00
63	privacyPolicyProofChallenge	Privacy Policy Inspection	Security through Obscurity	Shenanigans,Good for Demos	Prove that you actually read our privacy policy.	3	Only by visiting a special URL you can confirm that you read it carefully.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/security-through-obscurity.html#_prove_that_you_actually_read_our_privacy_policy	\N	f	\N	\N	0	2024-11-25 14:33:23.205+00	2024-11-25 14:33:23.205+00
67	resetPasswordBenderChallenge	Reset Bender's Password	Broken Authentication	OSINT	Reset Bender's password via the <a href="/#/forgot-password">Forgot Password</a> mechanism with <i>the original answer</i> to his security question.	4	Not as trivial as Jim's but still not too difficult with some "Futurama" background knowledge.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-authentication.html#_reset_benders_password_via_the_forgot_password_mechanism	https://cheatsheetseries.owasp.org/cheatsheets/Choosing_and_Using_Security_Questions_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.206+00	2024-11-25 14:33:23.206+00
71	retrieveBlueprintChallenge	Retrieve Blueprint	Sensitive Data Exposure	\N	Deprive the shop of earnings by downloading the blueprint for one of its products.	5	The product you might want to give a closer look is the OWASP Juice Shop Logo (3D-printed).	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_deprive_the_shop_of_earnings_by_downloading_the_blueprint_for_one_of_its_products	\N	f	\N	\N	0	2024-11-25 14:33:23.206+00	2024-11-25 14:33:23.206+00
22	easterEggLevelOneChallenge	Easter Egg	Broken Access Control	Shenanigans,Contraption,Good for Demos	Find the hidden <a href="https://en.wikipedia.org/wiki/Easter_egg_(media)" target="_blank">easter egg</a>.	4	If you solved one of the three file access challenges, you already know where to find the easter egg.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-access-control.html#_find_the_hidden_easter_egg	\N	f	\N	\N	0	2024-11-25 14:33:23.196+00	2024-11-25 14:33:23.196+00
30	forgedCouponChallenge	Forged Coupon	Cryptographic Issues	Good for Demos,Code Analysis	Forge a coupon code that gives you a discount of at least 80%.	6	Try either a) a knowledgeable brute force attack or b) reverse engineering or c) some research in the cloud.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/cryptographic-issues.html#_forge_a_coupon_code_that_gives_you_a_discount_of_at_least_80	https://cheatsheetseries.owasp.org/cheatsheets/Cryptographic_Storage_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.198+00	2024-11-25 14:33:23.198+00
38	dataExportChallenge	GDPR Data Theft	Sensitive Data Exposure	\N	Steal someone else's personal data without using Injection.	4	Trick the regular Data Export to give you more than actually belongs to you.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_steal_someone_elses_personal_data_without_using_injection	https://cheatsheetseries.owasp.org/cheatsheets/User_Privacy_Protection_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.201+00	2024-11-25 14:33:23.201+00
46	loginBenderChallenge	Login Bender	Injection	Tutorial	Log in with Bender's user account.	3	If you know Bender's email address, try SQL Injection. Bender's password hash might not help you very much.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/injection.html#_log_in_with_benders_user_account	https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html	f	\N	12	0	2024-11-25 14:33:23.202+00	2024-11-25 14:33:23.202+00
54	easterEggLevelTwoChallenge	Nested Easter Egg	Cryptographic Issues	Shenanigans,Good for Demos	Apply some advanced cryptanalysis to find <i>the real</i> easter egg.	4	You might have to peel through several layers of tough-as-nails encryption for this challenge.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/cryptographic-issues.html#_apply_some_advanced_cryptanalysis_to_find_the_real_easter_egg	\N	f	\N	\N	0	2024-11-25 14:33:23.204+00	2024-11-25 14:33:23.204+00
62	privacyPolicyChallenge	Privacy Policy	Miscellaneous	Good Practice,Tutorial,Good for Demos	Read our privacy policy.	1	We won't even ask you to confirm that you did. Just read it. Please. Pretty please.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/miscellaneous.html#_read_our_privacy_policy	\N	f	\N	4	0	2024-11-25 14:33:23.205+00	2024-11-25 14:33:23.205+00
70	resetPasswordMortyChallenge	Reset Morty's Password	Broken Anti Automation	OSINT,Brute Force	Reset Morty's password via the <a href="/#/forgot-password">Forgot Password</a> mechanism with <i>his obfuscated answer</i> to his security question.	5	Find a way to bypass the rate limiting and brute force the obfuscated answer to Morty's security question.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-anti-automation.html#_reset_mortys_password_via_the_forgot_password_mechanism	https://cheatsheetseries.owasp.org/cheatsheets/Forgot_Password_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.206+00	2024-11-25 14:33:23.206+00
78	rceOccupyChallenge	Successful RCE DoS	Insecure Deserialization	Danger Zone	Perform a Remote Code Execution that occupies the server for a while without using infinite loops. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	6	Your attack payload must not trigger the protection against too many iterations.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/insecure-deserialization.html#_perform_a_remote_code_execution_that_occupies_the_server_for_a_while_without_using_infinite_loops	https://cheatsheetseries.owasp.org/cheatsheets/Denial_of_Service_Cheat_Sheet.html	f	Docker	\N	0	2024-11-25 14:33:23.207+00	2024-11-25 14:33:23.207+00
86	basketAccessChallenge	View Basket	Broken Access Control	Tutorial,Good for Demos	View another user's shopping basket.	2	Have an eye on the HTTP traffic while shopping. Alternatively try to find a client-side association of users to their basket.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-access-control.html#_view_another_users_shopping_basket	https://cheatsheetseries.owasp.org/cheatsheets/Authorization_Cheat_Sheet.html	f	\N	9	0	2024-11-25 14:33:23.208+00	2024-11-25 14:33:23.208+00
94	svgInjectionChallenge	Cross-Site Imaging	Security Misconfiguration	Contraption	Stick <a href="http://placekitten.com/" target="_blank">cute cross-domain kittens</a> all over our delivery boxes.	5	This challenge would formally have to be in several categories as the developers made multiple gaffes for this to be possible.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/security-misconfiguration.html#_stick_cute_cross_domain_kittens_all_over_our_delivery_boxes	\N	f	\N	\N	0	2024-11-25 14:33:23.209+00	2024-11-25 14:33:23.209+00
102	killChatbotChallenge	Kill Chatbot	Vulnerable Components	Code Analysis	Permanently disable the support chatbot so that it can no longer answer customer queries.	5	Think of a way to get a hold of the internal workings on the chatbot API.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/improper-input-validation.html#_permanently_disable_the_support_chatbot	https://cheatsheetseries.owasp.org/cheatsheets/Vulnerable_Dependency_Management_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.209+00	2024-11-25 14:33:23.209+00
72	ssrfChallenge	SSRF	Broken Access Control	Code Analysis	Request a hidden resource on server through server.	6	Reverse engineering something bad can make good things happen.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-access-control.html#_request_a_hidden_resource_on_server_through_server	https://cheatsheetseries.owasp.org/cheatsheets/Server_Side_Request_Forgery_Prevention_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.206+00	2024-11-25 14:33:23.206+00
76	persistedXssFeedbackChallenge	Server-side XSS Protection	XSS	Danger Zone	Perform a <i>persisted</i> XSS attack with <code>&lt;iframe src="javascript:alert(`xss`)"&gt;</code> bypassing a <i>server-side</i> security mechanism. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	4	The "Comment" field in the "Customer Feedback" screen is where you want to put your focus on.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/xss.html#_perform_a_persisted_xss_attack_bypassing_a_server_side_security_mechanism	https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html	f	Docker	\N	0	2024-11-25 14:33:23.207+00	2024-11-25 14:33:23.207+00
80	twoFactorAuthUnsafeSecretStorageChallenge	Two Factor Authentication	Broken Authentication	\N	Solve the 2FA challenge for user "wurstbrot". (Disabling, bypassing or overwriting his 2FA settings does not count as a solution)	5	The 2FA implementation requires to store a secret for every user. You will need to find a way to access this secret in order to solve this challenge.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-authentication.html#_solve_the_2fa_challenge_for_user_wurstbrot	https://cheatsheetseries.owasp.org/cheatsheets/Multifactor_Authentication_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.207+00	2024-11-25 14:33:23.207+00
84	unionSqlInjectionChallenge	User Credentials	Injection	\N	Retrieve a list of all user credentials via SQL Injection.	4	Gather information on where user data is stored and how it is addressed. Then craft a corresponding UNION SELECT attack.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/injection.html#_retrieve_a_list_of_all_user_credentials_via_sql_injection	https://cheatsheetseries.owasp.org/cheatsheets/SQL_Injection_Prevention_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.207+00	2024-11-25 14:33:23.207+00
88	weirdCryptoChallenge	Weird Crypto	Cryptographic Issues	\N	<a href="/#/contact">Inform the shop</a> about an algorithm or library it should definitely not use the way it does.	2	Report one of four possible answers via the "Customer Feedback" form.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/cryptographic-issues.html#_inform_the_shop_about_an_algorithm_or_library_it_should_definitely_not_use_the_way_it_does	https://cheatsheetseries.owasp.org/cheatsheets/Vulnerability_Disclosure_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.208+00	2024-11-25 14:33:23.208+00
92	zeroStarsChallenge	Zero Stars	Improper Input Validation	\N	Give a devastating zero-star feedback to the store.	1	Before you invest time bypassing the API, you might want to play around with the UI a bit.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/improper-input-validation.html#_give_a_devastating_zero_star_feedback_to_the_store	\N	f	\N	\N	0	2024-11-25 14:33:23.208+00	2024-11-25 14:33:23.208+00
96	freeDeluxeChallenge	Deluxe Fraud	Improper Input Validation	\N	Obtain a Deluxe Membership without paying for it.	3	Look closely at what happens when you attempt to upgrade your account.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/improper-input-validation.html#_obtain_a_deluxe_membership_without_paying_for_it	\N	f	\N	\N	0	2024-11-25 14:33:23.209+00	2024-11-25 14:33:23.209+00
100	geoStalkingMetaChallenge	Meta Geo Stalking	Sensitive Data Exposure	OSINT	Determine the answer to John's security question by looking at an upload of him to the Photo Wall and use it to reset his password via the <a href="/#/forgot-password">Forgot Password</a> mechanism.	2	Take a look at the meta data of the corresponding photo.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_determine_the_answer_to_johns_security_question	https://cheatsheetseries.owasp.org/cheatsheets/Choosing_and_Using_Security_Questions_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.209+00	2024-11-25 14:33:23.209+00
104	bullyChatbotChallenge	Bully Chatbot	Miscellaneous	Shenanigans,Brute Force	Receive a coupon code from the support chatbot.	1	Just keep asking.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/miscellaneous.html#_receive_a_coupon_code_from_the_support_chatbot	\N	f	\N	\N	0	2024-11-25 14:33:23.21+00	2024-11-25 14:33:23.21+00
73	sstiChallenge	SSTi	Injection	Contraption,Danger Zone,Code Analysis	Infect the server with juicy malware by abusing arbitrary command execution. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	6	"SSTi" is a clear indicator that this has nothing to do with anything Angular. Also, make sure to use only our non-malicious malware.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/injection.html#_infect_the_server_with_juicy_malware_by_abusing_arbitrary_command_execution	\N	f	Docker	\N	0	2024-11-25 14:33:23.206+00	2024-11-25 14:33:23.206+00
77	hiddenImageChallenge	Steganography	Security through Obscurity	Shenanigans	<a href="/#/contact">Rat out</a> a notorious character hiding in plain sight in the shop. (Mention the exact name of the character)	4	No matter how good your eyes are, you will need tool assistance for this challenge.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/security-through-obscurity.html#_rat_out_a_notorious_character_hiding_in_plain_sight_in_the_shop	\N	f	\N	\N	0	2024-11-25 14:33:23.207+00	2024-11-25 14:33:23.207+00
81	jwtUnsignedChallenge	Unsigned JWT	Vulnerable Components	\N	Forge an essentially unsigned JWT token that impersonates the (non-existing) user <i>jwtn3d@juice-sh.op</i>.	5	This challenge exploits a weird option that is supported when signing tokens with JWT.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/vulnerable-components.html#_forge_an_essentially_unsigned_jwt_token	https://cheatsheetseries.owasp.org/cheatsheets/JSON_Web_Token_for_Java_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.207+00	2024-11-25 14:33:23.207+00
85	videoXssChallenge	Video XSS	XSS	Danger Zone	Embed an XSS payload <code>&lt;/script&gt;&lt;script&gt;alert(`xss`)&lt;/script&gt;</code> into our promo video. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	6	You have to reuse the vulnerability behind one other 6-star challenge to be able to solve this one.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/xss.html#_embed_an_xss_payload_into_our_promo_video	https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html	f	Docker	\N	0	2024-11-25 14:33:23.208+00	2024-11-25 14:33:23.208+00
89	redirectChallenge	Allowlist Bypass	Unvalidated Redirects	Prerequisite	Enforce a redirect to a page you are not supposed to redirect to.	4	You have to find a way to beat the allowlist of allowed redirect URLs.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/unvalidated-redirects.html#_enforce_a_redirect_to_a_page_you_are_not_supposed_to_redirect_to	https://cheatsheetseries.owasp.org/cheatsheets/Unvalidated_Redirects_and_Forwards_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.208+00	2024-11-25 14:33:23.208+00
93	missingEncodingChallenge	Missing Encoding	Improper Input Validation	Shenanigans	Retrieve the photo of Bjoern's cat in "melee combat-mode".	1	Check the Photo Wall for an image that could not be loaded correctly.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/improper-input-validation.html#_retrieve_the_photo_of_bjoerns_cat_in_melee_combat_mode	\N	f	\N	\N	0	2024-11-25 14:33:23.208+00	2024-11-25 14:33:23.208+00
97	csrfChallenge	CSRF	Broken Access Control	\N	Change the name of a user by performing Cross-Site Request Forgery from <a href="http://htmledit.squarefree.com">another origin</a>.	3	Find a form which updates the username and then construct a malicious page in the online HTML editor. You probably need an older browser version for this.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/broken-access-control.html#_change_the_name_of_a_user_by_performing_cross_site_request_forgery_from_another_origin	https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.209+00	2024-11-25 14:33:23.209+00
101	geoStalkingVisualChallenge	Visual Geo Stalking	Sensitive Data Exposure	OSINT	Determine the answer to Emma's security question by looking at an upload of her to the Photo Wall and use it to reset her password via the <a href="/#/forgot-password">Forgot Password</a> mechanism.	2	Take a look at the details in the photo to determine the location of where it was taken.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_determine_the_answer_to_emmas_security_question	https://cheatsheetseries.owasp.org/cheatsheets/Choosing_and_Using_Security_Questions_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.209+00	2024-11-25 14:33:23.209+00
105	lfrChallenge	Local File Read	Vulnerable Components	OSINT,Danger Zone	Gain read access to an arbitrary local file on the web server. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	5	You should read up on vulnerabilities in popular NodeJs template engines.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/vulnerable-components.html#_gain_read_access_to_an_arbitrary_local_file_on_the_web_server	\N	f	Docker	\N	0	2024-11-25 14:33:23.21+00	2024-11-25 14:33:23.21+00
75	securityPolicyChallenge	Security Policy	Miscellaneous	Good Practice	Behave like any "white-hat" should before getting into the action.	2	Undoubtedly you want to read our security policy before conducting any research on our application.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/miscellaneous.html#_behave_like_any_white_hat_should_before_getting_into_the_action	https://cheatsheetseries.owasp.org/cheatsheets/Vulnerability_Disclosure_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.206+00	2024-11-25 14:33:23.206+00
79	supplyChainAttackChallenge	Supply Chain Attack	Vulnerable Components	OSINT	<a href="/#/contact">Inform the development team</a> about a danger to some of <em>their</em> credentials. (Send them the URL of the <em>original report</em> or an assigned CVE or another identifier of this vulnerability)	5	This vulnerability will not affect any customer of the shop. It is aimed exclusively at its developers.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/vulnerable-components.html#_inform_the_development_team_about_a_danger_to_some_of_their_credentials	\N	f	\N	\N	0	2024-11-25 14:33:23.207+00	2024-11-25 14:33:23.207+00
83	uploadTypeChallenge	Upload Type	Improper Input Validation	\N	Upload a file that has no .pdf or .zip extension.	3	You can attach a PDF or ZIP file to the "Complaint" form. Investigate how this upload actually works.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/improper-input-validation.html#_upload_a_file_that_has_no_pdf_or_zip_extension	https://cheatsheetseries.owasp.org/cheatsheets/File_Upload_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.207+00	2024-11-25 14:33:23.207+00
87	knownVulnerableComponentChallenge	Vulnerable Library	Vulnerable Components	OSINT	<a href="/#/contact">Inform the shop</a> about a vulnerable library it is using. (Mention the exact library name and version in your comment)	4	Report one of two possible answers via the "Customer Feedback" form. Do not forget to submit the library's version as well.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/vulnerable-components.html#_inform_the_shop_about_a_vulnerable_library_it_is_using	https://cheatsheetseries.owasp.org/cheatsheets/Vulnerability_Disclosure_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.208+00	2024-11-25 14:33:23.208+00
91	xxeDosChallenge	XXE DoS	XXE	Danger Zone	Give the server something to chew on for quite a while. <em>(This challenge is <strong>potentially harmful</strong> on Docker!)</em>	5	It is not as easy as sending a large amount of data directly to the deprecated B2B interface.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/xxe.html#_give_the_server_something_to_chew_on_for_quite_a_while	https://cheatsheetseries.owasp.org/cheatsheets/XML_External_Entity_Prevention_Cheat_Sheet.html	f	Docker	\N	0	2024-11-25 14:33:23.208+00	2024-11-25 14:33:23.208+00
95	exposedMetricsChallenge	Exposed Metrics	Sensitive Data Exposure	Good Practice	Find the endpoint that serves usage data to be scraped by a <a href="https://github.com/prometheus/prometheus">popular monitoring system</a>.	1	Try to guess what URL the endpoint might have.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_find_the_endpoint_that_serves_usage_data_to_be_scraped_by_a_popular_monitoring_system	\N	f	\N	\N	0	2024-11-25 14:33:23.209+00	2024-11-25 14:33:23.209+00
99	resetPasswordUvoginChallenge	Reset Uvogin's Password	Sensitive Data Exposure	OSINT	Reset Uvogin's password via the <a href="/#/forgot-password">Forgot Password</a> mechanism with <i>the original answer</i> to his security question.	4	You might have to do some OSINT on his social media personas to find out his honest answer to the security question.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/sensitive-data-exposure.html#_reset_uvogins_password_via_the_forgot_password_mechanism	https://cheatsheetseries.owasp.org/cheatsheets/Choosing_and_Using_Security_Questions_Cheat_Sheet.html	f	\N	\N	0	2024-11-25 14:33:23.209+00	2024-11-25 14:33:23.209+00
103	nullByteChallenge	Poison Null Byte	Improper Input Validation	Prerequisite	Bypass a security control with a <a href="https://hakipedia.com/index.php/Poison_Null_Byte">Poison Null Byte</a> to access a file not meant for your eyes.	4	Take a look at the details in the photo to determine the location of where it was taken.	https://pwning.owasp-juice.shop/companion-guide/latest/part2/improper-input-validation.html#_bypass_a_security_control_with_a_poison_null_byte	\N	f	\N	\N	0	2024-11-25 14:33:23.21+00	2024-11-25 14:33:23.21+00
107	csafChallenge	Security Advisory	Miscellaneous	\N	 The Juice Shop is susceptible to a known vulnerability in a library, for which an advisory has already been issued, marking the Juice Shop as <i>known affected</i>. A fix is still pending. <a href="/#/contact">Inform the shop</a> about a suitable checksum as proof that you did your due diligence.	3	Security Advisories are often listed in the security.txt		\N	f	\N	\N	0	2024-11-25 14:33:23.21+00	2024-11-25 14:33:23.21+00
\.


--
-- Data for Name: complaints; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.complaints (userid, id, message, file, createdat, updatedat) FROM stdin;
3	1	I'll build my own eCommerce business! With Black Jack! And Hookers!	\N	2024-11-25 14:33:23.506+00	2024-11-25 14:33:23.506+00
\.


--
-- Data for Name: deliveries; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.deliveries (id, name, price, deluxeprice, eta, icon, createdat, updatedat) FROM stdin;
1	One Day Delivery	0.99	0.5	1	fas fa-rocket	2024-11-25 14:33:23.659+00	2024-11-25 14:33:23.659+00
2	Fast Delivery	0.5	0	3	fas fa-shipping-fast	2024-11-25 14:33:23.659+00	2024-11-25 14:33:23.659+00
3	Standard Delivery	0	0	5	fas fa-truck	2024-11-25 14:33:23.659+00	2024-11-25 14:33:23.659+00
\.


--
-- Data for Name: feedbacks; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.feedbacks (userid, id, comment, rating, createdat, updatedat) FROM stdin;
2	1	I love this shop! Best products in town! Highly recommended! (***in@juice-sh.op)	5	2024-11-25 14:33:23.125+00	2024-11-25 14:33:23.125+00
4	2	Nothing useful available here! (***der@juice-sh.op)	1	2024-11-25 14:33:23.131+00	2024-11-25 14:33:23.131+00
1	3	Great shop! Awesome service! (***@juice-sh.op)	4	2024-11-25 14:33:23.135+00	2024-11-25 14:33:23.135+00
21	4	Please send me the juicy chatbot NFT in my wallet at /juicy-nft : "purpose betray marriage blame crunch monitor spin slide donate sport lift clutch" (***ereum@juice-sh.op)	1	2024-11-25 14:33:23.149+00	2024-11-25 14:33:23.149+00
\N	5	Incompetent customer support! Can't even upload photo of broken purchase!<br /><em>Support Team: Sorry, only order confirmation PDFs can be attached to complaints!</em> (anonymous)	2	2024-11-25 14:33:23.497+00	2024-11-25 14:33:23.497+00
\N	6	This is <b>the</b> store for awesome stuff of all kinds! (anonymous)	4	2024-11-25 14:33:23.498+00	2024-11-25 14:33:23.498+00
\N	7	Never gonna buy anywhere else from now on! Thanks for the great service! (anonymous)	4	2024-11-25 14:33:23.498+00	2024-11-25 14:33:23.498+00
\N	8	Keep up the good work! (anonymous)	3	2024-11-25 14:33:23.498+00	2024-11-25 14:33:23.498+00
\.


--
-- Data for Name: imagecaptchas; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.imagecaptchas (id, image, answer, userid, createdat, updatedat) FROM stdin;
\.


--
-- Data for Name: memories; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.memories (userid, id, caption, imagepath, createdat, updatedat) FROM stdin;
13	1	😼 #zatschi #whoneedsfourlegs	assets/public/images/uploads/😼-#zatschi-#whoneedsfourlegs-1572600969477.jpg	2024-11-25 14:33:23.665+00	2024-11-25 14:33:23.665+00
21	4	Welcome to the Bee Haven (/#/bee-haven)🐝	assets/public/images/uploads/BeeHaven.png	2024-11-25 14:33:23.666+00	2024-11-25 14:33:23.666+00
3	2	Magn(et)ificent!	assets/public/images/uploads/magn(et)ificent!-1571814229653.jpg	2024-11-25 14:33:23.666+00	2024-11-25 14:33:23.666+00
13	6	Building something literally bottom up...	assets/public/images/uploads/building-something-literally-bottom-up-1721152342603.jpg	2024-11-25 14:33:23.666+00	2024-11-25 14:33:23.666+00
19	10	My old workplace...	assets/public/images/uploads/IMG_4253.jpg	2024-11-25 14:33:23.677+00	2024-11-25 14:33:23.677+00
3	3	My rare collectors item! [̲̅$̲̅(̲̅ ͡° ͜ʖ ͡°̲̅)̲̅$̲̅]	assets/public/images/uploads/my-rare-collectors-item!-[̲̅$̲̅(̲̅-͡°-͜ʖ-͡°̲̅)̲̅$̲̅]-1572603645543.jpg	2024-11-25 14:33:23.666+00	2024-11-25 14:33:23.666+00
13	5	Sorted the pieces, starting assembly process...	assets/public/images/uploads/sorted-the-pieces,-starting-assembly-process-1721152307290.jpg	2024-11-25 14:33:23.666+00	2024-11-25 14:33:23.666+00
13	7	Putting in the hardware...	assets/public/images/uploads/putting-in-the-hardware-1721152366854.jpg	2024-11-25 14:33:23.667+00	2024-11-25 14:33:23.667+00
13	8	Everything up and running!	assets/public/images/uploads/everything-up-and-running!-1721152385146.jpg	2024-11-25 14:33:23.667+00	2024-11-25 14:33:23.667+00
18	9	I love going hiking here...	assets/public/images/uploads/favorite-hiking-place.png	2024-11-25 14:33:23.676+00	2024-11-25 14:33:23.676+00
\.


--
-- Data for Name: privacyrequests; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.privacyrequests (id, userid, deletionrequested, createdat, updatedat) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.products (id, name, description, price, deluxeprice, image, createdat, updatedat, deletedat) FROM stdin;
1	Apple Juice (1000ml)	The all-time classic.	1.99	0.99	apple_juice.jpg	2024-11-25 14:33:23.374+00	2024-11-25 14:33:23.374+00	\N
2	Orange Juice (1000ml)	Made from oranges hand-picked by Uncle Dittmeyer.	2.99	2.49	orange_juice.jpg	2024-11-25 14:33:23.375+00	2024-11-25 14:33:23.375+00	\N
3	Eggfruit Juice (500ml)	Now with even more exotic flavour.	8.99	8.99	eggfruit_juice.jpg	2024-11-25 14:33:23.375+00	2024-11-25 14:33:23.375+00	\N
4	Raspberry Juice (1000ml)	Made from blended Raspberry Pi, water and sugar.	4.99	4.99	raspberry_juice.jpg	2024-11-25 14:33:23.375+00	2024-11-25 14:33:23.375+00	\N
5	Lemon Juice (500ml)	Sour but full of vitamins.	2.99	1.99	lemon_juice.jpg	2024-11-25 14:33:23.376+00	2024-11-25 14:33:23.376+00	\N
6	Banana Juice (1000ml)	Monkeys love it the most.	1.99	1.99	banana_juice.jpg	2024-11-25 14:33:23.376+00	2024-11-25 14:33:23.376+00	\N
7	OWASP Juice Shop T-Shirt	Real fans wear it 24/7!	22.49	22.49	fan_shirt.jpg	2024-11-25 14:33:23.376+00	2024-11-25 14:33:23.376+00	\N
8	OWASP Juice Shop CTF Girlie-Shirt	For serious Capture-the-Flag heroines only!	22.49	22.49	fan_girlie.jpg	2024-11-25 14:33:23.376+00	2024-11-25 14:33:23.376+00	\N
9	OWASP SSL Advanced Forensic Tool (O-Saft)	O-Saft is an easy to use tool to show information about SSL certificate and tests the SSL connection according given list of ciphers and various SSL configurations. <a href="https://www.owasp.org/index.php/O-Saft" target="_blank">More...</a>	0.01	0.01	orange_juice.jpg	2024-11-25 14:33:23.379+00	2024-11-25 14:33:23.379+00	\N
13	OWASP Juice Shop Iron-Ons (16pcs)	Upgrade your clothes with washer safe <a href="https://www.stickeryou.com/products/owasp-juice-shop/794" target="_blank">iron-ons</a> of the OWASP Juice Shop or CTF Extension logo!	14.99	14.99	iron-on.jpg	2024-11-25 14:33:23.381+00	2024-11-25 14:33:23.381+00	\N
14	OWASP Juice Shop Magnets (16pcs)	Your fridge will be even cooler with these OWASP Juice Shop or CTF Extension logo <a href="https://www.stickeryou.com/products/owasp-juice-shop/794" target="_blank">magnets</a>!	15.99	15.99	magnets.jpg	2024-11-25 14:33:23.382+00	2024-11-25 14:33:23.382+00	\N
15	OWASP Juice Shop Sticker Page	Massive decoration opportunities with these OWASP Juice Shop or CTF Extension <a href="https://www.stickeryou.com/products/owasp-juice-shop/794" target="_blank">sticker pages</a>! Each page has 16 stickers on it.	9.99	9.99	sticker_page.jpg	2024-11-25 14:33:23.382+00	2024-11-25 14:33:23.382+00	\N
16	OWASP Juice Shop Sticker Single	Super high-quality vinyl <a href="https://www.stickeryou.com/products/owasp-juice-shop/794" target="_blank">sticker single</a> with the OWASP Juice Shop or CTF Extension logo! The ultimate laptop decal!	4.99	4.99	sticker_single.jpg	2024-11-25 14:33:23.382+00	2024-11-25 14:33:23.382+00	\N
17	OWASP Juice Shop Temporary Tattoos (16pcs)	Get one of these <a href="https://www.stickeryou.com/products/owasp-juice-shop/794" target="_blank">temporary tattoos</a> to proudly wear the OWASP Juice Shop or CTF Extension logo on your skin! If you tweet a photo of yourself with the tattoo, you get a couple of our stickers for free! Please mention <a href="https://twitter.com/owasp_juiceshop" target="_blank"><code>@owasp_juiceshop</code></a> in your tweet!	14.99	14.99	tattoo.jpg	2024-11-25 14:33:23.383+00	2024-11-25 14:33:23.383+00	\N
18	OWASP Juice Shop Mug	Black mug with regular logo on one side and CTF logo on the other! Your colleagues will envy you!	21.99	21.99	fan_mug.jpg	2024-11-25 14:33:23.383+00	2024-11-25 14:33:23.383+00	\N
19	OWASP Juice Shop Hoodie	Mr. Robot-style apparel. But in black. And with logo.	49.99	49.99	fan_hoodie.jpg	2024-11-25 14:33:23.383+00	2024-11-25 14:33:23.383+00	\N
20	OWASP Juice Shop-CTF Velcro Patch	4x3.5" embroidered patch with velcro backside. The ultimate decal for every tactical bag or backpack!	2.92	2.92	velcro-patch.jpg	2024-11-25 14:33:23.383+00	2024-11-25 14:33:23.383+00	\N
21	Woodruff Syrup "Forest Master X-Treme"	Harvested and manufactured in the Black Forest, Germany. Can cause hyperactive behavior in children. Can cause permanent green tongue when consumed undiluted.	6.99	6.99	woodruff_syrup.jpg	2024-11-25 14:33:23.383+00	2024-11-25 14:33:23.383+00	\N
22	Green Smoothie	Looks poisonous but is actually very good for your health! Made from green cabbage, spinach, kiwi and grass.	1.99	1.99	green_smoothie.jpg	2024-11-25 14:33:23.383+00	2024-11-25 14:33:23.383+00	\N
23	Quince Juice (1000ml)	Juice of the <em>Cydonia oblonga</em> fruit. Not exactly sweet but rich in Vitamin C.	4.99	4.99	quince.jpg	2024-11-25 14:33:23.384+00	2024-11-25 14:33:23.384+00	\N
24	Apple Pomace	Finest pressings of apples. Allergy disclaimer: Might contain traces of worms. Can be <a href="/#recycle">sent back to us</a> for recycling.	0.89	0.89	apple_pressings.jpg	2024-11-25 14:33:23.384+00	2024-11-25 14:33:23.384+00	\N
25	Fruit Press	Fruits go in. Juice comes out. Pomace you can send back to us for recycling purposes.	89.99	89.99	fruit_press.jpg	2024-11-25 14:33:23.384+00	2024-11-25 14:33:23.384+00	\N
26	OWASP Juice Shop Logo (3D-printed)	This rare item was designed and handcrafted in Sweden. This is why it is so incredibly expensive despite its complete lack of purpose.	99.99	99.99	3d_keychain.jpg	2024-11-25 14:33:23.384+00	2024-11-25 14:33:23.384+00	\N
29	Strawberry Juice (500ml)	Sweet & tasty!	3.99	3.99	strawberry_juice.jpeg	2024-11-25 14:33:23.385+00	2024-11-25 14:33:23.385+00	\N
30	Carrot Juice (1000ml)	As the old German saying goes: "Carrots are good for the eyes. Or has anyone ever seen a rabbit with glasses?"	2.99	2.99	carrot_juice.jpeg	2024-11-25 14:33:23.386+00	2024-11-25 14:33:23.386+00	\N
32	Pwning OWASP Juice Shop	<em>The official Companion Guide</em> by Björn Kimminich available <a href="https://leanpub.com/juice-shop">for free on LeanPub</a> and also <a href="https://pwning.owasp-juice.shop">readable online</a>!	5.99	5.99	cover_small.jpg	2024-11-25 14:33:23.386+00	2024-11-25 14:33:23.386+00	\N
33	Melon Bike (Comeback-Product 2018 Edition)	The wheels of this bicycle are made from real water melons. You might not want to ride it up/down the curb too hard.	2999	2999	melon_bike.jpeg	2024-11-25 14:33:23.387+00	2024-11-25 14:33:23.387+00	\N
12	OWASP Juice Shop Sticker (2015/2016 design)	Die-cut sticker with the official 2015/2016 logo. By now this is a rare collectors item. <em>Out of stock!</em>	999.99	999.99	sticker.png	2024-11-25 14:33:23.381+00	2024-11-25 14:33:23.381+00	2024-11-25 14:33:23.427+00
27	Juice Shop Artwork	Unique masterpiece painted with different kinds of juice on 90g/m² lined paper.	278.74	278.74	artwork.jpg	2024-11-25 14:33:23.385+00	2024-11-25 14:33:23.385+00	2024-11-25 14:33:23.445+00
28	Global OWASP WASPY Award 2017 Nomination	Your chance to nominate up to three quiet pillars of the OWASP community ends 2017-06-30! <a href="https://www.owasp.org/index.php/WASPY_Awards_2017">Nominate now!</a>	0.03	0.03	waspy.png	2024-11-25 14:33:23.385+00	2024-11-25 14:33:23.385+00	2024-11-25 14:33:23.446+00
31	OWASP Juice Shop Sweden Tour 2017 Sticker Sheet (Special Edition)	10 sheets of Sweden-themed stickers with 15 stickers on each.	19.1	19.1	stickersheet_se.png	2024-11-25 14:33:23.386+00	2024-11-25 14:33:23.386+00	2024-11-25 14:33:23.449+00
34	OWASP Juice Shop Coaster (10pcs)	Our 95mm circle coasters are printed in full color and made from thick, premium coaster board.	19.99	19.99	coaster.jpg	2024-11-25 14:33:23.387+00	2024-11-25 14:33:23.387+00	\N
41	Juice Shop "Permafrost" 2020 Edition	Exact version of <a href="https://github.com/juice-shop/juice-shop/releases/tag/v9.3.1-PERMAFROST">OWASP Juice Shop that was archived on 02/02/2020</a> by the GitHub Archive Program and ultimately went into the <a href="https://github.blog/2020-07-16-github-archive-program-the-journey-of-the-worlds-open-source-code-to-the-arctic">Arctic Code Vault</a> on July 8. 2020 where it will be safely stored for at least 1000 years.	9999.99	9999.99	permafrost.jpg	2024-11-25 14:33:23.39+00	2024-11-25 14:33:23.39+00	\N
11	Rippertuer Special Juice	Contains a magical collection of the rarest fruits gathered from all around the world, like Cherymoya Annona cherimola, Jabuticaba Myrciaria cauliflora, Bael Aegle marmelos... and others, at an unbelievable price! <br />This item has been made unavailable because of lack of safety standards. (This product is unsafe! We plan to remove it from the stock!)	16.99	16.99	undefined.jpg	2024-11-25 14:33:23.38+00	2024-11-25 14:33:23.38+00	2024-11-25 14:33:23.43+00
35	OWASP Snakes and Ladders - Web Applications	This amazing web application security awareness board game is <a href="https://steamcommunity.com/sharedfiles/filedetails/?id=1969196030">available for Tabletop Simulator on Steam Workshop</a> now!	0.01	0.01	snakes_ladders.jpg	2024-11-25 14:33:23.387+00	2024-11-25 14:33:23.387+00	\N
42	Best Juice Shop Salesman Artwork	Unique digital painting depicting Stan, our most qualified and almost profitable salesman. He made a succesful carreer in selling used ships, coffins, krypts, crosses, real estate, life insurance, restaurant supplies, voodoo enhanced asbestos and courtroom souvenirs before <em>finally</em> adding his expertise to the Juice Shop marketing team.	5000	5000	artwork2.jpg	2024-11-25 14:33:23.39+00	2024-11-25 14:33:23.39+00	\N
46	DSOMM & Juice Shop User Day Ticket	You are going to the OWASP Global AppSec San Francisco 2024? <a href="https://www.eventbrite.com/e/owasp-global-appsec-san-francisco-2024-tickets-723699172707" target="_blank">Get a ticket*</a> for this amazing side event as well! Check the juice-packed agenda <a href="https://owasp.org/www-project-juice-shop/#div-userday2024" target="_blank">here</a> for all the details!<br /><br />*=scroll down to <strong>Elevate: DSOMM and Juice Shop User Day (Sept. 25)</strong> after clicking <em>Get Tickets</em> on Eventbrite. Ticket price set to only covers fees for room, AV, and catering throughout the day.	55.2	55.2	user_day_ticket.png	2024-11-25 14:33:23.393+00	2024-11-25 14:33:23.393+00	\N
39	Juice Shop Adversary Trading Card (Common)	Common rarity "Juice Shop" card for the <a href="https://docs.google.com/forms/d/e/1FAIpQLSecLEakawSQ56lBe2JOSbFwFYrKDCIN7Yd3iHFdQc5z8ApwdQ/viewform">Adversary Trading Cards</a> CCG.	2.99	0.99	ccg_common.png	2024-11-25 14:33:23.389+00	2024-11-25 14:33:23.389+00	2024-11-25 14:33:23.457+00
36	OWASP Snakes and Ladders - Mobile Apps	This amazing mobile app security awareness board game is <a href="https://steamcommunity.com/sharedfiles/filedetails/?id=1970691216">available for Tabletop Simulator on Steam Workshop</a> now!	0.01	0.01	snakes_ladders_m.jpg	2024-11-25 14:33:23.388+00	2024-11-25 14:33:23.388+00	\N
43	OWASP Juice Shop Card (non-foil)	Mythic rare <em>(obviously...)</em> card "OWASP Juice Shop" with three distinctly useful abilities. Alpha printing, mint condition. A true collectors piece to own!	1000	1000	card_alpha.jpg	2024-11-25 14:33:23.391+00	2024-11-25 14:33:23.391+00	\N
10	Christmas Super-Surprise-Box (2014 Edition)	Contains a random selection of 10 bottles (each 500ml) of our tastiest juices and an extra fan shirt for an unbeatable price! (Seasonal special offer! Limited availability!)	29.99	29.99	undefined.jpg	2024-11-25 14:33:23.38+00	2024-11-25 14:33:23.38+00	2024-11-25 14:33:23.426+00
40	Juice Shop Adversary Trading Card (Super Rare)	Super rare "Juice Shop" card with holographic foil-coating for the <a href="https://docs.google.com/forms/d/e/1FAIpQLSecLEakawSQ56lBe2JOSbFwFYrKDCIN7Yd3iHFdQc5z8ApwdQ/viewform">Adversary Trading Cards</a> CCG.	99.99	69.99	ccg_foil.png	2024-11-25 14:33:23.389+00	2024-11-25 14:33:23.389+00	2024-11-25 14:33:23.459+00
37	OWASP Juice Shop Holographic Sticker	Die-cut holographic sticker. Stand out from those 08/15-sticker-covered laptops with this shiny beacon of 80's coolness!	2	2	holo_sticker.png	2024-11-25 14:33:23.388+00	2024-11-25 14:33:23.388+00	\N
44	20th Anniversary Celebration Ticket	Get your <a href="https://20thanniversary.owasp.org/" target="_blank">free 🎫 for OWASP 20th Anniversary Celebration</a> online conference! Hear from world renowned keynotes and special speakers, network with your peers and interact with our event sponsors. With an anticipated 10k+ attendees from around the world, you will not want to miss this live on-line event!	0.00000000000000000001	0.00000000000000000001	20th.jpeg	2024-11-25 14:33:23.391+00	2024-11-25 14:33:23.391+00	2024-11-25 14:33:23.466+00
38	OWASP Juice Shop "King of the Hill" Facemask	Facemask with compartment for filter from 50% cotton and 50% polyester.	13.49	13.49	fan_facemask.jpg	2024-11-25 14:33:23.388+00	2024-11-25 14:33:23.388+00	\N
45	OWASP Juice Shop LEGO™ Tower	Want to host a Juice Shop CTF in style? Build <a href="https://github.com/OWASP/owasp-swag/blob/master/projects/juice-shop/lego/OWASP%20JuiceShop%20Pi-server%201.2.pdf" target="_blank">your own LEGO™ tower</a> which holds four Raspberry Pi 4 models with PoE HAT modules <a href="https://github.com/juice-shop/multi-juicer/blob/main/guides/raspberry-pi/raspberry-pi.md" target="_blank">running a MultiJuicer Kubernetes cluster</a>! Wire to a switch and connect to your network to have an out-of-the-box ready CTF up in no time!	799	799	lego_case.jpg	2024-11-25 14:33:23.392+00	2024-11-25 14:33:23.392+00	\N
\.


--
-- Data for Name: quantities; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.quantities (productid, id, quantity, limitperuser, createdat, updatedat) FROM stdin;
1	1	39	5	2024-11-25 14:33:23.529+00	2024-11-25 14:33:23.529+00
2	2	79	\N	2024-11-25 14:33:23.529+00	2024-11-25 14:33:23.529+00
3	3	94	\N	2024-11-25 14:33:23.529+00	2024-11-25 14:33:23.529+00
5	4	58	5	2024-11-25 14:33:23.529+00	2024-11-25 14:33:23.529+00
4	5	67	\N	2024-11-25 14:33:23.529+00	2024-11-25 14:33:23.529+00
6	6	55	\N	2024-11-25 14:33:23.529+00	2024-11-25 14:33:23.529+00
7	7	59	5	2024-11-25 14:33:23.529+00	2024-11-25 14:33:23.529+00
8	8	79	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
9	9	54	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
10	10	78	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
11	11	96	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
12	12	91	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
13	13	69	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
14	14	62	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
15	15	47	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
16	16	40	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
17	17	56	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
18	18	33	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
19	19	83	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
20	20	5	5	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
21	21	48	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
22	22	85	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
23	23	92	\N	2024-11-25 14:33:23.53+00	2024-11-25 14:33:23.53+00
24	24	61	5	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
25	25	83	\N	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
26	26	66	\N	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
27	27	0	\N	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
28	28	83	\N	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
29	29	62	\N	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
30	30	69	\N	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
31	31	95	\N	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
32	32	84	\N	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
33	33	3	1	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
34	34	0	\N	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
35	35	8	\N	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
36	36	0	\N	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
37	37	0	\N	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
38	38	0	1	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
39	39	68	5	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
40	40	2	1	2024-11-25 14:33:23.531+00	2024-11-25 14:33:23.531+00
41	41	1	1	2024-11-25 14:33:23.532+00	2024-11-25 14:33:23.532+00
42	42	1	\N	2024-11-25 14:33:23.532+00	2024-11-25 14:33:23.532+00
43	43	3	1	2024-11-25 14:33:23.532+00	2024-11-25 14:33:23.532+00
44	44	97	1	2024-11-25 14:33:23.532+00	2024-11-25 14:33:23.532+00
45	45	3	1	2024-11-25 14:33:23.532+00	2024-11-25 14:33:23.532+00
46	46	47	1	2024-11-25 14:33:23.532+00	2024-11-25 14:33:23.532+00
\.


--
-- Data for Name: recycles; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.recycles (userid, addressid, id, quantity, ispickup, date, createdat, updatedat) FROM stdin;
2	4	1	800	t	2270-01-17 00:00:00+00	2024-11-25 14:33:23.511+00	2024-11-25 14:33:23.511+00
3	6	2	1320	t	2006-01-14 00:00:00+00	2024-11-25 14:33:23.511+00	2024-11-25 14:33:23.511+00
4	1	3	120	t	2018-04-16 00:00:00+00	2024-11-25 14:33:23.512+00	2024-11-25 14:33:23.512+00
1	3	4	300	t	2018-01-17 00:00:00+00	2024-11-25 14:33:23.512+00	2024-11-25 14:33:23.512+00
4	1	5	350	t	2018-03-17 00:00:00+00	2024-11-25 14:33:23.512+00	2024-11-25 14:33:23.512+00
3	6	6	200	t	2018-07-17 00:00:00+00	2024-11-25 14:33:23.512+00	2024-11-25 14:33:23.512+00
4	1	7	140	t	2018-03-19 00:00:00+00	2024-11-25 14:33:23.512+00	2024-11-25 14:33:23.512+00
1	3	8	150	t	2018-05-12 00:00:00+00	2024-11-25 14:33:23.512+00	2024-11-25 14:33:23.512+00
16	2	9	500	t	2019-02-18 00:00:00+00	2024-11-25 14:33:23.513+00	2024-11-25 14:33:23.513+00
\.


--
-- Data for Name: securityanswers; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.securityanswers (userid, securityquestionid, id, answer, createdat, updatedat) FROM stdin;
2	2	1	db8b1e81c9a3e9ed03ae162f3197209977bc68c5b095c6ed4d163baa653f48a0	2024-11-25 14:33:23.081+00	2024-11-25 14:33:23.081+00
5	7	2	204f63f5dece37ea4df3f29050cba038ea5b32d7ae86cd948975b6ca74e313b9	2024-11-25 14:33:23.083+00	2024-11-25 14:33:23.083+00
1	1	3	d2425fd880e7f38c5b091a2aa32c89e7de94f0aee517ba8a6025e1287acefade	2024-11-25 14:33:23.087+00	2024-11-25 14:33:23.087+00
4	10	4	afba0d71978fac68c89e6ba6a9f3442c1cf4b3027671902149c7c0781cdd0b6f	2024-11-25 14:33:23.089+00	2024-11-25 14:33:23.089+00
6	10	5	08c8793987e93173b1cb4b1b24001e195fee3610450888afffd710c887c0cc48	2024-11-25 14:33:23.092+00	2024-11-25 14:33:23.092+00
7	7	6	c4f2d6c5215446a069f5487086c6f65a53b9e719a9ab699aea85c9e1ce56927b	2024-11-25 14:33:23.094+00	2024-11-25 14:33:23.094+00
8	8	7	f714720833fad2b9b54d04b6b8c7f621669f895a95c2380f1da096f33919cc1b	2024-11-25 14:33:23.096+00	2024-11-25 14:33:23.096+00
9	1	8	fd716fef5eeb6ea6aec1152f3546e13af619a21efcb2dde60095c9a33139bb23	2024-11-25 14:33:23.098+00	2024-11-25 14:33:23.098+00
10	1	9	d19ed0704fb17e91783d817573a31b31fa854ba43cd24e83cf3fe239e62b291c	2024-11-25 14:33:23.099+00	2024-11-25 14:33:23.099+00
11	8	10	7d8268635173723dee3efcac0b777e966faa192f887872c11677e26f8fe17d6e	2024-11-25 14:33:23.101+00	2024-11-25 14:33:23.101+00
12	9	11	a4a92267c1e498456525d10a4daa2a8d162fba4cd57424ed829518cfde06d144	2024-11-25 14:33:23.103+00	2024-11-25 14:33:23.103+00
13	7	12	20a257391db163bf0149fe64d04236548fc30cddae8304417d9dae791e78c910	2024-11-25 14:33:23.106+00	2024-11-25 14:33:23.106+00
14	1	13	4174bbb06244ddf551712a39de34463eb35b7b557a282bec3df9441525b2b636	2024-11-25 14:33:23.108+00	2024-11-25 14:33:23.108+00
15	7	14	1a894c9b830f4faaa8f16fa331d59a114e66c74687ff1817e1bfb3e3bd723957	2024-11-25 14:33:23.11+00	2024-11-25 14:33:23.11+00
16	12	15	7ec07c10ded9d8dbc15b61c9ddb7f6fde7ae5966465bb367d326dd8680df8d97	2024-11-25 14:33:23.112+00	2024-11-25 14:33:23.112+00
17	10	16	36481637c39bdc7ac3b2464ca726cd492c8a700f0410cc7c474e79a9f987d10a	2024-11-25 14:33:23.113+00	2024-11-25 14:33:23.113+00
20	10	17	ec41931c3f53c21d4540429918097df275fc996654d303125cc026dc633a8234	2024-11-25 14:33:23.118+00	2024-11-25 14:33:23.118+00
21	10	18	b4c1f242c023965e9bfcf3d8fd369b03d7efd113c5ef013c001d209f6d2ee8c2	2024-11-25 14:33:23.12+00	2024-11-25 14:33:23.12+00
18	14	19	20f745f2273f83e00d815ddbf0795eede275d0d57cc29b8bd153057a6ecd8777	2024-11-25 14:33:23.666+00	2024-11-25 14:33:23.666+00
19	10	20	c17784023efa4ab2789eff0bb2dd3a66f0d9b0514a1fdbf400946480c9f9b67f	2024-11-25 14:33:23.666+00	2024-11-25 14:33:23.666+00
\.


--
-- Data for Name: securityquestions; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.securityquestions (id, question, createdat, updatedat) FROM stdin;
1	Your eldest siblings middle name?	2024-11-25 14:33:22.983+00	2024-11-25 14:33:22.983+00
2	Mother's maiden name?	2024-11-25 14:33:22.984+00	2024-11-25 14:33:22.984+00
3	Mother's birth date? (MM/DD/YY)	2024-11-25 14:33:22.984+00	2024-11-25 14:33:22.984+00
4	Father's birth date? (MM/DD/YY)	2024-11-25 14:33:22.984+00	2024-11-25 14:33:22.984+00
5	Maternal grandmother's first name?	2024-11-25 14:33:22.985+00	2024-11-25 14:33:22.985+00
6	Paternal grandmother's first name?	2024-11-25 14:33:22.985+00	2024-11-25 14:33:22.985+00
7	Name of your favorite pet?	2024-11-25 14:33:22.985+00	2024-11-25 14:33:22.985+00
8	Last name of dentist when you were a teenager? (Do not include 'Dr.')	2024-11-25 14:33:22.985+00	2024-11-25 14:33:22.985+00
9	Your ZIP/postal code when you were a teenager?	2024-11-25 14:33:22.986+00	2024-11-25 14:33:22.986+00
10	Company you first work for as an adult?	2024-11-25 14:33:22.986+00	2024-11-25 14:33:22.986+00
11	Your favorite book?	2024-11-25 14:33:22.986+00	2024-11-25 14:33:22.986+00
12	Your favorite movie?	2024-11-25 14:33:22.986+00	2024-11-25 14:33:22.986+00
13	Number of one of your customer or ID cards?	2024-11-25 14:33:22.987+00	2024-11-25 14:33:22.987+00
14	What's your favorite place to go hiking?	2024-11-25 14:33:22.987+00	2024-11-25 14:33:22.987+00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.users (id, username, email, password, role, deluxetoken, lastloginip, profileimage, totpsecret, isactive, createdat, updatedat, deletedat) FROM stdin;
2		admin@juice-sh.op	0192023a7bbd73250516f069df18b500	admin			assets/public/images/uploads/defaultAdmin.png		t	2024-11-25 14:33:23.048+00	2024-11-25 14:33:23.048+00	\N
6		support@juice-sh.op	3869433d74e3d0c86fd25562f836bc82	admin			assets/public/images/uploads/defaultAdmin.png		t	2024-11-25 14:33:23.05+00	2024-11-25 14:33:23.05+00	\N
11		amy@juice-sh.op	030f05e45e30710c3ad3c32f00de0473	customer			assets/public/images/uploads/default.svg		t	2024-11-25 14:33:23.052+00	2024-11-25 14:33:23.052+00	\N
16		uvogin@juice-sh.op	05f92148b4b60f7dacd04cceebb8f1af	customer			assets/public/images/uploads/default.svg		t	2024-11-25 14:33:23.053+00	2024-11-25 14:33:23.053+00	\N
21	evmrox	ethereum@juice-sh.op	2c17c6393771ee3048ae34d6b380c5ec	deluxe	b49b30b294d8c76f5a34fc243b9b9cccb057b3f675b07a5782276a547957f8ff		assets/public/images/uploads/default.svg		t	2024-11-25 14:33:23.055+00	2024-11-25 14:33:23.055+00	\N
1		jim@juice-sh.op	e541ca7ecf72b8d1286474fc613e5e45	customer			assets/public/images/uploads/default.svg		t	2024-11-25 14:33:23.048+00	2024-11-25 14:33:23.048+00	\N
5		ciso@juice-sh.op	861917d5fa5f1172f931dc700d81a8fb	deluxe	d715c2c75d4a42d3825a050e0a0163c1959b51165373f17bd8eed7b1e05bf20d		assets/public/images/uploads/default.svg		t	2024-11-25 14:33:23.05+00	2024-11-25 14:33:23.05+00	\N
3	bkimminich	bjoern.kimminich@gmail.com	6edd9d726cbdc873c539e41ae8757b8c	admin			assets/public/images/uploads/defaultAdmin.png		t	2024-11-25 14:33:23.049+00	2024-11-25 14:33:23.049+00	\N
4		bender@juice-sh.op	0c36e517e3fa95aabf1bbffc6744a4ef	customer			assets/public/images/uploads/default.svg		t	2024-11-25 14:33:23.048+00	2024-11-25 14:33:23.048+00	\N
7		morty@juice-sh.op	f2f933d0bb0ba057bc8e33b8ebd6d9e8	customer			assets/public/images/uploads/default.svg		t	2024-11-25 14:33:23.05+00	2024-11-25 14:33:23.05+00	\N
8		mc.safesearch@juice-sh.op	b03f4b0ba8b458fa0acdc02cdb953bc8	customer			assets/public/images/uploads/default.svg		t	2024-11-25 14:33:23.05+00	2024-11-25 14:33:23.05+00	\N
9		J12934@juice-sh.op	3c2abc04e4a6ea8f1327d0aae3714b7d	admin			assets/public/images/uploads/defaultAdmin.png		t	2024-11-25 14:33:23.051+00	2024-11-25 14:33:23.051+00	\N
10	wurstbrot	wurstbrot@juice-sh.op	9ad5b0492bbe528583e128d2a8941de4	admin			assets/public/images/uploads/defaultAdmin.png	IFTXE3SPOEYVURT2MRYGI52TKJ4HC3KH	t	2024-11-25 14:33:23.051+00	2024-11-25 14:33:23.051+00	\N
12		bjoern@juice-sh.op	7f311911af16fa8f418dd1a3051d6810	admin			assets/public/images/uploads/12.png		t	2024-11-25 14:33:23.052+00	2024-11-25 14:33:23.052+00	\N
13		bjoern@owasp.org	9283f1b2e9669749081963be0462e466	deluxe	efe2f1599e2d93440d5243a1ffaf5a413b70cf3ac97156bd6fab9b5ddfcbe0e4		assets/public/images/uploads/13.jpg		t	2024-11-25 14:33:23.052+00	2024-11-25 14:33:23.052+00	\N
15		accountant@juice-sh.op	963e10f92a70b4b463220cb4c5d636dc	accounting		123.456.789	assets/public/images/uploads/default.svg		t	2024-11-25 14:33:23.053+00	2024-11-25 14:33:23.053+00	\N
17		demo	fe01ce2a7fbac8fafaed7c982a04e229	customer			assets/public/images/uploads/default.svg		t	2024-11-25 14:33:23.053+00	2024-11-25 14:33:23.053+00	\N
18	j0hNny	john@juice-sh.op	00479e957b6b42c459ee5746478e4d45	customer			assets/public/images/uploads/default.svg		t	2024-11-25 14:33:23.054+00	2024-11-25 14:33:23.054+00	\N
19	E=ma²	emma@juice-sh.op	402f1c4a75e316afec5a6ea63147f739	customer			assets/public/images/uploads/default.svg		t	2024-11-25 14:33:23.054+00	2024-11-25 14:33:23.054+00	\N
20	SmilinStan	stan@juice-sh.op	e9048a3f43dd5e094ef733f3bd88ea64	deluxe	8f70e0f4b05685efff1ab979e8f5d7e39850369309bb206c2ad3f7d51a1f4e39		assets/public/images/uploads/20.jpg		t	2024-11-25 14:33:23.055+00	2024-11-25 14:33:23.055+00	\N
14		chris.pike@juice-sh.op	10a783b9ed19ea1c67c3a27699f0095b	customer			assets/public/images/uploads/default.svg		t	2024-11-25 14:33:23.053+00	2024-11-25 14:33:23.053+00	2024-11-25 14:33:23.143+00
\.


--
-- Data for Name: wallets; Type: TABLE DATA; Schema: public; Owner: projetcis
--

COPY public.wallets (userid, id, balance, createdat, updatedat) FROM stdin;
1	1	0	2024-11-25 14:33:23.628+00	2024-11-25 14:33:23.628+00
2	2	100	2024-11-25 14:33:23.628+00	2024-11-25 14:33:23.628+00
3	3	0	2024-11-25 14:33:23.628+00	2024-11-25 14:33:23.628+00
4	4	0	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
5	5	0	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
6	6	0	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
7	7	100	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
8	8	0	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
9	9	0	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
10	10	0	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
11	11	0	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
12	12	0	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
13	13	0	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
14	14	0	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
15	15	0	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
16	16	100	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
17	17	200	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
18	18	0	2024-11-25 14:33:23.629+00	2024-11-25 14:33:23.629+00
19	19	0	2024-11-25 14:33:23.63+00	2024-11-25 14:33:23.63+00
20	20	0	2024-11-25 14:33:23.63+00	2024-11-25 14:33:23.63+00
21	21	0	2024-11-25 14:33:23.63+00	2024-11-25 14:33:23.63+00
\.


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.addresses_id_seq', 6, true);


--
-- Name: basketitems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.basketitems_id_seq', 8, true);


--
-- Name: baskets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.baskets_id_seq', 5, true);


--
-- Name: captchas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.captchas_id_seq', 1, false);


--
-- Name: cards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.cards_id_seq', 6, true);


--
-- Name: challenges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.challenges_id_seq', 107, true);


--
-- Name: complaints_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.complaints_id_seq', 1, true);


--
-- Name: deliveries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.deliveries_id_seq', 3, true);


--
-- Name: feedbacks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.feedbacks_id_seq', 8, true);


--
-- Name: imagecaptchas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.imagecaptchas_id_seq', 1, false);


--
-- Name: memories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.memories_id_seq', 10, true);


--
-- Name: privacyrequests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.privacyrequests_id_seq', 1, false);


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.products_id_seq', 46, true);


--
-- Name: quantities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.quantities_id_seq', 46, true);


--
-- Name: recycles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.recycles_id_seq', 9, true);


--
-- Name: securityanswers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.securityanswers_id_seq', 20, true);


--
-- Name: securityquestions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.securityquestions_id_seq', 14, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.users_id_seq', 21, true);


--
-- Name: wallets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: projetcis
--

SELECT pg_catalog.setval('public.wallets_id_seq', 21, true);


--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);


--
-- Name: basketitems basketitems_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.basketitems
    ADD CONSTRAINT basketitems_pkey PRIMARY KEY (id);


--
-- Name: basketitems basketitems_productid_basketid_key; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.basketitems
    ADD CONSTRAINT basketitems_productid_basketid_key UNIQUE (productid, basketid);


--
-- Name: baskets baskets_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (id);


--
-- Name: captchas captchas_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.captchas
    ADD CONSTRAINT captchas_pkey PRIMARY KEY (id);


--
-- Name: cards cards_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_pkey PRIMARY KEY (id);


--
-- Name: challenges challenges_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.challenges
    ADD CONSTRAINT challenges_pkey PRIMARY KEY (id);


--
-- Name: complaints complaints_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT complaints_pkey PRIMARY KEY (id);


--
-- Name: deliveries deliveries_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.deliveries
    ADD CONSTRAINT deliveries_pkey PRIMARY KEY (id);


--
-- Name: feedbacks feedbacks_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_pkey PRIMARY KEY (id);


--
-- Name: imagecaptchas imagecaptchas_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.imagecaptchas
    ADD CONSTRAINT imagecaptchas_pkey PRIMARY KEY (id);


--
-- Name: memories memories_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.memories
    ADD CONSTRAINT memories_pkey PRIMARY KEY (id);


--
-- Name: privacyrequests privacyrequests_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.privacyrequests
    ADD CONSTRAINT privacyrequests_pkey PRIMARY KEY (id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: quantities quantities_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.quantities
    ADD CONSTRAINT quantities_pkey PRIMARY KEY (id);


--
-- Name: recycles recycles_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.recycles
    ADD CONSTRAINT recycles_pkey PRIMARY KEY (id);


--
-- Name: securityanswers securityanswers_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.securityanswers
    ADD CONSTRAINT securityanswers_pkey PRIMARY KEY (id);


--
-- Name: securityanswers securityanswers_userid_key; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.securityanswers
    ADD CONSTRAINT securityanswers_userid_key UNIQUE (userid);


--
-- Name: securityquestions securityquestions_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.securityquestions
    ADD CONSTRAINT securityquestions_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: wallets wallets_pkey; Type: CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.wallets
    ADD CONSTRAINT wallets_pkey PRIMARY KEY (id);


--
-- Name: addresses addresses_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: basketitems basketitems_basketid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.basketitems
    ADD CONSTRAINT basketitems_basketid_fkey FOREIGN KEY (basketid) REFERENCES public.baskets(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: basketitems basketitems_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.basketitems
    ADD CONSTRAINT basketitems_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: baskets baskets_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: cards cards_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.cards
    ADD CONSTRAINT cards_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: complaints complaints_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.complaints
    ADD CONSTRAINT complaints_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: feedbacks feedbacks_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.feedbacks
    ADD CONSTRAINT feedbacks_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: imagecaptchas imagecaptchas_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.imagecaptchas
    ADD CONSTRAINT imagecaptchas_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: memories memories_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.memories
    ADD CONSTRAINT memories_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: privacyrequests privacyrequests_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.privacyrequests
    ADD CONSTRAINT privacyrequests_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: quantities quantities_productid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.quantities
    ADD CONSTRAINT quantities_productid_fkey FOREIGN KEY (productid) REFERENCES public.products(id) ON UPDATE CASCADE;


--
-- Name: recycles recycles_addressid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.recycles
    ADD CONSTRAINT recycles_addressid_fkey FOREIGN KEY (addressid) REFERENCES public.addresses(id) ON UPDATE CASCADE;


--
-- Name: recycles recycles_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.recycles
    ADD CONSTRAINT recycles_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: securityanswers securityanswers_securityquestionid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.securityanswers
    ADD CONSTRAINT securityanswers_securityquestionid_fkey FOREIGN KEY (securityquestionid) REFERENCES public.securityquestions(id) ON UPDATE CASCADE;


--
-- Name: securityanswers securityanswers_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.securityanswers
    ADD CONSTRAINT securityanswers_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- Name: wallets wallets_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: projetcis
--

ALTER TABLE ONLY public.wallets
    ADD CONSTRAINT wallets_userid_fkey FOREIGN KEY (userid) REFERENCES public.users(id) ON UPDATE CASCADE;


--
-- PostgreSQL database dump complete
--

