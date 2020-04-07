--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO kristina;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: kristina
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO kristina;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kristina
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO kristina;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: kristina
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO kristina;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kristina
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO kristina;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: kristina
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO kristina;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kristina
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO kristina;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO kristina;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: kristina
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO kristina;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kristina
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: kristina
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO kristina;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kristina
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO kristina;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: kristina
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO kristina;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kristina
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO kristina;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: kristina
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO kristina;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kristina
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO kristina;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: kristina
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO kristina;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kristina
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO kristina;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: kristina
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO kristina;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kristina
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO kristina;

--
-- Name: target_app_audience; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.target_app_audience (
    id integer NOT NULL,
    audience_name character varying(120) NOT NULL
);


ALTER TABLE public.target_app_audience OWNER TO kristina;

--
-- Name: target_app_audience_id_seq; Type: SEQUENCE; Schema: public; Owner: kristina
--

CREATE SEQUENCE public.target_app_audience_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.target_app_audience_id_seq OWNER TO kristina;

--
-- Name: target_app_audience_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kristina
--

ALTER SEQUENCE public.target_app_audience_id_seq OWNED BY public.target_app_audience.id;


--
-- Name: target_app_error; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.target_app_error (
    error_id integer NOT NULL,
    error_message text NOT NULL,
    status_id integer NOT NULL
);


ALTER TABLE public.target_app_error OWNER TO kristina;

--
-- Name: target_app_error_error_id_seq; Type: SEQUENCE; Schema: public; Owner: kristina
--

CREATE SEQUENCE public.target_app_error_error_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.target_app_error_error_id_seq OWNER TO kristina;

--
-- Name: target_app_error_error_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kristina
--

ALTER SEQUENCE public.target_app_error_error_id_seq OWNED BY public.target_app_error.error_id;


--
-- Name: target_app_serviceaudience; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.target_app_serviceaudience (
    service_audience_id integer NOT NULL,
    service character varying(20) NOT NULL,
    external_identifier integer NOT NULL,
    audience_id integer NOT NULL,
    sourcedata_id integer NOT NULL,
    CONSTRAINT target_app_serviceaudience_external_identifier_check CHECK ((external_identifier >= 0))
);


ALTER TABLE public.target_app_serviceaudience OWNER TO kristina;

--
-- Name: target_app_serviceaudience_service_audience_id_seq; Type: SEQUENCE; Schema: public; Owner: kristina
--

CREATE SEQUENCE public.target_app_serviceaudience_service_audience_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.target_app_serviceaudience_service_audience_id_seq OWNER TO kristina;

--
-- Name: target_app_serviceaudience_service_audience_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kristina
--

ALTER SEQUENCE public.target_app_serviceaudience_service_audience_id_seq OWNED BY public.target_app_serviceaudience.service_audience_id;


--
-- Name: target_app_sourcedata; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.target_app_sourcedata (
    source_data_id integer NOT NULL,
    filename character varying(100) NOT NULL,
    audience_id integer NOT NULL
);


ALTER TABLE public.target_app_sourcedata OWNER TO kristina;

--
-- Name: target_app_sourcedata_source_data_id_seq; Type: SEQUENCE; Schema: public; Owner: kristina
--

CREATE SEQUENCE public.target_app_sourcedata_source_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.target_app_sourcedata_source_data_id_seq OWNER TO kristina;

--
-- Name: target_app_sourcedata_source_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kristina
--

ALTER SEQUENCE public.target_app_sourcedata_source_data_id_seq OWNED BY public.target_app_sourcedata.source_data_id;


--
-- Name: target_app_status; Type: TABLE; Schema: public; Owner: kristina
--

CREATE TABLE public.target_app_status (
    id integer NOT NULL,
    status character varying(120) NOT NULL,
    serviceaudience_id integer NOT NULL
);


ALTER TABLE public.target_app_status OWNER TO kristina;

--
-- Name: target_app_status_id_seq; Type: SEQUENCE; Schema: public; Owner: kristina
--

CREATE SEQUENCE public.target_app_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.target_app_status_id_seq OWNER TO kristina;

--
-- Name: target_app_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kristina
--

ALTER SEQUENCE public.target_app_status_id_seq OWNED BY public.target_app_status.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: target_app_audience id; Type: DEFAULT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_audience ALTER COLUMN id SET DEFAULT nextval('public.target_app_audience_id_seq'::regclass);


--
-- Name: target_app_error error_id; Type: DEFAULT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_error ALTER COLUMN error_id SET DEFAULT nextval('public.target_app_error_error_id_seq'::regclass);


--
-- Name: target_app_serviceaudience service_audience_id; Type: DEFAULT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_serviceaudience ALTER COLUMN service_audience_id SET DEFAULT nextval('public.target_app_serviceaudience_service_audience_id_seq'::regclass);


--
-- Name: target_app_sourcedata source_data_id; Type: DEFAULT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_sourcedata ALTER COLUMN source_data_id SET DEFAULT nextval('public.target_app_sourcedata_source_data_id_seq'::regclass);


--
-- Name: target_app_status id; Type: DEFAULT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_status ALTER COLUMN id SET DEFAULT nextval('public.target_app_status_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add audience	1	add_audience
2	Can change audience	1	change_audience
3	Can delete audience	1	delete_audience
4	Can view audience	1	view_audience
5	Can add service audience	2	add_serviceaudience
6	Can change service audience	2	change_serviceaudience
7	Can delete service audience	2	delete_serviceaudience
8	Can view service audience	2	view_serviceaudience
9	Can add status	3	add_status
10	Can change status	3	change_status
11	Can delete status	3	delete_status
12	Can view status	3	view_status
13	Can add source data	4	add_sourcedata
14	Can change source data	4	change_sourcedata
15	Can delete source data	4	delete_sourcedata
16	Can view source data	4	view_sourcedata
17	Can add error	5	add_error
18	Can change error	5	change_error
19	Can delete error	5	delete_error
20	Can view error	5	view_error
21	Can add log entry	6	add_logentry
22	Can change log entry	6	change_logentry
23	Can delete log entry	6	delete_logentry
24	Can view log entry	6	view_logentry
25	Can add permission	7	add_permission
26	Can change permission	7	change_permission
27	Can delete permission	7	delete_permission
28	Can view permission	7	view_permission
29	Can add group	8	add_group
30	Can change group	8	change_group
31	Can delete group	8	delete_group
32	Can view group	8	view_group
33	Can add user	9	add_user
34	Can change user	9	change_user
35	Can delete user	9	delete_user
36	Can view user	9	view_user
37	Can add content type	10	add_contenttype
38	Can change content type	10	change_contenttype
39	Can delete content type	10	delete_contenttype
40	Can view content type	10	view_contenttype
41	Can add session	11	add_session
42	Can change session	11	change_session
43	Can delete session	11	delete_session
44	Can view session	11	view_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$HNIxog0BfJMl$ayiIXmoLd0OVMPm/ZjdHaAFFXTQo3UYy+P2n7TxIh/w=	2020-04-06 15:45:05.394628+00	t	kristina			abckristinaa@gmail.com	t	t	2020-04-06 15:44:50.734743+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-04-06 15:45:15.421357+00	1	NSK_Python	1	[{"added": {}}]	1	1
2	2020-04-06 16:14:36.268216+00	2	Msk_UI_Design	1	[{"added": {}}]	1	1
3	2020-04-06 16:14:42.150013+00	3	Spb_DevOps	1	[{"added": {}}]	1	1
4	2020-04-06 16:14:49.081649+00	4	Msk_Design_Architect	1	[{"added": {}}]	1	1
5	2020-04-06 16:14:55.000904+00	5	Samara_Design_Analyst	1	[{"added": {}}]	1	1
6	2020-04-06 16:15:28.172989+00	1	uploads/2020/04/06/emails_LwSdBnQ.csv on NSK_Python	1	[{"added": {}}]	4	1
7	2020-04-06 16:15:44.414027+00	1	NSK_Python on FB (EXT_ID: 123456789)	1	[{"added": {}}]	2	1
8	2020-04-06 16:17:02.828023+00	2	NSK_Python on YA (EXT_ID: 987654654)	1	[{"added": {}}]	2	1
9	2020-04-06 18:39:08.540645+00	2	uploads/2020/04/06/emails_bbb_p1UQeEg.csv	1	[{"added": {}}]	4	1
10	2020-04-06 18:39:34.847196+00	3	Msk_UI_Design on YA (EXT_ID: 741741741)	1	[{"added": {}}]	2	1
11	2020-04-07 06:48:37.988831+00	4	NSK_Python on Vkontakte (EXT_ID: 753753357)	1	[{"added": {}}]	2	1
12	2020-04-07 06:49:04.17998+00	1	Done to NSK_Python on FB (EXT_ID: 123456789)	1	[{"added": {}}]	3	1
13	2020-04-07 06:49:16.085851+00	2	Done to NSK_Python on YA (EXT_ID: 987654654)	1	[{"added": {}}]	3	1
14	2020-04-07 06:49:27.96949+00	3	Uploading file to a service to Msk_UI_Design on YA (EXT_ID: 741741741)	1	[{"added": {}}]	3	1
15	2020-04-07 06:49:38.393701+00	4	Error occured to NSK_Python on Vkontakte (EXT_ID: 753753357)	1	[{"added": {}}]	3	1
16	2020-04-07 06:50:48.849143+00	3	uploads/2020/04/07/emails_ccc.csv	1	[{"added": {}}]	4	1
17	2020-04-07 06:51:14.873733+00	5	Spb_DevOps on FB (EXT_ID: 111222444)	1	[{"added": {}}]	2	1
18	2020-04-07 06:51:29.622138+00	6	Spb_DevOps on VK (EXT_ID: 123457)	1	[{"added": {}}]	2	1
19	2020-04-07 06:54:11.755263+00	4	uploads/2020/04/07/emails_bbb_3rd_copy.csv	1	[{"added": {}}]	4	1
20	2020-04-07 06:54:40.440615+00	7	Samara_Design_Analyst on YA (EXT_ID: 123456784)	1	[{"added": {}}]	2	1
21	2020-04-07 06:57:48.555049+00	5	DONE	1	[{"added": {}}]	3	1
22	2020-04-07 07:00:35.059209+00	2	uploads/2020/04/07/emails_bbb.csv	2	[{"changed": {"fields": ["Name of uploaded file"]}}]	4	1
23	2020-04-07 07:00:49.282294+00	1	uploads/2020/04/07/emails.csv	2	[{"changed": {"fields": ["Name of uploaded file"]}}]	4	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	target_app	audience
2	target_app	serviceaudience
3	target_app	status
4	target_app	sourcedata
5	target_app	error
6	admin	logentry
7	auth	permission
8	auth	group
9	auth	user
10	contenttypes	contenttype
11	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-04-06 15:44:24.702465+00
2	auth	0001_initial	2020-04-06 15:44:25.062195+00
3	admin	0001_initial	2020-04-06 15:44:26.49596+00
4	admin	0002_logentry_remove_auto_add	2020-04-06 15:44:26.666018+00
5	admin	0003_logentry_add_action_flag_choices	2020-04-06 15:44:26.687457+00
6	contenttypes	0002_remove_content_type_name	2020-04-06 15:44:26.729112+00
7	auth	0002_alter_permission_name_max_length	2020-04-06 15:44:26.766827+00
8	auth	0003_alter_user_email_max_length	2020-04-06 15:44:26.813998+00
9	auth	0004_alter_user_username_opts	2020-04-06 15:44:26.84832+00
10	auth	0005_alter_user_last_login_null	2020-04-06 15:44:26.889407+00
11	auth	0006_require_contenttypes_0002	2020-04-06 15:44:26.906669+00
12	auth	0007_alter_validators_add_error_messages	2020-04-06 15:44:26.933431+00
13	auth	0008_alter_user_username_max_length	2020-04-06 15:44:27.020895+00
14	auth	0009_alter_user_last_name_max_length	2020-04-06 15:44:27.077315+00
15	auth	0010_alter_group_name_max_length	2020-04-06 15:44:27.114063+00
16	auth	0011_update_proxy_permissions	2020-04-06 15:44:27.14348+00
17	sessions	0001_initial	2020-04-06 15:44:27.314315+00
18	target_app	0001_initial	2020-04-06 15:44:28.033109+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
8wcpzqyfaraag3f2ekfcgtvwy0wxs61v	NTllNzA4YjE0YTZjMTEyYjY2OWI4YTg3OWU2YTVjOTE3MTAxYjg2Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzMjUzYzExZDJiODA0MGNiM2YzMDFiNjQwNGE5OTlmYTBkZWFmMWUxIn0=	2020-04-20 15:45:05.429106+00
\.


--
-- Data for Name: target_app_audience; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.target_app_audience (id, audience_name) FROM stdin;
1	NSK_Python
2	Msk_UI_Design
3	Spb_DevOps
4	Msk_Design_Architect
5	Samara_Design_Analyst
\.


--
-- Data for Name: target_app_error; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.target_app_error (error_id, error_message, status_id) FROM stdin;
\.


--
-- Data for Name: target_app_serviceaudience; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.target_app_serviceaudience (service_audience_id, service, external_identifier, audience_id, sourcedata_id) FROM stdin;
1	FB	123456789	1	1
2	YA	987654654	1	1
3	YA	741741741	2	2
4	Vkontakte	753753357	1	1
5	FB	111222444	3	3
6	VK	123457	3	3
7	YA	123456784	5	4
\.


--
-- Data for Name: target_app_sourcedata; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.target_app_sourcedata (source_data_id, filename, audience_id) FROM stdin;
3	uploads/2020/04/07/emails_ccc.csv	3
4	uploads/2020/04/07/emails_bbb_3rd_copy.csv	5
2	uploads/2020/04/07/emails_bbb.csv	2
1	uploads/2020/04/07/emails.csv	1
\.


--
-- Data for Name: target_app_status; Type: TABLE DATA; Schema: public; Owner: kristina
--

COPY public.target_app_status (id, status, serviceaudience_id) FROM stdin;
1	Done	1
2	Done	2
3	Uploading file to a service	3
4	Error occured	4
5	DONE	7
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kristina
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kristina
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kristina
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kristina
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kristina
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kristina
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kristina
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 23, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kristina
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kristina
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Name: target_app_audience_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kristina
--

SELECT pg_catalog.setval('public.target_app_audience_id_seq', 5, true);


--
-- Name: target_app_error_error_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kristina
--

SELECT pg_catalog.setval('public.target_app_error_error_id_seq', 1, false);


--
-- Name: target_app_serviceaudience_service_audience_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kristina
--

SELECT pg_catalog.setval('public.target_app_serviceaudience_service_audience_id_seq', 7, true);


--
-- Name: target_app_sourcedata_source_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kristina
--

SELECT pg_catalog.setval('public.target_app_sourcedata_source_data_id_seq', 4, true);


--
-- Name: target_app_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kristina
--

SELECT pg_catalog.setval('public.target_app_status_id_seq', 5, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: target_app_audience target_app_audience_audience_name_key; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_audience
    ADD CONSTRAINT target_app_audience_audience_name_key UNIQUE (audience_name);


--
-- Name: target_app_audience target_app_audience_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_audience
    ADD CONSTRAINT target_app_audience_pkey PRIMARY KEY (id);


--
-- Name: target_app_error target_app_error_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_error
    ADD CONSTRAINT target_app_error_pkey PRIMARY KEY (error_id);


--
-- Name: target_app_serviceaudience target_app_serviceaudience_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_serviceaudience
    ADD CONSTRAINT target_app_serviceaudience_pkey PRIMARY KEY (service_audience_id);


--
-- Name: target_app_sourcedata target_app_sourcedata_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_sourcedata
    ADD CONSTRAINT target_app_sourcedata_pkey PRIMARY KEY (source_data_id);


--
-- Name: target_app_status target_app_status_pkey; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_status
    ADD CONSTRAINT target_app_status_pkey PRIMARY KEY (id);


--
-- Name: target_app_serviceaudience uniq; Type: CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_serviceaudience
    ADD CONSTRAINT uniq UNIQUE (external_identifier, service);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: target_app_audience_audience_name_7f32b468_like; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX target_app_audience_audience_name_7f32b468_like ON public.target_app_audience USING btree (audience_name varchar_pattern_ops);


--
-- Name: target_app_error_status_id_9496dabc; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX target_app_error_status_id_9496dabc ON public.target_app_error USING btree (status_id);


--
-- Name: target_app_serviceaudience_audience_id_4df62659; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX target_app_serviceaudience_audience_id_4df62659 ON public.target_app_serviceaudience USING btree (audience_id);


--
-- Name: target_app_serviceaudience_sourcedata_id_f3885c67; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX target_app_serviceaudience_sourcedata_id_f3885c67 ON public.target_app_serviceaudience USING btree (sourcedata_id);


--
-- Name: target_app_sourcedata_audience_id_08af18e4; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX target_app_sourcedata_audience_id_08af18e4 ON public.target_app_sourcedata USING btree (audience_id);


--
-- Name: target_app_status_serviceaudience_id_135032b4; Type: INDEX; Schema: public; Owner: kristina
--

CREATE INDEX target_app_status_serviceaudience_id_135032b4 ON public.target_app_status USING btree (serviceaudience_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: target_app_error target_app_error_status_id_9496dabc_fk_target_app_status_id; Type: FK CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_error
    ADD CONSTRAINT target_app_error_status_id_9496dabc_fk_target_app_status_id FOREIGN KEY (status_id) REFERENCES public.target_app_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: target_app_serviceaudience target_app_serviceau_audience_id_4df62659_fk_target_ap; Type: FK CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_serviceaudience
    ADD CONSTRAINT target_app_serviceau_audience_id_4df62659_fk_target_ap FOREIGN KEY (audience_id) REFERENCES public.target_app_audience(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: target_app_serviceaudience target_app_serviceau_sourcedata_id_f3885c67_fk_target_ap; Type: FK CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_serviceaudience
    ADD CONSTRAINT target_app_serviceau_sourcedata_id_f3885c67_fk_target_ap FOREIGN KEY (sourcedata_id) REFERENCES public.target_app_sourcedata(source_data_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: target_app_sourcedata target_app_sourcedat_audience_id_08af18e4_fk_target_ap; Type: FK CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_sourcedata
    ADD CONSTRAINT target_app_sourcedat_audience_id_08af18e4_fk_target_ap FOREIGN KEY (audience_id) REFERENCES public.target_app_audience(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: target_app_status target_app_status_serviceaudience_id_135032b4_fk_target_ap; Type: FK CONSTRAINT; Schema: public; Owner: kristina
--

ALTER TABLE ONLY public.target_app_status
    ADD CONSTRAINT target_app_status_serviceaudience_id_135032b4_fk_target_ap FOREIGN KEY (serviceaudience_id) REFERENCES public.target_app_serviceaudience(service_audience_id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

