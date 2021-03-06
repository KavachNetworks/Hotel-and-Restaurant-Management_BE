--
-- PostgreSQL database dump
--

-- Dumped from database version 11.8
-- Dumped by pg_dump version 11.8

-- Started on 2020-09-07 14:30:05

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

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 18140)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 18143)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3113 (class 0 OID 0)
-- Dependencies: 197
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 198 (class 1259 OID 18145)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 18148)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3114 (class 0 OID 0)
-- Dependencies: 199
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 200 (class 1259 OID 18150)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 18153)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3115 (class 0 OID 0)
-- Dependencies: 201
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 202 (class 1259 OID 18155)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 18161)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 18164)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3116 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 205 (class 1259 OID 18166)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3117 (class 0 OID 0)
-- Dependencies: 205
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 206 (class 1259 OID 18168)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 18171)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3118 (class 0 OID 0)
-- Dependencies: 207
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 208 (class 1259 OID 18173)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 18180)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3119 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 210 (class 1259 OID 18182)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 18185)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3120 (class 0 OID 0)
-- Dependencies: 211
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 212 (class 1259 OID 18187)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 18193)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3121 (class 0 OID 0)
-- Dependencies: 213
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 214 (class 1259 OID 18195)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 18201)
-- Name: main_app_adminprofile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_app_adminprofile (
    id integer NOT NULL,
    admin_type character varying(20) NOT NULL,
    phone character varying(10) NOT NULL,
    status boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.main_app_adminprofile OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 18204)
-- Name: main_app_adminprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_app_adminprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_app_adminprofile_id_seq OWNER TO postgres;

--
-- TOC entry 3122 (class 0 OID 0)
-- Dependencies: 216
-- Name: main_app_adminprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_app_adminprofile_id_seq OWNED BY public.main_app_adminprofile.id;


--
-- TOC entry 217 (class 1259 OID 18206)
-- Name: main_app_bills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_app_bills (
    id integer NOT NULL,
    total_amount double precision NOT NULL,
    billing_date_from timestamp with time zone NOT NULL,
    billing_date_to date NOT NULL,
    bill_type character varying(100) NOT NULL,
    user_id integer NOT NULL,
    payment_type character varying(100) NOT NULL
);


ALTER TABLE public.main_app_bills OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 18209)
-- Name: main_app_bills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_app_bills_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_app_bills_id_seq OWNER TO postgres;

--
-- TOC entry 3123 (class 0 OID 0)
-- Dependencies: 218
-- Name: main_app_bills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_app_bills_id_seq OWNED BY public.main_app_bills.id;


--
-- TOC entry 219 (class 1259 OID 18211)
-- Name: main_app_foodservices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_app_foodservices (
    id integer NOT NULL,
    quantity integer NOT NULL,
    menu_item character varying(100) NOT NULL,
    service_id integer NOT NULL,
    status boolean NOT NULL,
    "where" character varying(3) NOT NULL
);


ALTER TABLE public.main_app_foodservices OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 18214)
-- Name: main_app_foodservices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_app_foodservices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_app_foodservices_id_seq OWNER TO postgres;

--
-- TOC entry 3124 (class 0 OID 0)
-- Dependencies: 220
-- Name: main_app_foodservices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_app_foodservices_id_seq OWNED BY public.main_app_foodservices.id;


--
-- TOC entry 221 (class 1259 OID 18216)
-- Name: main_app_guestprofile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_app_guestprofile (
    id integer NOT NULL,
    table_number character varying(3) NOT NULL,
    phone character varying(10) NOT NULL,
    date timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    status boolean NOT NULL,
    table_id integer
);


ALTER TABLE public.main_app_guestprofile OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 18219)
-- Name: main_app_guestprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_app_guestprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_app_guestprofile_id_seq OWNER TO postgres;

--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 222
-- Name: main_app_guestprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_app_guestprofile_id_seq OWNED BY public.main_app_guestprofile.id;


--
-- TOC entry 223 (class 1259 OID 18221)
-- Name: main_app_laundryservice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_app_laundryservice (
    id integer NOT NULL,
    quantity integer NOT NULL,
    garment_type character varying(50) NOT NULL,
    laundry_type character varying(50) NOT NULL,
    instructions character varying(100) NOT NULL,
    service_id integer NOT NULL
);


ALTER TABLE public.main_app_laundryservice OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 18224)
-- Name: main_app_laundryservice_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_app_laundryservice_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_app_laundryservice_id_seq OWNER TO postgres;

--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 224
-- Name: main_app_laundryservice_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_app_laundryservice_id_seq OWNED BY public.main_app_laundryservice.id;


--
-- TOC entry 225 (class 1259 OID 18226)
-- Name: main_app_menuitems; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_app_menuitems (
    id integer NOT NULL,
    item_name character varying(50) NOT NULL,
    item_description character varying(150) NOT NULL,
    item_picture character varying(100) NOT NULL,
    item_price double precision NOT NULL,
    menu_type character varying(50) NOT NULL,
    food_type character varying(10) NOT NULL,
    available_status boolean NOT NULL
);


ALTER TABLE public.main_app_menuitems OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 18229)
-- Name: main_app_menuitems_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_app_menuitems_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_app_menuitems_id_seq OWNER TO postgres;

--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 226
-- Name: main_app_menuitems_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_app_menuitems_id_seq OWNED BY public.main_app_menuitems.id;


--
-- TOC entry 238 (class 1259 OID 18467)
-- Name: main_app_restaurantorders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_app_restaurantorders (
    id integer NOT NULL,
    table_number character varying(3) NOT NULL,
    menu_item character varying(100) NOT NULL,
    quantity integer NOT NULL,
    amount double precision NOT NULL,
    status boolean NOT NULL,
    user_id integer NOT NULL,
    order_date timestamp with time zone NOT NULL
);


ALTER TABLE public.main_app_restaurantorders OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 18465)
-- Name: main_app_restaurantorders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_app_restaurantorders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_app_restaurantorders_id_seq OWNER TO postgres;

--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 237
-- Name: main_app_restaurantorders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_app_restaurantorders_id_seq OWNED BY public.main_app_restaurantorders.id;


--
-- TOC entry 227 (class 1259 OID 18231)
-- Name: main_app_room; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_app_room (
    id integer NOT NULL,
    room_number character varying(3) NOT NULL,
    room_type character varying(50) NOT NULL,
    price double precision NOT NULL,
    available boolean NOT NULL
);


ALTER TABLE public.main_app_room OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 18234)
-- Name: main_app_room_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_app_room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_app_room_id_seq OWNER TO postgres;

--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 228
-- Name: main_app_room_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_app_room_id_seq OWNED BY public.main_app_room.id;


--
-- TOC entry 229 (class 1259 OID 18236)
-- Name: main_app_roomservices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_app_roomservices (
    id integer NOT NULL,
    option character varying(50) NOT NULL,
    message character varying(100) NOT NULL,
    service_id integer NOT NULL
);


ALTER TABLE public.main_app_roomservices OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 18239)
-- Name: main_app_roomservices_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_app_roomservices_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_app_roomservices_id_seq OWNER TO postgres;

--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 230
-- Name: main_app_roomservices_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_app_roomservices_id_seq OWNED BY public.main_app_roomservices.id;


--
-- TOC entry 231 (class 1259 OID 18241)
-- Name: main_app_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_app_services (
    id integer NOT NULL,
    amount double precision NOT NULL,
    service_type character varying(50) NOT NULL,
    order_date timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    user_room_number character varying(3) NOT NULL,
    order_status boolean NOT NULL
);


ALTER TABLE public.main_app_services OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 18244)
-- Name: main_app_services_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_app_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_app_services_id_seq OWNER TO postgres;

--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 232
-- Name: main_app_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_app_services_id_seq OWNED BY public.main_app_services.id;


--
-- TOC entry 236 (class 1259 OID 18447)
-- Name: main_app_tables; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_app_tables (
    id integer NOT NULL,
    table_number character varying(3) NOT NULL,
    status boolean NOT NULL
);


ALTER TABLE public.main_app_tables OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 18445)
-- Name: main_app_tables_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_app_tables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_app_tables_id_seq OWNER TO postgres;

--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 235
-- Name: main_app_tables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_app_tables_id_seq OWNED BY public.main_app_tables.id;


--
-- TOC entry 233 (class 1259 OID 18246)
-- Name: main_app_userprofile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.main_app_userprofile (
    id integer NOT NULL,
    phone character varying(10) NOT NULL,
    address character varying(150) NOT NULL,
    aadhar_number character varying(12) NOT NULL,
    start_date timestamp with time zone NOT NULL,
    end_date date NOT NULL,
    status boolean NOT NULL,
    user_id integer NOT NULL,
    room_id integer,
    room_number character varying(3)
);


ALTER TABLE public.main_app_userprofile OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 18249)
-- Name: main_app_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.main_app_userprofile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_app_userprofile_id_seq OWNER TO postgres;

--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 234
-- Name: main_app_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.main_app_userprofile_id_seq OWNED BY public.main_app_userprofile.id;


--
-- TOC entry 2813 (class 2604 OID 18251)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2814 (class 2604 OID 18252)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2815 (class 2604 OID 18253)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2816 (class 2604 OID 18254)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2817 (class 2604 OID 18255)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2818 (class 2604 OID 18256)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2819 (class 2604 OID 18257)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2821 (class 2604 OID 18258)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2822 (class 2604 OID 18259)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2823 (class 2604 OID 18260)
-- Name: main_app_adminprofile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_adminprofile ALTER COLUMN id SET DEFAULT nextval('public.main_app_adminprofile_id_seq'::regclass);


--
-- TOC entry 2824 (class 2604 OID 18261)
-- Name: main_app_bills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_bills ALTER COLUMN id SET DEFAULT nextval('public.main_app_bills_id_seq'::regclass);


--
-- TOC entry 2825 (class 2604 OID 18262)
-- Name: main_app_foodservices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_foodservices ALTER COLUMN id SET DEFAULT nextval('public.main_app_foodservices_id_seq'::regclass);


--
-- TOC entry 2826 (class 2604 OID 18263)
-- Name: main_app_guestprofile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_guestprofile ALTER COLUMN id SET DEFAULT nextval('public.main_app_guestprofile_id_seq'::regclass);


--
-- TOC entry 2827 (class 2604 OID 18264)
-- Name: main_app_laundryservice id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_laundryservice ALTER COLUMN id SET DEFAULT nextval('public.main_app_laundryservice_id_seq'::regclass);


--
-- TOC entry 2828 (class 2604 OID 18265)
-- Name: main_app_menuitems id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_menuitems ALTER COLUMN id SET DEFAULT nextval('public.main_app_menuitems_id_seq'::regclass);


--
-- TOC entry 2834 (class 2604 OID 18470)
-- Name: main_app_restaurantorders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_restaurantorders ALTER COLUMN id SET DEFAULT nextval('public.main_app_restaurantorders_id_seq'::regclass);


--
-- TOC entry 2829 (class 2604 OID 18266)
-- Name: main_app_room id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_room ALTER COLUMN id SET DEFAULT nextval('public.main_app_room_id_seq'::regclass);


--
-- TOC entry 2830 (class 2604 OID 18267)
-- Name: main_app_roomservices id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_roomservices ALTER COLUMN id SET DEFAULT nextval('public.main_app_roomservices_id_seq'::regclass);


--
-- TOC entry 2831 (class 2604 OID 18268)
-- Name: main_app_services id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_services ALTER COLUMN id SET DEFAULT nextval('public.main_app_services_id_seq'::regclass);


--
-- TOC entry 2833 (class 2604 OID 18450)
-- Name: main_app_tables id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_tables ALTER COLUMN id SET DEFAULT nextval('public.main_app_tables_id_seq'::regclass);


--
-- TOC entry 2832 (class 2604 OID 18269)
-- Name: main_app_userprofile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_userprofile ALTER COLUMN id SET DEFAULT nextval('public.main_app_userprofile_id_seq'::regclass);


--
-- TOC entry 3065 (class 0 OID 18140)
-- Dependencies: 196
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3067 (class 0 OID 18145)
-- Dependencies: 198
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3069 (class 0 OID 18150)
-- Dependencies: 200
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add room', 7, 'add_room');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change room', 7, 'change_room');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete room', 7, 'delete_room');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view room', 7, 'view_room');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add laundry service', 8, 'add_laundryservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change laundry service', 8, 'change_laundryservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete laundry service', 8, 'delete_laundryservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view laundry service', 8, 'view_laundryservice');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add user profile', 9, 'add_userprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change user profile', 9, 'change_userprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete user profile', 9, 'delete_userprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view user profile', 9, 'view_userprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add food services', 10, 'add_foodservices');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change food services', 10, 'change_foodservices');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete food services', 10, 'delete_foodservices');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view food services', 10, 'view_foodservices');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add admin profile', 11, 'add_adminprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change admin profile', 11, 'change_adminprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete admin profile', 11, 'delete_adminprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view admin profile', 11, 'view_adminprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add room services', 12, 'add_roomservices');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change room services', 12, 'change_roomservices');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete room services', 12, 'delete_roomservices');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view room services', 12, 'view_roomservices');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add menu items', 13, 'add_menuitems');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change menu items', 13, 'change_menuitems');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete menu items', 13, 'delete_menuitems');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view menu items', 13, 'view_menuitems');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (53, 'Can add bills', 14, 'add_bills');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (54, 'Can change bills', 14, 'change_bills');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (55, 'Can delete bills', 14, 'delete_bills');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (56, 'Can view bills', 14, 'view_bills');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (57, 'Can add guest profile', 15, 'add_guestprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (58, 'Can change guest profile', 15, 'change_guestprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (59, 'Can delete guest profile', 15, 'delete_guestprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (60, 'Can view guest profile', 15, 'view_guestprofile');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (61, 'Can add services', 16, 'add_services');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (62, 'Can change services', 16, 'change_services');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (63, 'Can delete services', 16, 'delete_services');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (64, 'Can view services', 16, 'view_services');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (65, 'Can add tables', 17, 'add_tables');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (66, 'Can change tables', 17, 'change_tables');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (67, 'Can delete tables', 17, 'delete_tables');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (68, 'Can view tables', 17, 'view_tables');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (69, 'Can add restaurant orders', 18, 'add_restaurantorders');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (70, 'Can change restaurant orders', 18, 'change_restaurantorders');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (71, 'Can delete restaurant orders', 18, 'delete_restaurantorders');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (72, 'Can view restaurant orders', 18, 'view_restaurantorders');


--
-- TOC entry 3071 (class 0 OID 18155)
-- Dependencies: 202
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (8, 'pbkdf2_sha256$150000$daVJoi6CvmKK$inHf9jtfYcygUg1xXrhNR8HFkia/9qf+aiH6xcxJeT0=', NULL, false, 'kkulkarni@gmail.com', 'Kaushik', 'Kulkarni', 'kkulkarni@gmail.com', false, true, '2020-09-02 12:52:08.281353+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (10, 'pbkdf2_sha256$150000$bDLHK1Mpsn3Z$evmZ38brQaFKlqbVPoUy42AuSyXCieAzvmGci4wJc1Q=', NULL, false, 'jcena', 'John', 'Cena', 'jcena@gmail.com', false, true, '2020-09-02 12:56:48.466566+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (9, 'pbkdf2_sha256$150000$iL4ipr6YT96V$gyPNuzXuMUdU4u3Y0n7n5TPCSsk5jHDjT3NT5q3avhY=', '2020-09-02 12:59:56.34235+05:30', false, 'rahulkp@gmail.com', 'Rahul', 'KP', 'rahulkp@gmail.com', false, true, '2020-09-02 12:53:52.16427+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (15, 'pbkdf2_sha256$150000$FTr2Xpv6wABD$GSJrnLnXkFoGzist69ObtO7i6vAGzyLupAdC+oBTYag=', NULL, false, 'mukundacharya154', 'Manas', 'Sharma', 'mukundacharya154@gmail.com', false, true, '2020-09-02 17:47:04.851641+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (11, 'pbkdf2_sha256$150000$iMlCMMRyNONB$nhoR1vdFpn5L5cTPBX9CbZpG2nyyeeVsUG3+AKGaVbY=', '2020-09-02 15:22:29.019902+05:30', false, 'nitinrao', 'Nitin', 'Rao', 'nitinrao@gmail.com', false, true, '2020-09-02 15:21:22.281309+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (16, 'pbkdf2_sha256$150000$Dk8C0Iu5aK2C$bXm5D5t1HK3MPvOlOgY50kgppnNj+V8Azr3A381y/YU=', NULL, false, 'mukundacharya1', 'Rahul', 'Dhaka', 'mukundacharya1@gmail.com', false, true, '2020-09-02 18:07:57.816712+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (12, 'pbkdf2_sha256$150000$3PU4Sb66t4ir$SrgsJqPPbMNEBxeLqa5y30Owl1+hlYScT4CMp0VuzRM=', NULL, false, 'mukuacharya30', 'Mukund', 'Acharya', 'mukuacharya30@gmail.com', false, true, '2020-09-02 16:36:32.390247+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (13, 'pbkdf2_sha256$150000$ao8gXijNLTYq$hgMzYpDB8HOQpb3sZZQEfS63EKWxrszZ7hJJCIGxWF4=', NULL, false, 'mbhat', 'Madhur', 'Bhat', 'mbhat@gmail.com', false, true, '2020-09-02 17:45:57.522558+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (3, 'pbkdf2_sha256$180000$ugCqjoDhZMyp$PHYlhOJtsBBzs7JvRTtpyn+fQhWnExps9wtmwKfS24w=', '2020-09-05 12:19:12.391312+05:30', false, 'recep1', 'Shreya', 'Verma', 'sverma@gmail.com', false, true, '2020-08-31 15:31:17+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (5, 'pbkdf2_sha256$180000$OmvOfPHeHs0g$X+QSrIldAEfaZliugC0IgltgXJjZBwrM+eSTDsGlXy0=', '2020-09-05 11:50:57.08665+05:30', false, 'roomservice1', 'Anuj', 'Kumar', 'anujkumar@gmail.com', false, true, '2020-08-31 15:35:23+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (17, 'pbkdf2_sha256$180000$b9Ox20L4cLi0$eyIvHNJ9eH3GWq5KY8+HwmHGGcVW4jj6F2Axj6lrPdM=', '2020-09-05 15:33:50.474616+05:30', false, 'mvr77712', 'Anupam', 'Kher', 'mvr77712@gmail.com', false, true, '2020-09-03 20:17:22.09262+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (26, 'pbkdf2_sha256$150000$lkfh6TSHRoH3$7z9z2/y81trfqnR2/t6TkrPK4c7qgN96QBTmcRZwAD4=', '2020-09-05 22:51:01.256575+05:30', false, 'mukundacharya154@gmail.com', 'Mukund', 'Acharya', 'mukundacharya154@gmail.com', false, true, '2020-09-05 22:50:08.006418+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$150000$cD8VCIiB6Ghq$bAQLv3KNvMbIFZsaDc68v86jqjPGD6AyHtUnQPdwjdE=', '2020-09-07 14:16:57.485513+05:30', true, 'backend', '', '', '', true, true, '2020-08-31 15:28:51.30134+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (4, 'pbkdf2_sha256$150000$tvnsmBNjYwl1$XygOp2HWjOVJLnHENwmbltUOCoSTC8alus/L3wXnEWI=', '2020-09-07 14:20:21.164678+05:30', false, 'owner1', 'Roy', 'Birla', 'rbirla@gmail.com', false, true, '2020-08-31 15:33:20+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (2, 'pbkdf2_sha256$150000$BDIKXbSpuXQo$RSMfUulYoNPy34mxvkH1cqHJCjGxOK+hv3Atn0vNdNQ=', '2020-09-07 14:21:19.741106+05:30', false, 'chef1', 'Praveen', 'Maharaj', 'pmaharaj@gmail.com', false, true, '2020-08-31 15:30:26+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (19, 'pbkdf2_sha256$150000$FFqkBlcAbaf9$WiyLZ+qQfWCHesQ8FVAl4MOu0DEqiSXHABdM2RV8g2o=', NULL, false, 'mukuacharya30@gmail.com', 'Mukund', 'Acharya', 'mukuacharya30@gmail.com', false, true, '2020-09-05 19:19:27.471074+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (25, 'pbkdf2_sha256$150000$gwXtYOhFqrru$hRxXGjDCAgJGBfS+lDNodfGHVlgqfDFME0fSw6bwlMg=', NULL, false, 'dnaik@gmail.com', 'Derek', 'Naik', 'dnaik@gmail.com', false, true, '2020-09-05 22:43:00.126521+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (7, 'pbkdf2_sha256$150000$pYvzI9m1HetG$4bFhNNbPxNphrce653LlWqMT/cdBM7toW8SCsLSSlpw=', '2020-09-07 14:09:11.693319+05:30', false, 'laundry1', 'Naresh', 'Jha', 'njha@gmail.com', false, true, '2020-08-31 17:46:56+05:30');
INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (6, 'pbkdf2_sha256$150000$Ju5kRS5urhXR$HeuNOrrU9dAjnCP5c8ESfPwfhdOGam5O1PlCaNz8uXk=', '2020-09-07 14:09:31.278324+05:30', false, 'mayurhebbar', 'Mayur', 'Hebbar', 'mhebbar@gmail.com', false, true, '2020-08-31 15:36:36+05:30');


--
-- TOC entry 3072 (class 0 OID 18161)
-- Dependencies: 203
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3075 (class 0 OID 18168)
-- Dependencies: 206
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3077 (class 0 OID 18173)
-- Dependencies: 208
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2020-08-31 15:30:26.958854+05:30', '2', 'chef1', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2020-08-31 15:30:48.758734+05:30', '2', 'chef1', 2, '[{"changed": {"fields": ["first_name", "last_name", "email"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2020-08-31 15:31:17.63421+05:30', '3', 'recep1', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2020-08-31 15:31:44.018537+05:30', '3', 'recep1', 2, '[{"changed": {"fields": ["first_name", "last_name", "email"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2020-08-31 15:33:21.133131+05:30', '4', 'owner1', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2020-08-31 15:34:03.943833+05:30', '4', 'owner1', 2, '[{"changed": {"fields": ["first_name", "last_name", "email"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2020-08-31 15:35:23.434657+05:30', '5', 'roomservice1', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2020-08-31 15:35:59.476015+05:30', '5', 'roomservice1', 2, '[{"changed": {"fields": ["first_name", "last_name", "email"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2020-08-31 15:36:36.4906+05:30', '6', 'mayurhebbar', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2020-08-31 15:36:53.961606+05:30', '6', 'mayurhebbar', 2, '[{"changed": {"fields": ["first_name", "last_name", "email"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2020-08-31 15:39:24.899988+05:30', '1', 'AdminProfile object (1)', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (12, '2020-08-31 15:39:46.896103+05:30', '2', 'AdminProfile object (2)', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (13, '2020-08-31 15:40:10.700315+05:30', '3', 'AdminProfile object (3)', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (14, '2020-08-31 15:40:33.958258+05:30', '3', 'AdminProfile object (3)', 2, '[{"changed": {"fields": ["admin_type"]}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (15, '2020-08-31 15:40:59.233369+05:30', '4', 'AdminProfile object (4)', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (16, '2020-08-31 15:42:50.33431+05:30', '1', 'UserProfile object (1)', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (17, '2020-08-31 17:46:56.53551+05:30', '7', 'laundry1', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (18, '2020-08-31 17:47:16.172311+05:30', '7', 'laundry1', 2, '[{"changed": {"fields": ["first_name", "last_name", "email"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (19, '2020-08-31 17:49:05.839342+05:30', '5', 'AdminProfile object (5)', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (20, '2020-09-01 09:57:47.172409+05:30', '1', 'Room object (1)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (21, '2020-09-01 09:58:04.915675+05:30', '2', 'Room object (2)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (22, '2020-09-01 09:58:25.259771+05:30', '3', 'Room object (3)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (23, '2020-09-01 09:59:03.21869+05:30', '4', 'Room object (4)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (24, '2020-09-01 09:59:18.61758+05:30', '5', 'Room object (5)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (25, '2020-09-01 09:59:38.730035+05:30', '6', 'Room object (6)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (26, '2020-09-01 09:59:56.26469+05:30', '7', 'Room object (7)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (27, '2020-09-01 10:00:11.28576+05:30', '8', 'Room object (8)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (28, '2020-09-01 10:00:26.525685+05:30', '9', 'Room object (9)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (29, '2020-09-01 10:00:43.960658+05:30', '10', 'Room object (10)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (30, '2020-09-01 10:00:58.536009+05:30', '11', 'Room object (11)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (31, '2020-09-01 10:01:15.179558+05:30', '12', 'Room object (12)', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (32, '2020-09-01 10:02:02.880688+05:30', '1', 'UserProfile object (1)', 2, '[{"changed": {"fields": ["room"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (33, '2020-09-01 10:12:07.287521+05:30', '1', 'Room object (1)', 2, '[{"changed": {"fields": ["available"]}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (34, '2020-09-01 10:46:15.796508+05:30', '1', 'Services object (1)', 2, '[{"changed": {"fields": ["service_type"]}}]', 16, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (35, '2020-09-01 10:54:05.394531+05:30', '1', 'RoomServices object (1)', 2, '[{"changed": {"fields": ["option"]}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (36, '2020-09-02 11:46:48.081242+05:30', '1', 'Room object (1)', 2, '[]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (37, '2020-09-02 11:46:51.775832+05:30', '7', 'Room object (7)', 2, '[]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (38, '2020-09-02 17:54:48.715526+05:30', '2', 'UserProfile object (2)', 2, '[{"changed": {"fields": ["room_number"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (39, '2020-09-02 17:55:08.384076+05:30', '4', 'UserProfile object (4)', 2, '[{"changed": {"fields": ["room_number"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (40, '2020-09-02 17:55:16.684596+05:30', '5', 'UserProfile object (5)', 2, '[{"changed": {"fields": ["room_number"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (41, '2020-09-02 17:55:38.295005+05:30', '1', 'UserProfile object (1)', 2, '[{"changed": {"fields": ["room_number"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (42, '2020-09-02 17:56:56.222012+05:30', '3', 'UserProfile object (3)', 2, '[{"changed": {"fields": ["room_number"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (43, '2020-09-02 17:57:14.714983+05:30', '6', 'UserProfile object (6)', 2, '[{"changed": {"fields": ["room_number"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (44, '2020-09-02 20:43:31.971669+05:30', '1', 'MenuItems object (1)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (45, '2020-09-02 20:45:39.67978+05:30', '2', 'MenuItems object (2)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (46, '2020-09-02 20:48:13.897116+05:30', '3', 'MenuItems object (3)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (47, '2020-09-02 20:52:21.369139+05:30', '4', 'MenuItems object (4)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (48, '2020-09-02 20:54:52.042967+05:30', '5', 'MenuItems object (5)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (49, '2020-09-03 10:50:19.959137+05:30', '6', 'MenuItems object (6)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (50, '2020-09-03 10:53:36.627052+05:30', '7', 'MenuItems object (7)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (51, '2020-09-03 10:56:33.99725+05:30', '8', 'MenuItems object (8)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (52, '2020-09-03 10:58:34.901242+05:30', '9', 'MenuItems object (9)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (53, '2020-09-03 11:01:31.504994+05:30', '10', 'MenuItems object (10)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (54, '2020-09-03 11:57:54.117944+05:30', '11', 'MenuItems object (11)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (55, '2020-09-03 11:59:31.409861+05:30', '12', 'MenuItems object (12)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (56, '2020-09-03 12:02:38.546177+05:30', '13', 'MenuItems object (13)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (57, '2020-09-03 12:04:12.714739+05:30', '14', 'MenuItems object (14)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (58, '2020-09-03 12:07:01.809664+05:30', '15', 'MenuItems object (15)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (59, '2020-09-03 12:08:26.140445+05:30', '16', 'MenuItems object (16)', 1, '[{"added": {}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (60, '2020-09-03 12:48:30.335267+05:30', '8', 'MenuItems object (8)', 2, '[{"changed": {"fields": ["food_type"]}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (61, '2020-09-03 12:48:52.413072+05:30', '8', 'MenuItems object (8)', 2, '[{"changed": {"fields": ["food_type"]}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (62, '2020-09-03 16:19:42.349263+05:30', '17', 'MenuItems object (17)', 2, '[{"changed": {"fields": ["menu_type"]}}]', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (63, '2020-09-03 16:29:23.846109+05:30', '17', 'MenuItems object (17)', 3, '', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (64, '2020-09-03 16:45:48.547093+05:30', '19', 'MenuItems object (19)', 3, '', 13, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (65, '2020-09-05 17:53:49.027253+05:30', '18', 'guest1', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (66, '2020-09-05 17:54:17.585893+05:30', '18', 'guest1', 2, '[{"changed": {"fields": ["first_name", "last_name", "email"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (67, '2020-09-05 17:58:14.393821+05:30', '1', 'GuestProfile object (1)', 1, '[{"added": {}}]', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (68, '2020-09-05 18:10:13.89363+05:30', '1', 'Tables object (1)', 1, '[{"added": {}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (69, '2020-09-05 18:10:19.221362+05:30', '2', 'Tables object (2)', 1, '[{"added": {}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (70, '2020-09-05 18:10:35.182518+05:30', '1', 'Tables object (1)', 2, '[{"changed": {"fields": ["table_number"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (71, '2020-09-05 18:10:39.195145+05:30', '2', 'Tables object (2)', 2, '[{"changed": {"fields": ["table_number"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (72, '2020-09-05 18:10:43.941151+05:30', '3', 'Tables object (3)', 1, '[{"added": {}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (73, '2020-09-05 18:10:48.067849+05:30', '4', 'Tables object (4)', 1, '[{"added": {}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (74, '2020-09-05 18:10:50.697917+05:30', '5', 'Tables object (5)', 1, '[{"added": {}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (75, '2020-09-05 18:10:53.115018+05:30', '6', 'Tables object (6)', 1, '[{"added": {}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (76, '2020-09-05 18:10:55.405316+05:30', '7', 'Tables object (7)', 1, '[{"added": {}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (77, '2020-09-05 18:10:58.823349+05:30', '8', 'Tables object (8)', 1, '[{"added": {}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (78, '2020-09-05 18:11:01.178723+05:30', '9', 'Tables object (9)', 1, '[{"added": {}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (79, '2020-09-05 18:11:04.538482+05:30', '10', 'Tables object (10)', 1, '[{"added": {}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (80, '2020-09-05 18:13:31.10027+05:30', '1', 'GuestProfile object (1)', 2, '[{"changed": {"fields": ["table"]}}]', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (81, '2020-09-05 18:59:51.581404+05:30', '1', 'Tables object (1)', 2, '[{"changed": {"fields": ["status"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (82, '2020-09-05 19:00:25.234851+05:30', '3', 'Tables object (3)', 2, '[{"changed": {"fields": ["table_number"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (83, '2020-09-05 19:15:40.967926+05:30', '1', 'Tables object (1)', 2, '[{"changed": {"fields": ["status"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (84, '2020-09-05 19:15:49.920189+05:30', '1', 'GuestProfile object (1)', 3, '', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (85, '2020-09-05 19:16:00.179059+05:30', '18', 'guest1', 3, '', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (86, '2020-09-05 19:26:09.847865+05:30', '1', 'Tables object (1)', 2, '[{"changed": {"fields": ["status"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (87, '2020-09-05 19:31:58.163276+05:30', '3', 'Tables object (3)', 2, '[{"changed": {"fields": ["status"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (88, '2020-09-05 22:55:49.131172+05:30', '27', 'guest1', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (89, '2020-09-05 22:56:05.236326+05:30', '27', 'guest1', 2, '[{"changed": {"fields": ["first_name", "last_name", "email"]}}]', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (90, '2020-09-05 22:57:45.956868+05:30', '5', 'GuestProfile object (5)', 1, '[{"added": {}}]', 15, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (91, '2020-09-05 22:58:08.506845+05:30', '10', 'Tables object (10)', 2, '[{"changed": {"fields": ["status"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (92, '2020-09-06 17:21:57.279652+05:30', '28', 'mukund_acharya2000@rediffmail.com', 3, '', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (93, '2020-09-06 17:27:37.087931+05:30', '4', 'Tables object (4)', 2, '[{"changed": {"fields": ["status"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (94, '2020-09-07 14:13:40.923525+05:30', '29', 'mukund_acharya2000@rediffmail.com', 3, '', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (95, '2020-09-07 14:17:13.123195+05:30', '30', 'mukund_acharya2000@rediffmail.com', 3, '', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (96, '2020-09-07 14:17:52.325255+05:30', '10', 'Tables object (10)', 2, '[{"changed": {"fields": ["status"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (97, '2020-09-07 14:17:56.276733+05:30', '4', 'Tables object (4)', 2, '[]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (98, '2020-09-07 14:18:00.223636+05:30', '5', 'Tables object (5)', 2, '[{"changed": {"fields": ["status"]}}]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (99, '2020-09-07 14:18:03.153569+05:30', '6', 'Tables object (6)', 2, '[]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (100, '2020-09-07 14:18:06.204591+05:30', '7', 'Tables object (7)', 2, '[]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (101, '2020-09-07 14:18:08.843935+05:30', '8', 'Tables object (8)', 2, '[]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (102, '2020-09-07 14:18:11.351662+05:30', '9', 'Tables object (9)', 2, '[]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (103, '2020-09-07 14:18:13.75015+05:30', '10', 'Tables object (10)', 2, '[]', 17, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (104, '2020-09-07 14:18:49.574874+05:30', '27', 'guest1', 3, '', 4, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (105, '2020-09-07 14:19:06.290562+05:30', '10', 'Tables object (10)', 2, '[{"changed": {"fields": ["status"]}}]', 17, 1);


--
-- TOC entry 3079 (class 0 OID 18182)
-- Dependencies: 210
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'main_app', 'room');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'main_app', 'laundryservice');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'main_app', 'userprofile');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'main_app', 'foodservices');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'main_app', 'adminprofile');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'main_app', 'roomservices');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (13, 'main_app', 'menuitems');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (14, 'main_app', 'bills');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (15, 'main_app', 'guestprofile');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (16, 'main_app', 'services');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (17, 'main_app', 'tables');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (18, 'main_app', 'restaurantorders');


--
-- TOC entry 3081 (class 0 OID 18187)
-- Dependencies: 212
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2020-08-31 15:25:54.676251+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2020-08-31 15:25:54.984076+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2020-08-31 15:25:55.518934+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-08-31 15:25:55.598431+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-31 15:25:55.625946+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-08-31 15:25:55.680026+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-08-31 15:25:55.695387+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-08-31 15:25:55.723618+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-08-31 15:25:55.752155+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-08-31 15:25:55.77315+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-08-31 15:25:55.77891+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-08-31 15:25:55.799032+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-08-31 15:25:55.83439+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-08-31 15:25:55.856436+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-08-31 15:25:55.877888+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-08-31 15:25:55.896178+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'main_app', '0001_initial', '2020-08-31 15:25:55.919911+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'main_app', '0002_admin_bills_bookings_customer_orders_rooms', '2020-08-31 15:25:56.199189+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'main_app', '0003_delete_login', '2020-08-31 15:25:56.221279+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'main_app', '0004_auto_20200820_1241', '2020-08-31 15:25:56.260243+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'main_app', '0005_adminprofile_bills_bookings_menuitems_orders_rooms_userprofile', '2020-08-31 15:25:56.802804+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'main_app', '0006_auto_20200820_1443', '2020-08-31 15:25:56.932315+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'main_app', '0007_auto_20200820_1505', '2020-08-31 15:25:57.1093+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'main_app', '0008_guestprofile', '2020-08-31 15:25:57.231321+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'main_app', '0009_auto_20200824_1252', '2020-08-31 15:25:57.291835+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (26, 'main_app', '0010_auto_20200824_1313', '2020-08-31 15:25:57.339007+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (27, 'main_app', '0011_auto_20200831_1525', '2020-08-31 15:25:57.511214+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (28, 'sessions', '0001_initial', '2020-08-31 15:25:57.627323+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (29, 'main_app', '0012_adminprofile_bills_foodservices_guestprofile_laundryservice_menuitems_room_roomservices_services_use', '2020-08-31 15:26:38.664906+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (30, 'main_app', '0013_auto_20200901_0954', '2020-09-01 09:54:34.150221+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (31, 'main_app', '0014_auto_20200901_1003', '2020-09-01 10:03:19.42817+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (32, 'main_app', '0015_services_user_room_number', '2020-09-01 16:54:27.265749+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (33, 'main_app', '0016_auto_20200901_1705', '2020-09-01 17:06:03.701809+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (34, 'main_app', '0017_auto_20200902_1442', '2020-09-02 14:42:20.342471+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (35, 'main_app', '0018_bills_payment_type', '2020-09-02 14:44:33.623961+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (36, 'main_app', '0019_userprofile_room_number', '2020-09-02 17:53:01.821946+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (37, 'main_app', '0020_auto_20200904_1945', '2020-09-04 19:45:33.476411+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (38, 'main_app', '0021_auto_20200904_1950', '2020-09-04 19:50:53.674771+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (39, 'main_app', '0022_auto_20200904_2340', '2020-09-04 23:40:38.001191+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (40, 'main_app', '0023_auto_20200905_0157', '2020-09-05 01:57:42.00155+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (41, 'main_app', '0024_auto_20200905_1211', '2020-09-05 12:11:42.979664+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (42, 'main_app', '0025_guestprofile_status', '2020-09-05 17:52:16.010986+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (43, 'main_app', '0026_auto_20200905_1808', '2020-09-05 18:08:17.548481+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (44, 'main_app', '0027_auto_20200905_1814', '2020-09-05 18:14:05.79492+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (45, 'main_app', '0028_restaurantorders', '2020-09-06 11:22:35.319924+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (46, 'main_app', '0029_auto_20200906_1141', '2020-09-06 11:41:47.57818+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (47, 'main_app', '0030_restaurantorders_order_date', '2020-09-06 11:45:59.20903+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (48, 'main_app', '0031_auto_20200906_1638', '2020-09-06 16:38:07.002793+05:30');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (49, 'main_app', '0032_auto_20200906_1652', '2020-09-06 16:52:25.847036+05:30');


--
-- TOC entry 3083 (class 0 OID 18195)
-- Dependencies: 214
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('jhoavlofbt4ui29h32285vjnzz6j8frc', 'YjE4YTA1YTY0ODk4YTI4NTQ2MWE2OTkwZjAyODE3ZGJlMDNjNzZiYjp7fQ==', '2020-09-14 16:30:28.68189+05:30');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('5qhwkqwqeyuknsra7lg6tnonztax7voo', 'MDIyMDVkNDYxZjIxMTY4NmU4Y2U5MDIzN2NhMGY2OWFmZGM0NTdlMzp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYjRlZDYwMTFiYTQ4NjU5NTU2ZGY3NTBmNDA0YzdlMjdhNGJkODEyIn0=', '2020-09-14 16:34:38.138294+05:30');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('s1ykg8zdsezi7dnasoppbkkojxccuut7', 'M2EyZmNhMjQwYzk3OWM3YWE0YjI3NzNlOTcyOGNhM2ZjN2IyMmZhNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwY2E1ZGMyYzE2N2Q4YTFlNWMzM2I5NWRhMGY2MGZiMDM5M2UxMzllIn0=', '2020-09-17 18:40:12.67704+05:30');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('obp7hktmfici5cgkoq8tw11smul880tu', 'YjE4YTA1YTY0ODk4YTI4NTQ2MWE2OTkwZjAyODE3ZGJlMDNjNzZiYjp7fQ==', '2020-09-14 17:48:24.988034+05:30');


--
-- TOC entry 3084 (class 0 OID 18201)
-- Dependencies: 215
-- Data for Name: main_app_adminprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.main_app_adminprofile (id, admin_type, phone, status, user_id) VALUES (2, 'owner', '9080706050', true, 4);
INSERT INTO public.main_app_adminprofile (id, admin_type, phone, status, user_id) VALUES (3, 'receptionist', '9876541234', true, 3);
INSERT INTO public.main_app_adminprofile (id, admin_type, phone, status, user_id) VALUES (4, 'roomservice', '9876543210', true, 5);
INSERT INTO public.main_app_adminprofile (id, admin_type, phone, status, user_id) VALUES (5, 'laundry', '9192939495', true, 7);
INSERT INTO public.main_app_adminprofile (id, admin_type, phone, status, user_id) VALUES (6, 'laundry', '9080706050', true, 13);
INSERT INTO public.main_app_adminprofile (id, admin_type, phone, status, user_id) VALUES (7, 'chef', '9898989898', true, 15);
INSERT INTO public.main_app_adminprofile (id, admin_type, phone, status, user_id) VALUES (1, 'chef', '9988776655', true, 2);


--
-- TOC entry 3086 (class 0 OID 18206)
-- Dependencies: 217
-- Data for Name: main_app_bills; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.main_app_bills (id, total_amount, billing_date_from, billing_date_to, bill_type, user_id, payment_type) VALUES (1, 45180, '2020-09-02 12:53:52.162277+05:30', '2020-09-20', 'Hotel Accomodation', 9, 'card');
INSERT INTO public.main_app_bills (id, total_amount, billing_date_from, billing_date_to, bill_type, user_id, payment_type) VALUES (2, 12000, '2020-09-02 18:07:57.814718+05:30', '2020-09-02', 'Hotel Accomodation', 16, 'upi');


--
-- TOC entry 3088 (class 0 OID 18211)
-- Dependencies: 219
-- Data for Name: main_app_foodservices; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (17, 1, 'Masala Dosa', 48, false, '205');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (18, 1, 'Filter Coffee', 48, false, '205');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (19, 2, 'Masala Chai', 48, false, '205');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (20, 1, 'Gulab Jamun', 49, false, '205');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (21, 1, 'Ras Malai', 49, false, '205');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (22, 1, 'Fafda Jalebi', 49, false, '205');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (24, 1, 'Masala Papad', 49, false, '205');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (23, 1, 'Tomato Soup', 49, false, '205');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (25, 1, 'Paneer Butter Masala', 49, false, '205');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (26, 1, 'Tandoori Roti', 49, false, '205');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (27, 2, 'Masala Chai', 49, false, '205');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (31, 1, 'Masala Dosa', 51, false, '101');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (30, 2, 'Filter Coffee', 51, false, '101');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (29, 1, 'Chilli Paneer', 50, false, '205');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (28, 1, 'Veg Spring Rolls', 50, false, '205');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (32, 1, 'Veg Manchow Soup', 52, false, '101');
INSERT INTO public.main_app_foodservices (id, quantity, menu_item, service_id, status, "where") VALUES (33, 1, 'Filter Coffee', 53, false, '101');


--
-- TOC entry 3090 (class 0 OID 18216)
-- Dependencies: 221
-- Data for Name: main_app_guestprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.main_app_guestprofile (id, table_number, phone, date, user_id, status, table_id) VALUES (2, '1', '9887857553', '2020-09-05 19:19:27.595741+05:30', 19, true, 1);
INSERT INTO public.main_app_guestprofile (id, table_number, phone, date, user_id, status, table_id) VALUES (3, '3', '9988776655', '2020-09-05 22:43:00.800387+05:30', 25, true, 3);
INSERT INTO public.main_app_guestprofile (id, table_number, phone, date, user_id, status, table_id) VALUES (4, '2', '9887857553', '2020-09-05 22:50:08.129125+05:30', 26, true, 2);


--
-- TOC entry 3092 (class 0 OID 18221)
-- Dependencies: 223
-- Data for Name: main_app_laundryservice; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.main_app_laundryservice (id, quantity, garment_type, laundry_type, instructions, service_id) VALUES (1, 4, 'shirts', 'iron', 'It is Silk so be careful.', 9);
INSERT INTO public.main_app_laundryservice (id, quantity, garment_type, laundry_type, instructions, service_id) VALUES (2, 5, 'shirts', 'iron', 'instr', 10);
INSERT INTO public.main_app_laundryservice (id, quantity, garment_type, laundry_type, instructions, service_id) VALUES (3, 1, 'others', 'dryclean', '', 11);
INSERT INTO public.main_app_laundryservice (id, quantity, garment_type, laundry_type, instructions, service_id) VALUES (4, 10, 'shirts', 'dryclean', 'I want neatly ironed.', 12);
INSERT INTO public.main_app_laundryservice (id, quantity, garment_type, laundry_type, instructions, service_id) VALUES (5, 5, 'shirts', 'iron', 'Do Neatly', 17);
INSERT INTO public.main_app_laundryservice (id, quantity, garment_type, laundry_type, instructions, service_id) VALUES (6, 4, 'saari', 'iron', 'instruction', 18);
INSERT INTO public.main_app_laundryservice (id, quantity, garment_type, laundry_type, instructions, service_id) VALUES (7, 5, 'shirts', 'dryclean', '', 20);
INSERT INTO public.main_app_laundryservice (id, quantity, garment_type, laundry_type, instructions, service_id) VALUES (8, 3, 'saari', 'iron', '', 24);
INSERT INTO public.main_app_laundryservice (id, quantity, garment_type, laundry_type, instructions, service_id) VALUES (9, 1, 'saari', 'dryclean', 'please be careful!', 27);
INSERT INTO public.main_app_laundryservice (id, quantity, garment_type, laundry_type, instructions, service_id) VALUES (10, 4, 'saari', 'iron', 'qw', 31);
INSERT INTO public.main_app_laundryservice (id, quantity, garment_type, laundry_type, instructions, service_id) VALUES (11, 1, 'suits', 'dryclean', '', 36);
INSERT INTO public.main_app_laundryservice (id, quantity, garment_type, laundry_type, instructions, service_id) VALUES (12, 3, 'shirts', 'iron', 'rgre', 54);


--
-- TOC entry 3094 (class 0 OID 18226)
-- Dependencies: 225
-- Data for Name: main_app_menuitems; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (2, 'Filter Coffee', 'Filter coffee is a coffee drink made by mixing frothed and boiled milk with the infusion obtained by percolation brewing of finely ground coffee.', 'pics/filter_coffee.jpg', 25, 'Breakfast', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (7, 'Gobi Manchurian', 'Gobi Manchurian has crispy cauliflower florets tossed in a spicy, sweet and tangy manchurian sauce.', 'pics/gobi_manchurian.jpg', 120, 'Starters', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (10, 'Tomato Soup', 'Tomato Soup is a classic soup recipe made with fresh ripe tomatoes and fresh herbs blended with a hint of cream.', 'pics/tomato_soup.jpg', 130, 'Starters', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (11, 'Veg Manchow Soup', 'Manchow soup is a soup popular in Indian Chinese cuisine due to its easy preparation and hot spicy taste.', 'pics/manchow_soup.jpg', 130, 'Starters', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (12, 'Masala Papad', 'Masala Papad is a delicious Indian snack made using roasted or fried papad topped with a tangy and spicy onion tomato mix.', 'pics/masala_papad.jpg', 100, 'Starters', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (14, 'Tandoori Roti', 'Tandoori Roti is an Indian bread that was traditionally made in clay ovens or Tandoor.', 'pics/tandoori_roti.jpg', 50, 'Main Course', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (8, 'Veg Spring Rolls', 'A spring roll is a Chinese food consisting of a small roll of thin pastry filled with vegetables and sometimes paneer,and then fried.', 'pics/spring_rolls.jpg', 135, 'Starters', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (3, 'Masala Dosa', 'Masala Dosa is made from rice, lentils, potato, methi, and curry leaves, and served with chutneys and sambar.', 'pics/masala_dosa.jpg', 85, 'Breakfast', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (1, 'Masala Chai', 'Masala Chai is a flavoured tea beverage made by brewing black tea with a mixture of aromatic herb and spices', 'pics/masala_chai.jpg', 25, 'Breakfast', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (4, 'Idli-Vada-Sambar', 'Idlis are made by steaming a batter consisting of fermented black lentils (de-husked) and rice.', 'pics/idli.jpeg', 85, 'Breakfast', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (9, 'Chilli Paneer', 'Paneer (Indian cottage cheese) is tossed in a flavorful spicy sauce made with soy sauce, chili sauce, vinegar!', 'pics/chili_paneer.jpg', 135, 'Starters', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (13, 'Paneer Butter Masala', 'Paneer butter masala is a rich and creamy dish of paneer (cottage cheese) in a tomato, butter and cashew sauce (known as makhani gravy).', 'pics/panneer_butter_masala.jpg', 210, 'Main Course', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (5, 'Parantha', 'Parathas are one of the most popular unleavened flatbreads in the Indian Subcontinent, made by baking or cooking whole wheat dough on a tava.', 'pics/parata2.jpg', 125, 'Breakfast', 'Non Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (18, 'Mysore Pak', 'Mysore Pak is made of generous amounts of ghee, sugar, gram flour, and often cardamom. The texture of this sweet is similar to a buttery cookie.', 'pics/mysore_pak.jpg', 120, 'Dessert', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (16, 'Ras Malai', 'Ras malai is a popular Indian dessert consisting of white cream, sugar, milk, and cardamom-flavored paneer cheese known as chhana.', 'pics/ras_malai.jpg', 150, 'Dessert', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (15, 'Gulab Jamun', 'Gulab Jamun are deep-fried dumplings/donuts made of dried milk [khoya] are dipped in a rose-cardamom flavored sugar syrup. 2 per serving.', 'pics/gulab_jamun.jpg', 150, 'Dessert', 'Veg', true);
INSERT INTO public.main_app_menuitems (id, item_name, item_description, item_picture, item_price, menu_type, food_type, available_status) VALUES (6, 'Fafda Jalebi', 'Fafda jalebi is a match made in heaven and Gujaratis treat themselves with this great combination on Dussehra.', 'pics/jalebi_fafda.jpg', 120, 'Breakfast', 'Veg', true);


--
-- TOC entry 3107 (class 0 OID 18467)
-- Dependencies: 238
-- Data for Name: main_app_restaurantorders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3096 (class 0 OID 18231)
-- Dependencies: 227
-- Data for Name: main_app_room; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.main_app_room (id, room_number, room_type, price, available) VALUES (3, '103', 'Deluxe Double Bed', 3000, true);
INSERT INTO public.main_app_room (id, room_number, room_type, price, available) VALUES (5, '105', 'Classic Double Bed', 2500, true);
INSERT INTO public.main_app_room (id, room_number, room_type, price, available) VALUES (6, '106', 'Deluxe Double Bed', 3000, true);
INSERT INTO public.main_app_room (id, room_number, room_type, price, available) VALUES (10, '204', 'Classic Single Bed', 1500, true);
INSERT INTO public.main_app_room (id, room_number, room_type, price, available) VALUES (1, '101', 'Classic Single Bed', 1500, false);
INSERT INTO public.main_app_room (id, room_number, room_type, price, available) VALUES (7, '201', 'Classic Single Bed', 1500, true);
INSERT INTO public.main_app_room (id, room_number, room_type, price, available) VALUES (4, '104', 'Classic Single Bed', 1500, false);
INSERT INTO public.main_app_room (id, room_number, room_type, price, available) VALUES (12, '206', 'Deluxe Double Bed', 3000, false);
INSERT INTO public.main_app_room (id, room_number, room_type, price, available) VALUES (2, '102', 'Classic Double Bed', 2500, false);
INSERT INTO public.main_app_room (id, room_number, room_type, price, available) VALUES (8, '202', 'Classic Double Bed', 2500, false);
INSERT INTO public.main_app_room (id, room_number, room_type, price, available) VALUES (9, '203', 'Deluxe Double Bed', 3000, true);
INSERT INTO public.main_app_room (id, room_number, room_type, price, available) VALUES (11, '205', 'Classic Double Bed', 2500, false);


--
-- TOC entry 3098 (class 0 OID 18236)
-- Dependencies: 229
-- Data for Name: main_app_roomservices; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (2, 'cleaning', 'clean my room.', 2);
INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (1, 'housekeeping', 'Want to clean my room.', 1);
INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (3, 'maintenance', 'My door is not proper', 3);
INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (4, 'housekeeping', 'house keeping', 4);
INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (5, 'cleaning', 'clean', 5);
INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (6, 'cleaning', 'clean test', 6);
INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (7, 'cleaning', 'clean test', 7);
INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (8, 'maintenance', 'main test', 8);
INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (9, 'cleaning', 'Cleaning at 6.30pm today.', 13);
INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (10, 'housekeeping', 'Come quickly', 19);
INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (11, 'cleaning', 'help!!!', 26);
INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (12, 'maintenance', 'maintenence', 28);
INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (13, 'cleaning', '', 29);
INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (14, 'cleaning', 'qw', 30);
INSERT INTO public.main_app_roomservices (id, option, message, service_id) VALUES (15, 'cleaning', '', 35);


--
-- TOC entry 3100 (class 0 OID 18241)
-- Dependencies: 231
-- Data for Name: main_app_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (9, 240, 'laundry', '2020-09-01 13:55:13.167403+05:30', 6, '101', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (12, 1000, 'laundry', '2020-09-01 15:05:45.846574+05:30', 6, '101', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (1, 0, 'roomservice', '2020-09-01 10:43:58+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (13, 0, 'roomservice', '2020-09-01 16:57:54.563435+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (11, 100, 'laundry', '2020-09-01 14:16:09.888921+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (14, 3000, 'date extension', '2020-09-01 20:01:32.77436+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (15, 1500, 'date extension', '2020-09-01 20:04:34.653713+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (16, 9000, 'date extension', '2020-09-01 20:08:18.725615+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (4, 0, 'roomservice', '2020-09-01 12:02:01.472796+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (2, 0, 'roomservice', '2020-09-01 10:52:13.720875+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (7, 0, 'roomservice', '2020-09-01 12:12:58.951059+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (10, 300, 'laundry', '2020-09-01 14:11:06.901169+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (17, 300, 'laundry', '2020-09-01 23:37:12.95967+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (18, 240, 'laundry', '2020-09-01 23:40:01.60608+05:30', 6, '101', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (19, 0, 'roomservice', '2020-09-01 23:40:41.318984+05:30', 6, '101', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (20, 500, 'laundry', '2020-09-02 10:46:05.118455+05:30', 6, '101', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (21, 13500, 'Checkin Fees', '2020-09-02 12:52:08.278362+05:30', 8, '104', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (23, 36000, 'Checkin Fees', '2020-09-02 12:56:48.46161+05:30', 10, '206', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (22, 45000, 'Checkin Fees', '2020-09-02 12:53:52.162277+05:30', 9, '102', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (24, 180, 'laundry', '2020-09-02 13:00:24.115582+05:30', 9, '102', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (25, 5000, 'Checkin Fees', '2020-09-02 15:21:22.276365+05:30', 11, '102', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (26, 0, 'roomservice', '2020-09-02 15:22:53.01395+05:30', 11, '102', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (27, 100, 'laundry', '2020-09-02 15:23:26.292348+05:30', 11, '102', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (28, 0, 'roomservice', '2020-09-02 15:39:10.66763+05:30', 6, '101', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (29, 0, 'roomservice', '2020-09-02 15:39:53.350622+05:30', 6, '101', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (30, 0, 'roomservice', '2020-09-02 16:17:35.137541+05:30', 6, '101', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (31, 240, 'laundry', '2020-09-02 16:18:04.28932+05:30', 6, '101', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (32, 5000, 'Checkin Fees', '2020-09-02 16:36:32.387231+05:30', 12, '202', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (33, 12000, 'Checkin Fees', '2020-09-02 18:07:57.814718+05:30', 16, '203', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (34, 7500, 'Checkin Fees', '2020-09-03 20:17:22.089642+05:30', 17, '205', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (35, 0, 'roomservice', '2020-09-03 20:24:41.747405+05:30', 17, '205', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (36, 100, 'laundry', '2020-09-03 20:25:12.353941+05:30', 17, '205', true);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (3, 0, 'roomservice', '2020-09-01 11:58:46.912704+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (5, 0, 'roomservice', '2020-09-01 12:07:07.099548+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (6, 0, 'roomservice', '2020-09-01 12:11:35.256152+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (8, 0, 'roomservice', '2020-09-01 12:15:32.401857+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (48, 160, 'food', '2020-09-05 12:13:18.504033+05:30', 17, '205', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (49, 960, 'food', '2020-09-05 12:20:30.480143+05:30', 17, '205', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (51, 135, 'food', '2020-09-05 16:48:53.443759+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (50, 270, 'food', '2020-09-05 15:34:02.274628+05:30', 17, '205', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (52, 136, 'food', '2020-09-06 13:56:33.940138+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (53, 26, 'food', '2020-09-07 14:07:44.663861+05:30', 6, '101', false);
INSERT INTO public.main_app_services (id, amount, service_type, order_date, user_id, user_room_number, order_status) VALUES (54, 180, 'laundry', '2020-09-07 14:09:46.578221+05:30', 6, '101', true);


--
-- TOC entry 3105 (class 0 OID 18447)
-- Dependencies: 236
-- Data for Name: main_app_tables; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.main_app_tables (id, table_number, status) VALUES (1, '1', false);
INSERT INTO public.main_app_tables (id, table_number, status) VALUES (3, '3', false);
INSERT INTO public.main_app_tables (id, table_number, status) VALUES (2, '2', false);
INSERT INTO public.main_app_tables (id, table_number, status) VALUES (4, '4', true);
INSERT INTO public.main_app_tables (id, table_number, status) VALUES (5, '5', true);
INSERT INTO public.main_app_tables (id, table_number, status) VALUES (6, '6', true);
INSERT INTO public.main_app_tables (id, table_number, status) VALUES (7, '7', true);
INSERT INTO public.main_app_tables (id, table_number, status) VALUES (8, '8', true);
INSERT INTO public.main_app_tables (id, table_number, status) VALUES (9, '9', true);
INSERT INTO public.main_app_tables (id, table_number, status) VALUES (10, '10', true);


--
-- TOC entry 3102 (class 0 OID 18246)
-- Dependencies: 233
-- Data for Name: main_app_userprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.main_app_userprofile (id, phone, address, aadhar_number, start_date, end_date, status, user_id, room_id, room_number) VALUES (2, '9876543210', 'karnataka', '123456781234', '2020-09-02 12:52:08+05:30', '2020-09-11', true, 8, 4, '104');
INSERT INTO public.main_app_userprofile (id, phone, address, aadhar_number, start_date, end_date, status, user_id, room_id, room_number) VALUES (4, '9765432198', 'USA', '543210983471', '2020-09-02 12:56:48+05:30', '2020-09-14', true, 10, 12, '206');
INSERT INTO public.main_app_userprofile (id, phone, address, aadhar_number, start_date, end_date, status, user_id, room_id, room_number) VALUES (5, '9876567800', 'mumbai, Maharashtra', '122333444455', '2020-09-02 15:21:22+05:30', '2020-09-04', true, 11, 2, '102');
INSERT INTO public.main_app_userprofile (id, phone, address, aadhar_number, start_date, end_date, status, user_id, room_id, room_number) VALUES (1, '9898989898', 'F102, near NIE College, Mysuru', '123456789012', '2020-08-31 15:42:34+05:30', '2020-09-17', true, 6, 1, '101');
INSERT INTO public.main_app_userprofile (id, phone, address, aadhar_number, start_date, end_date, status, user_id, room_id, room_number) VALUES (3, '9886712113', 'Mysuru, Karnataka', '543210983471', '2020-09-02 12:53:52+05:30', '2020-09-20', false, 9, NULL, '102');
INSERT INTO public.main_app_userprofile (id, phone, address, aadhar_number, start_date, end_date, status, user_id, room_id, room_number) VALUES (6, '9887857553', 'Hyderabad', '112233445566', '2020-09-02 16:36:32+05:30', '2020-09-04', true, 12, 8, '202');
INSERT INTO public.main_app_userprofile (id, phone, address, aadhar_number, start_date, end_date, status, user_id, room_id, room_number) VALUES (7, '9887766551', 'Hyderabad', '543210983471', '2020-09-02 18:07:57.814718+05:30', '2020-09-02', false, 16, NULL, '203');
INSERT INTO public.main_app_userprofile (id, phone, address, aadhar_number, start_date, end_date, status, user_id, room_id, room_number) VALUES (8, '9889745689', 'Delhi', '123456789782', '2020-09-03 20:17:22.089642+05:30', '2020-09-06', true, 17, 11, '205');


--
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 197
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 199
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3136 (class 0 OID 0)
-- Dependencies: 201
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);


--
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 205
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 30, true);


--
-- TOC entry 3139 (class 0 OID 0)
-- Dependencies: 207
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3140 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 105, true);


--
-- TOC entry 3141 (class 0 OID 0)
-- Dependencies: 211
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);


--
-- TOC entry 3142 (class 0 OID 0)
-- Dependencies: 213
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 49, true);


--
-- TOC entry 3143 (class 0 OID 0)
-- Dependencies: 216
-- Name: main_app_adminprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_app_adminprofile_id_seq', 7, true);


--
-- TOC entry 3144 (class 0 OID 0)
-- Dependencies: 218
-- Name: main_app_bills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_app_bills_id_seq', 6, true);


--
-- TOC entry 3145 (class 0 OID 0)
-- Dependencies: 220
-- Name: main_app_foodservices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_app_foodservices_id_seq', 33, true);


--
-- TOC entry 3146 (class 0 OID 0)
-- Dependencies: 222
-- Name: main_app_guestprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_app_guestprofile_id_seq', 8, true);


--
-- TOC entry 3147 (class 0 OID 0)
-- Dependencies: 224
-- Name: main_app_laundryservice_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_app_laundryservice_id_seq', 12, true);


--
-- TOC entry 3148 (class 0 OID 0)
-- Dependencies: 226
-- Name: main_app_menuitems_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_app_menuitems_id_seq', 20, true);


--
-- TOC entry 3149 (class 0 OID 0)
-- Dependencies: 237
-- Name: main_app_restaurantorders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_app_restaurantorders_id_seq', 16, true);


--
-- TOC entry 3150 (class 0 OID 0)
-- Dependencies: 228
-- Name: main_app_room_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_app_room_id_seq', 12, true);


--
-- TOC entry 3151 (class 0 OID 0)
-- Dependencies: 230
-- Name: main_app_roomservices_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_app_roomservices_id_seq', 15, true);


--
-- TOC entry 3152 (class 0 OID 0)
-- Dependencies: 232
-- Name: main_app_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_app_services_id_seq', 54, true);


--
-- TOC entry 3153 (class 0 OID 0)
-- Dependencies: 235
-- Name: main_app_tables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_app_tables_id_seq', 10, true);


--
-- TOC entry 3154 (class 0 OID 0)
-- Dependencies: 234
-- Name: main_app_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.main_app_userprofile_id_seq', 8, true);


--
-- TOC entry 2837 (class 2606 OID 18271)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2842 (class 2606 OID 18273)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2845 (class 2606 OID 18275)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2839 (class 2606 OID 18277)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2848 (class 2606 OID 18279)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2850 (class 2606 OID 18281)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2858 (class 2606 OID 18283)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2861 (class 2606 OID 18285)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2852 (class 2606 OID 18287)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2864 (class 2606 OID 18289)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2867 (class 2606 OID 18291)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2855 (class 2606 OID 18293)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2870 (class 2606 OID 18295)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2873 (class 2606 OID 18297)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2875 (class 2606 OID 18299)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2877 (class 2606 OID 18301)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2880 (class 2606 OID 18303)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2883 (class 2606 OID 18305)
-- Name: main_app_adminprofile main_app_adminprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_adminprofile
    ADD CONSTRAINT main_app_adminprofile_pkey PRIMARY KEY (id);


--
-- TOC entry 2885 (class 2606 OID 18307)
-- Name: main_app_adminprofile main_app_adminprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_adminprofile
    ADD CONSTRAINT main_app_adminprofile_user_id_key UNIQUE (user_id);


--
-- TOC entry 2887 (class 2606 OID 18309)
-- Name: main_app_bills main_app_bills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_bills
    ADD CONSTRAINT main_app_bills_pkey PRIMARY KEY (id);


--
-- TOC entry 2890 (class 2606 OID 18313)
-- Name: main_app_foodservices main_app_foodservices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_foodservices
    ADD CONSTRAINT main_app_foodservices_pkey PRIMARY KEY (id);


--
-- TOC entry 2893 (class 2606 OID 18315)
-- Name: main_app_guestprofile main_app_guestprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_guestprofile
    ADD CONSTRAINT main_app_guestprofile_pkey PRIMARY KEY (id);


--
-- TOC entry 2895 (class 2606 OID 18454)
-- Name: main_app_guestprofile main_app_guestprofile_table_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_guestprofile
    ADD CONSTRAINT main_app_guestprofile_table_id_key UNIQUE (table_id);


--
-- TOC entry 2897 (class 2606 OID 18317)
-- Name: main_app_guestprofile main_app_guestprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_guestprofile
    ADD CONSTRAINT main_app_guestprofile_user_id_key UNIQUE (user_id);


--
-- TOC entry 2899 (class 2606 OID 18319)
-- Name: main_app_laundryservice main_app_laundryservice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_laundryservice
    ADD CONSTRAINT main_app_laundryservice_pkey PRIMARY KEY (id);


--
-- TOC entry 2901 (class 2606 OID 18321)
-- Name: main_app_laundryservice main_app_laundryservice_service_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_laundryservice
    ADD CONSTRAINT main_app_laundryservice_service_id_key UNIQUE (service_id);


--
-- TOC entry 2903 (class 2606 OID 18323)
-- Name: main_app_menuitems main_app_menuitems_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_menuitems
    ADD CONSTRAINT main_app_menuitems_pkey PRIMARY KEY (id);


--
-- TOC entry 2922 (class 2606 OID 18472)
-- Name: main_app_restaurantorders main_app_restaurantorders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_restaurantorders
    ADD CONSTRAINT main_app_restaurantorders_pkey PRIMARY KEY (id);


--
-- TOC entry 2905 (class 2606 OID 18325)
-- Name: main_app_room main_app_room_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_room
    ADD CONSTRAINT main_app_room_pkey PRIMARY KEY (id);


--
-- TOC entry 2907 (class 2606 OID 18327)
-- Name: main_app_roomservices main_app_roomservices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_roomservices
    ADD CONSTRAINT main_app_roomservices_pkey PRIMARY KEY (id);


--
-- TOC entry 2909 (class 2606 OID 18329)
-- Name: main_app_roomservices main_app_roomservices_service_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_roomservices
    ADD CONSTRAINT main_app_roomservices_service_id_key UNIQUE (service_id);


--
-- TOC entry 2911 (class 2606 OID 18331)
-- Name: main_app_services main_app_services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_services
    ADD CONSTRAINT main_app_services_pkey PRIMARY KEY (id);


--
-- TOC entry 2920 (class 2606 OID 18452)
-- Name: main_app_tables main_app_tables_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_tables
    ADD CONSTRAINT main_app_tables_pkey PRIMARY KEY (id);


--
-- TOC entry 2914 (class 2606 OID 18333)
-- Name: main_app_userprofile main_app_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_userprofile
    ADD CONSTRAINT main_app_userprofile_pkey PRIMARY KEY (id);


--
-- TOC entry 2916 (class 2606 OID 18335)
-- Name: main_app_userprofile main_app_userprofile_room_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_userprofile
    ADD CONSTRAINT main_app_userprofile_room_id_key UNIQUE (room_id);


--
-- TOC entry 2918 (class 2606 OID 18337)
-- Name: main_app_userprofile main_app_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_userprofile
    ADD CONSTRAINT main_app_userprofile_user_id_key UNIQUE (user_id);


--
-- TOC entry 2835 (class 1259 OID 18338)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2840 (class 1259 OID 18339)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2843 (class 1259 OID 18340)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2846 (class 1259 OID 18341)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2856 (class 1259 OID 18342)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2859 (class 1259 OID 18343)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2862 (class 1259 OID 18344)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2865 (class 1259 OID 18345)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2853 (class 1259 OID 18346)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2868 (class 1259 OID 18347)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2871 (class 1259 OID 18348)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2878 (class 1259 OID 18349)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2881 (class 1259 OID 18350)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2888 (class 1259 OID 18485)
-- Name: main_app_bills_user_id_0f8160f4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX main_app_bills_user_id_0f8160f4 ON public.main_app_bills USING btree (user_id);


--
-- TOC entry 2891 (class 1259 OID 18351)
-- Name: main_app_foodservices_service_id_f9c90948; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX main_app_foodservices_service_id_f9c90948 ON public.main_app_foodservices USING btree (service_id);


--
-- TOC entry 2923 (class 1259 OID 18478)
-- Name: main_app_restaurantorders_user_id_2200432d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX main_app_restaurantorders_user_id_2200432d ON public.main_app_restaurantorders USING btree (user_id);


--
-- TOC entry 2912 (class 1259 OID 18352)
-- Name: main_app_services_user_id_c22ccd25; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX main_app_services_user_id_c22ccd25 ON public.main_app_services USING btree (user_id);


--
-- TOC entry 2924 (class 2606 OID 18353)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2925 (class 2606 OID 18358)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2926 (class 2606 OID 18363)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2927 (class 2606 OID 18368)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2928 (class 2606 OID 18373)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2929 (class 2606 OID 18378)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2930 (class 2606 OID 18383)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2931 (class 2606 OID 18388)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2932 (class 2606 OID 18393)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2933 (class 2606 OID 18398)
-- Name: main_app_adminprofile main_app_adminprofile_user_id_522a2c0c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_adminprofile
    ADD CONSTRAINT main_app_adminprofile_user_id_522a2c0c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2934 (class 2606 OID 18486)
-- Name: main_app_bills main_app_bills_user_id_0f8160f4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_bills
    ADD CONSTRAINT main_app_bills_user_id_0f8160f4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2935 (class 2606 OID 18408)
-- Name: main_app_foodservices main_app_foodservice_service_id_f9c90948_fk_main_app_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_foodservices
    ADD CONSTRAINT main_app_foodservice_service_id_f9c90948_fk_main_app_ FOREIGN KEY (service_id) REFERENCES public.main_app_services(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2937 (class 2606 OID 18491)
-- Name: main_app_guestprofile main_app_guestprofile_table_id_fead1246_fk_main_app_tables_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_guestprofile
    ADD CONSTRAINT main_app_guestprofile_table_id_fead1246_fk_main_app_tables_id FOREIGN KEY (table_id) REFERENCES public.main_app_tables(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2936 (class 2606 OID 18413)
-- Name: main_app_guestprofile main_app_guestprofile_user_id_cfa3b6b3_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_guestprofile
    ADD CONSTRAINT main_app_guestprofile_user_id_cfa3b6b3_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2938 (class 2606 OID 18418)
-- Name: main_app_laundryservice main_app_laundryserv_service_id_1de4f9b4_fk_main_app_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_laundryservice
    ADD CONSTRAINT main_app_laundryserv_service_id_1de4f9b4_fk_main_app_ FOREIGN KEY (service_id) REFERENCES public.main_app_services(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2943 (class 2606 OID 18479)
-- Name: main_app_restaurantorders main_app_restaurantorders_user_id_2200432d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_restaurantorders
    ADD CONSTRAINT main_app_restaurantorders_user_id_2200432d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2939 (class 2606 OID 18423)
-- Name: main_app_roomservices main_app_roomservice_service_id_72c7cb47_fk_main_app_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_roomservices
    ADD CONSTRAINT main_app_roomservice_service_id_72c7cb47_fk_main_app_ FOREIGN KEY (service_id) REFERENCES public.main_app_services(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2940 (class 2606 OID 18428)
-- Name: main_app_services main_app_services_user_id_c22ccd25_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_services
    ADD CONSTRAINT main_app_services_user_id_c22ccd25_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2941 (class 2606 OID 18433)
-- Name: main_app_userprofile main_app_userprofile_room_id_3c501e78_fk_main_app_room_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_userprofile
    ADD CONSTRAINT main_app_userprofile_room_id_3c501e78_fk_main_app_room_id FOREIGN KEY (room_id) REFERENCES public.main_app_room(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2942 (class 2606 OID 18438)
-- Name: main_app_userprofile main_app_userprofile_user_id_131f3a5f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.main_app_userprofile
    ADD CONSTRAINT main_app_userprofile_user_id_131f3a5f_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2020-09-07 14:30:06

--
-- PostgreSQL database dump complete
--

