PGDMP     1    7                {            cas    14.5    14.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    18182    cas    DATABASE     u   CREATE DATABASE cas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Chinese (Traditional)_Hong Kong SAR.utf8';
    DROP DATABASE cas;
                postgres    false            `           1247    31374 
   AnimalType    TYPE     P   CREATE TYPE public."AnimalType" AS ENUM (
    'Cat',
    'Dog',
    'Others'
);
    DROP TYPE public."AnimalType";
       public          postgres    false            Z           1247    31320    District    TYPE     c  CREATE TYPE public."District" AS ENUM (
    'Islands',
    'Kwai_Tsing',
    'North',
    'Sai_Kung',
    'Sha_Tin',
    'Tai_Po',
    'Tsuen_Wan',
    'Tuen_Mun',
    'Yuen_Long',
    'Kowloon_City',
    'Kwun_Tong',
    'Sham_Shui_Po',
    'Wong_Tai_Sin',
    'Yau_Tsim_Mong',
    'Central_and_Western',
    'Eastern',
    'Southern',
    'Wan_Chai'
);
    DROP TYPE public."District";
       public          postgres    false            W           1247    31315    Gender    TYPE     B   CREATE TYPE public."Gender" AS ENUM (
    'Male',
    'Female'
);
    DROP TYPE public."Gender";
       public          postgres    false            c           1247    31382 	   ThumbStat    TYPE     P   CREATE TYPE public."ThumbStat" AS ENUM (
    'Up',
    'Down',
    'Removed'
);
    DROP TYPE public."ThumbStat";
       public          postgres    false            ]           1247    31358    Weekday    TYPE     �   CREATE TYPE public."Weekday" AS ENUM (
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
);
    DROP TYPE public."Weekday";
       public          postgres    false            �            1259    31305    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    postgres    false            �            1259    31517    comments    TABLE     ~  CREATE TABLE public.comments (
    id integer NOT NULL,
    user_id integer NOT NULL,
    map_id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    is_thumb boolean NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.comments;
       public         heap    postgres    false            �            1259    31516    comments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public          postgres    false    229            �           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
          public          postgres    false    228            �            1259    31528    comments_img    TABLE     �   CREATE TABLE public.comments_img (
    id integer NOT NULL,
    comment_id integer NOT NULL,
    name character varying(255) NOT NULL,
    is_deleted boolean NOT NULL
);
     DROP TABLE public.comments_img;
       public         heap    postgres    false            �            1259    31527    comments_img_id_seq    SEQUENCE     �   CREATE SEQUENCE public.comments_img_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.comments_img_id_seq;
       public          postgres    false    231            �           0    0    comments_img_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.comments_img_id_seq OWNED BY public.comments_img.id;
          public          postgres    false    230            �            1259    31535    events    TABLE       CREATE TABLE public.events (
    id integer NOT NULL,
    host_id integer NOT NULL,
    location character varying(255) NOT NULL,
    tag text,
    animal_type public."AnimalType" NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    date date NOT NULL,
    "time" time(6) without time zone NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    district public."District" NOT NULL
);
    DROP TABLE public.events;
       public         heap    postgres    false    864    858            �            1259    31534    events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    233            �           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    232            �            1259    31546 
   experience    TABLE     h  CREATE TABLE public.experience (
    id integer NOT NULL,
    poster_id integer NOT NULL,
    title character varying(255) NOT NULL,
    tag text,
    content text NOT NULL,
    map_id integer,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.experience;
       public         heap    postgres    false            �            1259    31545    experience_id_seq    SEQUENCE     �   CREATE SEQUENCE public.experience_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.experience_id_seq;
       public          postgres    false    235            �           0    0    experience_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.experience_id_seq OWNED BY public.experience.id;
          public          postgres    false    234            �            1259    31559    experience_like    TABLE     N  CREATE TABLE public.experience_like (
    id integer NOT NULL,
    user_id integer NOT NULL,
    exp_id integer NOT NULL,
    thumb_status public."ThumbStat" NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 #   DROP TABLE public.experience_like;
       public         heap    postgres    false    867            �            1259    31558    experience_like_id_seq    SEQUENCE     �   CREATE SEQUENCE public.experience_like_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.experience_like_id_seq;
       public          postgres    false    237            �           0    0    experience_like_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.experience_like_id_seq OWNED BY public.experience_like.id;
          public          postgres    false    236            �            1259    31666    map_to_working_hours    TABLE     -  CREATE TABLE public.map_to_working_hours (
    id integer NOT NULL,
    map_id integer NOT NULL,
    working_hour_id integer NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 (   DROP TABLE public.map_to_working_hours;
       public         heap    postgres    false            �            1259    31665    map_to_working_hours_id_seq    SEQUENCE     �   CREATE SEQUENCE public.map_to_working_hours_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.map_to_working_hours_id_seq;
       public          postgres    false    239            �           0    0    map_to_working_hours_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.map_to_working_hours_id_seq OWNED BY public.map_to_working_hours.id;
          public          postgres    false    238            �            1259    31402    map_type    TABLE     �   CREATE TABLE public.map_type (
    id integer NOT NULL,
    chinese_type character varying(255) NOT NULL,
    english_type character varying(255) NOT NULL
);
    DROP TABLE public.map_type;
       public         heap    postgres    false            �            1259    31401    map_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.map_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.map_type_id_seq;
       public          postgres    false    213            �           0    0    map_type_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.map_type_id_seq OWNED BY public.map_type.id;
          public          postgres    false    212            �            1259    31411    maps    TABLE     6  CREATE TABLE public.maps (
    id integer NOT NULL,
    map_type_id integer NOT NULL,
    chinese_name text NOT NULL,
    english_name text NOT NULL,
    email text,
    phone_number integer,
    chinese_address text NOT NULL,
    english_address text NOT NULL,
    district public."District" NOT NULL,
    latitude numeric(11,8) NOT NULL,
    longitude numeric(11,8) NOT NULL,
    profile_img text,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.maps;
       public         heap    postgres    false    858            �            1259    31410    maps_id_seq    SEQUENCE     �   CREATE SEQUENCE public.maps_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.maps_id_seq;
       public          postgres    false    215            �           0    0    maps_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.maps_id_seq OWNED BY public.maps.id;
          public          postgres    false    214            �            1259    31478    pets    TABLE     x  CREATE TABLE public.pets (
    id integer NOT NULL,
    user_id integer NOT NULL,
    name text NOT NULL,
    species_id integer NOT NULL,
    gender public."Gender",
    profile_img text,
    date_birth date,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.pets;
       public         heap    postgres    false    855            �            1259    31477    pets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.pets_id_seq;
       public          postgres    false    221            �           0    0    pets_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.pets_id_seq OWNED BY public.pets.id;
          public          postgres    false    220            �            1259    31497    pets_img    TABLE        CREATE TABLE public.pets_img (
    id integer NOT NULL,
    pet_id integer NOT NULL,
    tag text,
    name text NOT NULL,
    is_private boolean NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    modified_at timestamp(3) without time zone
);
    DROP TABLE public.pets_img;
       public         heap    postgres    false            �            1259    31496    pets_img_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pets_img_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pets_img_id_seq;
       public          postgres    false    225            �           0    0    pets_img_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pets_img_id_seq OWNED BY public.pets_img.id;
          public          postgres    false    224            �            1259    31507    pets_vaccine    TABLE     �   CREATE TABLE public.pets_vaccine (
    id integer NOT NULL,
    pet_id integer NOT NULL,
    name text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
     DROP TABLE public.pets_vaccine;
       public         heap    postgres    false            �            1259    31506    pets_vaccine_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pets_vaccine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.pets_vaccine_id_seq;
       public          postgres    false    227            �           0    0    pets_vaccine_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.pets_vaccine_id_seq OWNED BY public.pets_vaccine.id;
          public          postgres    false    226            �            1259    31489    pets_weight    TABLE     �   CREATE TABLE public.pets_weight (
    id integer NOT NULL,
    pet_id integer NOT NULL,
    weight numeric(6,2) NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.pets_weight;
       public         heap    postgres    false            �            1259    31488    pets_weight_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pets_weight_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.pets_weight_id_seq;
       public          postgres    false    223            �           0    0    pets_weight_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.pets_weight_id_seq OWNED BY public.pets_weight.id;
          public          postgres    false    222            �            1259    31469    species    TABLE     �   CREATE TABLE public.species (
    id integer NOT NULL,
    family_id integer,
    chinese_species text NOT NULL,
    english_species text NOT NULL
);
    DROP TABLE public.species;
       public         heap    postgres    false            �            1259    31468    species_id_seq    SEQUENCE     �   CREATE SEQUENCE public.species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.species_id_seq;
       public          postgres    false    219            �           0    0    species_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.species_id_seq OWNED BY public.species.id;
          public          postgres    false    218            �            1259    31390    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    email text NOT NULL,
    username text NOT NULL,
    password text NOT NULL,
    phone_number integer NOT NULL,
    gender public."Gender" NOT NULL,
    district public."District" NOT NULL,
    year_birth integer,
    month_birth integer,
    is_writer boolean DEFAULT false NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false    858    855            �            1259    31389    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    211            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    210            �            1259    31422    working_hours    TABLE     #  CREATE TABLE public.working_hours (
    id integer NOT NULL,
    weekday public."Weekday" NOT NULL,
    hours text NOT NULL,
    created_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
 !   DROP TABLE public.working_hours;
       public         heap    postgres    false    861            �            1259    31421    working_hours_id_seq    SEQUENCE     �   CREATE SEQUENCE public.working_hours_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.working_hours_id_seq;
       public          postgres    false    217            �           0    0    working_hours_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.working_hours_id_seq OWNED BY public.working_hours.id;
          public          postgres    false    216            �           2604    31520    comments id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �           2604    31531    comments_img id    DEFAULT     r   ALTER TABLE ONLY public.comments_img ALTER COLUMN id SET DEFAULT nextval('public.comments_img_id_seq'::regclass);
 >   ALTER TABLE public.comments_img ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            �           2604    31538 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    31549    experience id    DEFAULT     n   ALTER TABLE ONLY public.experience ALTER COLUMN id SET DEFAULT nextval('public.experience_id_seq'::regclass);
 <   ALTER TABLE public.experience ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    31562    experience_like id    DEFAULT     x   ALTER TABLE ONLY public.experience_like ALTER COLUMN id SET DEFAULT nextval('public.experience_like_id_seq'::regclass);
 A   ALTER TABLE public.experience_like ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    31669    map_to_working_hours id    DEFAULT     �   ALTER TABLE ONLY public.map_to_working_hours ALTER COLUMN id SET DEFAULT nextval('public.map_to_working_hours_id_seq'::regclass);
 F   ALTER TABLE public.map_to_working_hours ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            �           2604    31405    map_type id    DEFAULT     j   ALTER TABLE ONLY public.map_type ALTER COLUMN id SET DEFAULT nextval('public.map_type_id_seq'::regclass);
 :   ALTER TABLE public.map_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    31414    maps id    DEFAULT     b   ALTER TABLE ONLY public.maps ALTER COLUMN id SET DEFAULT nextval('public.maps_id_seq'::regclass);
 6   ALTER TABLE public.maps ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    31481    pets id    DEFAULT     b   ALTER TABLE ONLY public.pets ALTER COLUMN id SET DEFAULT nextval('public.pets_id_seq'::regclass);
 6   ALTER TABLE public.pets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    31500    pets_img id    DEFAULT     j   ALTER TABLE ONLY public.pets_img ALTER COLUMN id SET DEFAULT nextval('public.pets_img_id_seq'::regclass);
 :   ALTER TABLE public.pets_img ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    31510    pets_vaccine id    DEFAULT     r   ALTER TABLE ONLY public.pets_vaccine ALTER COLUMN id SET DEFAULT nextval('public.pets_vaccine_id_seq'::regclass);
 >   ALTER TABLE public.pets_vaccine ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    31492    pets_weight id    DEFAULT     p   ALTER TABLE ONLY public.pets_weight ALTER COLUMN id SET DEFAULT nextval('public.pets_weight_id_seq'::regclass);
 =   ALTER TABLE public.pets_weight ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    31472 
   species id    DEFAULT     h   ALTER TABLE ONLY public.species ALTER COLUMN id SET DEFAULT nextval('public.species_id_seq'::regclass);
 9   ALTER TABLE public.species ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    31393    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �           2604    31425    working_hours id    DEFAULT     t   ALTER TABLE ONLY public.working_hours ALTER COLUMN id SET DEFAULT nextval('public.working_hours_id_seq'::regclass);
 ?   ALTER TABLE public.working_hours ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �          0    31305    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          postgres    false    209   ��       �          0    31517    comments 
   TABLE DATA           i   COPY public.comments (id, user_id, map_id, title, content, is_thumb, created_at, updated_at) FROM stdin;
    public          postgres    false    229   Ѻ       �          0    31528    comments_img 
   TABLE DATA           H   COPY public.comments_img (id, comment_id, name, is_deleted) FROM stdin;
    public          postgres    false    231   �       �          0    31535    events 
   TABLE DATA           �   COPY public.events (id, host_id, location, tag, animal_type, title, content, date, "time", created_at, updated_at, district) FROM stdin;
    public          postgres    false    233   b�       �          0    31546 
   experience 
   TABLE DATA           h   COPY public.experience (id, poster_id, title, tag, content, map_id, created_at, updated_at) FROM stdin;
    public          postgres    false    235   �       �          0    31559    experience_like 
   TABLE DATA           d   COPY public.experience_like (id, user_id, exp_id, thumb_status, created_at, updated_at) FROM stdin;
    public          postgres    false    237   ��       �          0    31666    map_to_working_hours 
   TABLE DATA           c   COPY public.map_to_working_hours (id, map_id, working_hour_id, created_at, updated_at) FROM stdin;
    public          postgres    false    239   ��       �          0    31402    map_type 
   TABLE DATA           B   COPY public.map_type (id, chinese_type, english_type) FROM stdin;
    public          postgres    false    213   ֻ       �          0    31411    maps 
   TABLE DATA           �   COPY public.maps (id, map_type_id, chinese_name, english_name, email, phone_number, chinese_address, english_address, district, latitude, longitude, profile_img, created_at, updated_at) FROM stdin;
    public          postgres    false    215   ��       �          0    31478    pets 
   TABLE DATA           v   COPY public.pets (id, user_id, name, species_id, gender, profile_img, date_birth, created_at, updated_at) FROM stdin;
    public          postgres    false    221   ��       �          0    31497    pets_img 
   TABLE DATA           ^   COPY public.pets_img (id, pet_id, tag, name, is_private, created_at, modified_at) FROM stdin;
    public          postgres    false    225   r�       �          0    31507    pets_vaccine 
   TABLE DATA           D   COPY public.pets_vaccine (id, pet_id, name, created_at) FROM stdin;
    public          postgres    false    227   ��       �          0    31489    pets_weight 
   TABLE DATA           E   COPY public.pets_weight (id, pet_id, weight, created_at) FROM stdin;
    public          postgres    false    223   ��       �          0    31469    species 
   TABLE DATA           R   COPY public.species (id, family_id, chinese_species, english_species) FROM stdin;
    public          postgres    false    219   ��       �          0    31390    users 
   TABLE DATA           �   COPY public.users (id, email, username, password, phone_number, gender, district, year_birth, month_birth, is_writer, created_at, updated_at) FROM stdin;
    public          postgres    false    211   ��       �          0    31422    working_hours 
   TABLE DATA           S   COPY public.working_hours (id, weekday, hours, created_at, updated_at) FROM stdin;
    public          postgres    false    217   w�       �           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 11, true);
          public          postgres    false    228            �           0    0    comments_img_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.comments_img_id_seq', 11, true);
          public          postgres    false    230            �           0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 1, false);
          public          postgres    false    232            �           0    0    experience_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.experience_id_seq', 1, false);
          public          postgres    false    234            �           0    0    experience_like_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.experience_like_id_seq', 1, false);
          public          postgres    false    236            �           0    0    map_to_working_hours_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.map_to_working_hours_id_seq', 1, false);
          public          postgres    false    238            �           0    0    map_type_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.map_type_id_seq', 8, true);
          public          postgres    false    212            �           0    0    maps_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.maps_id_seq', 35, true);
          public          postgres    false    214            �           0    0    pets_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.pets_id_seq', 14, true);
          public          postgres    false    220            �           0    0    pets_img_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pets_img_id_seq', 108, true);
          public          postgres    false    224            �           0    0    pets_vaccine_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.pets_vaccine_id_seq', 1, false);
          public          postgres    false    226            �           0    0    pets_weight_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.pets_weight_id_seq', 1, false);
          public          postgres    false    222            �           0    0    species_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.species_id_seq', 8, true);
          public          postgres    false    218            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 5, true);
          public          postgres    false    210            �           0    0    working_hours_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.working_hours_id_seq', 1, false);
          public          postgres    false    216            �           2606    31313 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            postgres    false    209            �           2606    31533    comments_img comments_img_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.comments_img
    ADD CONSTRAINT comments_img_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.comments_img DROP CONSTRAINT comments_img_pkey;
       public            postgres    false    231            �           2606    31526    comments comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    229                       2606    31544    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    233                       2606    31566 $   experience_like experience_like_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.experience_like
    ADD CONSTRAINT experience_like_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.experience_like DROP CONSTRAINT experience_like_pkey;
       public            postgres    false    237                       2606    31557    experience experience_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.experience
    ADD CONSTRAINT experience_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.experience DROP CONSTRAINT experience_pkey;
       public            postgres    false    235            
           2606    31673 .   map_to_working_hours map_to_working_hours_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.map_to_working_hours
    ADD CONSTRAINT map_to_working_hours_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.map_to_working_hours DROP CONSTRAINT map_to_working_hours_pkey;
       public            postgres    false    239            �           2606    31409    map_type map_type_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.map_type
    ADD CONSTRAINT map_type_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.map_type DROP CONSTRAINT map_type_pkey;
       public            postgres    false    213            �           2606    31420    maps maps_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.maps
    ADD CONSTRAINT maps_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.maps DROP CONSTRAINT maps_pkey;
       public            postgres    false    215            �           2606    31505    pets_img pets_img_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.pets_img
    ADD CONSTRAINT pets_img_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.pets_img DROP CONSTRAINT pets_img_pkey;
       public            postgres    false    225            �           2606    31487    pets pets_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.pets DROP CONSTRAINT pets_pkey;
       public            postgres    false    221            �           2606    31515    pets_vaccine pets_vaccine_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.pets_vaccine
    ADD CONSTRAINT pets_vaccine_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.pets_vaccine DROP CONSTRAINT pets_vaccine_pkey;
       public            postgres    false    227            �           2606    31495    pets_weight pets_weight_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pets_weight
    ADD CONSTRAINT pets_weight_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.pets_weight DROP CONSTRAINT pets_weight_pkey;
       public            postgres    false    223            �           2606    31476    species species_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.species DROP CONSTRAINT species_pkey;
       public            postgres    false    219            �           2606    31400    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    211            �           2606    31431     working_hours working_hours_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.working_hours
    ADD CONSTRAINT working_hours_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.working_hours DROP CONSTRAINT working_hours_pkey;
       public            postgres    false    217                        1259    31583    events_host_id_date_time_key    INDEX     g   CREATE UNIQUE INDEX events_host_id_date_time_key ON public.events USING btree (host_id, date, "time");
 0   DROP INDEX public.events_host_id_date_time_key;
       public            postgres    false    233    233    233                       1259    31584 "   experience_like_user_id_exp_id_key    INDEX     p   CREATE UNIQUE INDEX experience_like_user_id_exp_id_key ON public.experience_like USING btree (user_id, exp_id);
 6   DROP INDEX public.experience_like_user_id_exp_id_key;
       public            postgres    false    237    237                       1259    31674 /   map_to_working_hours_map_id_working_hour_id_key    INDEX     �   CREATE UNIQUE INDEX map_to_working_hours_map_id_working_hour_id_key ON public.map_to_working_hours USING btree (map_id, working_hour_id);
 C   DROP INDEX public.map_to_working_hours_map_id_working_hour_id_key;
       public            postgres    false    239    239            �           1259    31570 &   map_type_chinese_type_english_type_key    INDEX     x   CREATE UNIQUE INDEX map_type_chinese_type_english_type_key ON public.map_type USING btree (chinese_type, english_type);
 :   DROP INDEX public.map_type_chinese_type_english_type_key;
       public            postgres    false    213    213            �           1259    31571    maps_chinese_address_key    INDEX     [   CREATE UNIQUE INDEX maps_chinese_address_key ON public.maps USING btree (chinese_address);
 ,   DROP INDEX public.maps_chinese_address_key;
       public            postgres    false    215            �           1259    31572    maps_english_address_key    INDEX     [   CREATE UNIQUE INDEX maps_english_address_key ON public.maps USING btree (english_address);
 ,   DROP INDEX public.maps_english_address_key;
       public            postgres    false    215            �           1259    31574    maps_latitude_longitude_key    INDEX     b   CREATE UNIQUE INDEX maps_latitude_longitude_key ON public.maps USING btree (latitude, longitude);
 /   DROP INDEX public.maps_latitude_longitude_key;
       public            postgres    false    215    215            �           1259    31573    maps_profile_img_key    INDEX     S   CREATE UNIQUE INDEX maps_profile_img_key ON public.maps USING btree (profile_img);
 (   DROP INDEX public.maps_profile_img_key;
       public            postgres    false    215            �           1259    31581    pets_img_name_key    INDEX     M   CREATE UNIQUE INDEX pets_img_name_key ON public.pets_img USING btree (name);
 %   DROP INDEX public.pets_img_name_key;
       public            postgres    false    225            �           1259    31579    pets_profile_img_key    INDEX     S   CREATE UNIQUE INDEX pets_profile_img_key ON public.pets USING btree (profile_img);
 (   DROP INDEX public.pets_profile_img_key;
       public            postgres    false    221            �           1259    31580    pets_user_id_name_key    INDEX     V   CREATE UNIQUE INDEX pets_user_id_name_key ON public.pets USING btree (user_id, name);
 )   DROP INDEX public.pets_user_id_name_key;
       public            postgres    false    221    221            �           1259    31578 +   species_chinese_species_english_species_key    INDEX     �   CREATE UNIQUE INDEX species_chinese_species_english_species_key ON public.species USING btree (chinese_species, english_species);
 ?   DROP INDEX public.species_chinese_species_english_species_key;
       public            postgres    false    219    219            �           1259    31567    users_email_key    INDEX     I   CREATE UNIQUE INDEX users_email_key ON public.users USING btree (email);
 #   DROP INDEX public.users_email_key;
       public            postgres    false    211            �           1259    31569    users_phone_number_key    INDEX     W   CREATE UNIQUE INDEX users_phone_number_key ON public.users USING btree (phone_number);
 *   DROP INDEX public.users_phone_number_key;
       public            postgres    false    211            �           1259    31568    users_username_key    INDEX     O   CREATE UNIQUE INDEX users_username_key ON public.users USING btree (username);
 &   DROP INDEX public.users_username_key;
       public            postgres    false    211                       2606    31635 )   comments_img comments_img_comment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments_img
    ADD CONSTRAINT comments_img_comment_id_fkey FOREIGN KEY (comment_id) REFERENCES public.comments(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.comments_img DROP CONSTRAINT comments_img_comment_id_fkey;
       public          postgres    false    231    229    3325                       2606    31630    comments comments_map_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_map_id_fkey FOREIGN KEY (map_id) REFERENCES public.maps(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_map_id_fkey;
       public          postgres    false    229    215    3306                       2606    31625    comments comments_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 H   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_user_id_fkey;
       public          postgres    false    229    3297    211                       2606    31640    events events_host_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_host_id_fkey FOREIGN KEY (host_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.events DROP CONSTRAINT events_host_id_fkey;
       public          postgres    false    233    3297    211                       2606    31660 +   experience_like experience_like_exp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.experience_like
    ADD CONSTRAINT experience_like_exp_id_fkey FOREIGN KEY (exp_id) REFERENCES public.experience(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 U   ALTER TABLE ONLY public.experience_like DROP CONSTRAINT experience_like_exp_id_fkey;
       public          postgres    false    3332    235    237                       2606    31655 ,   experience_like experience_like_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.experience_like
    ADD CONSTRAINT experience_like_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 V   ALTER TABLE ONLY public.experience_like DROP CONSTRAINT experience_like_user_id_fkey;
       public          postgres    false    237    211    3297                       2606    31685 !   experience experience_map_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.experience
    ADD CONSTRAINT experience_map_id_fkey FOREIGN KEY (map_id) REFERENCES public.maps(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.experience DROP CONSTRAINT experience_map_id_fkey;
       public          postgres    false    215    3306    235                       2606    31645 $   experience experience_poster_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.experience
    ADD CONSTRAINT experience_poster_id_fkey FOREIGN KEY (poster_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public.experience DROP CONSTRAINT experience_poster_id_fkey;
       public          postgres    false    235    211    3297                       2606    31675 5   map_to_working_hours map_to_working_hours_map_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.map_to_working_hours
    ADD CONSTRAINT map_to_working_hours_map_id_fkey FOREIGN KEY (map_id) REFERENCES public.maps(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 _   ALTER TABLE ONLY public.map_to_working_hours DROP CONSTRAINT map_to_working_hours_map_id_fkey;
       public          postgres    false    215    239    3306                       2606    31680 >   map_to_working_hours map_to_working_hours_working_hour_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.map_to_working_hours
    ADD CONSTRAINT map_to_working_hours_working_hour_id_fkey FOREIGN KEY (working_hour_id) REFERENCES public.working_hours(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 h   ALTER TABLE ONLY public.map_to_working_hours DROP CONSTRAINT map_to_working_hours_working_hour_id_fkey;
       public          postgres    false    3309    217    239                       2606    31585    maps maps_map_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.maps
    ADD CONSTRAINT maps_map_type_id_fkey FOREIGN KEY (map_type_id) REFERENCES public.map_type(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.maps DROP CONSTRAINT maps_map_type_id_fkey;
       public          postgres    false    213    3301    215                       2606    31615    pets_img pets_img_pet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pets_img
    ADD CONSTRAINT pets_img_pet_id_fkey FOREIGN KEY (pet_id) REFERENCES public.pets(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.pets_img DROP CONSTRAINT pets_img_pet_id_fkey;
       public          postgres    false    3314    225    221                       2606    31605    pets pets_species_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_species_id_fkey FOREIGN KEY (species_id) REFERENCES public.species(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 C   ALTER TABLE ONLY public.pets DROP CONSTRAINT pets_species_id_fkey;
       public          postgres    false    221    3312    219                       2606    31600    pets pets_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 @   ALTER TABLE ONLY public.pets DROP CONSTRAINT pets_user_id_fkey;
       public          postgres    false    3297    211    221                       2606    31620 %   pets_vaccine pets_vaccine_pet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pets_vaccine
    ADD CONSTRAINT pets_vaccine_pet_id_fkey FOREIGN KEY (pet_id) REFERENCES public.pets(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.pets_vaccine DROP CONSTRAINT pets_vaccine_pet_id_fkey;
       public          postgres    false    221    3314    227                       2606    31610 #   pets_weight pets_weight_pet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pets_weight
    ADD CONSTRAINT pets_weight_pet_id_fkey FOREIGN KEY (pet_id) REFERENCES public.pets(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 M   ALTER TABLE ONLY public.pets_weight DROP CONSTRAINT pets_weight_pet_id_fkey;
       public          postgres    false    223    3314    221                       2606    31595    species species_family_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_family_id_fkey FOREIGN KEY (family_id) REFERENCES public.species(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.species DROP CONSTRAINT species_family_id_fkey;
       public          postgres    false    219    219    3312            �   �   x�}�Mj1����)�/����'K���NS�*�/</�Mܤ��l�-�䖅EG�`O�h�U1Ȧ�Z�E�RBu B�¥�&���~`�k�3�:	#~�?��d ��������5�:���ٓ�GX�e֤3�	ZX&���3#�}�_V�EWZ��l��\ ����sDA�=e�����4�%'@p����Z�?��v��lpV      �   3   x�34�4��442�4N##c]# R00�26�2��377�%����� �S      �   >   x�34�44�42H220N�5KIK�5156�M��4�5�L4J630O104��*H�L����� PKD      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�3�|�~��ΕOwM�H-���/�2�|޻�e��+v=�l��;�d�e&sÔ��y:gXG@bQ6�	T������vBL*H�2�)���|kX�#�� 39�ˌ��Զ��wp�l,��K��M���2�|�d��ݛ9�R�KK��J�,8_�N�9�#�$5�+F��� �~W      �   E  x��YkS�����tG� sN��d�!�8�t;�Us���+)�n��a>�S���O��A��� |���_n���_�uN�~ �T���Wv�ڏ��>M��vf�o��n���S��	kA��9Տ���N���vg3$�30�|ӯ0�6CeJ���`s-�\��Z�M��ڍ��R����0]�_����q���ɣ'�Hש���n�5pf(�Fp����N24�y���e{����~|�sZ�vJe��W�`6�T۴J�j�iPM�LS�ʴv�����֗�R���{��c��Β�Y�+��� 5t���%@��~
�/�?��?]�o��W�4��4P�5���������ߞ�j�@�u�̿��CYr�̩���O"�J����?�tw���� ��!�y�������~�.7_.:�'~d�m�����G�5��g���� ���r˟Z��x?�^�]{Q[|�t�����F9���{���)�.{e''K�0U��V1e�BET���O4�����j�L2��/��)]��F�^��8�}`:e�+�q�1��񉲻�*�������$���)���j��Rta��s�ûpn�	Uuj����[<��:���_琙�i�@�rKe* �� e�-������$RY}�LO��������#�_�+��r.��yyo�Ζ*�~��1����TMAu��g"��^�1�5Q�Z�~X��"��E��xd���o#}����&���E��k\34U�z��*g���:����#TJ�ل��A��C�i�zc�xW9}��'�jl�X����̬�s��,e��G��.Dc[���<r"Du[xZ��+����xK�Ki��a�V-�4�J�T4�_�^ݞv�Fn�?�x�%�0��8y2�����],��~�b��Y��nş����jV����4*��h���㍜�$���ۦ�rU�i�fXu�� ���ʩM��_��ŸD܏�yo2�s�/��y��k:�0���b8�.X��l��� �8�x �1����7���8��L8��m����1���w5��W��D��>�9�}�v��\[�.�Wd�P1ү���9ύ@f�2��^��Ig�u����>guk�U�:�?1K���a�Sɖ�K#}IuR�W�Dj�)���Ԁ�*�s�&�B��m�����tK�e���������GN:��<�/t퀬[���vD2�J�(�y< }6妆!�[e:�c��P������!\��'́�ɂ�2�c�#�r�!qD�ӟ�����	Q�1gDV��0F���x��m͈[J�\�4�Ӌ�DOM��wg��K�������3h�#JoО���Y�p�u�D~��)�g�(;��,�d�%�i������'uoK����FN8y��1����1_�-�#�t�f[��ҋHAM�=�[}��L����/_.G�^�u�ܜ���~��A�/z��d�y�(ͺE]3b��_���@S��9ΌU��� �^!Y�X��0�0&����h�A+���S�^�O/g�.jw�|�o-#>��Wj�@6ՙ�γ�����3�&��J1��b��-;�S���%�FK�`�!�3~��7���ș�&��w&f�aѸ�����if�mE�٢VL%U����� ��#Ɖ��H�ſ�s F��[�����m�1�-��B�@��~��76���'�C��������5Qf�e���)c[�Ht�#?�Q%�I.�"���R~<9�w�4��vB�:屃G��z)��&�=W7�zu[]�+K�α�Ҹ��������e6b/Z�a}�h���\~_�M�t�3ea�ۦ�ƭ��ۂf���5�!X~\�{�q��]��H���g�K���R�˕<�����TmDS	�ކOV����ݽ�Dg��i�2�s=QT�F����`A�����p$<����Ӌ&DD4��h���b^<�#�����u[�¤��~[&��c�y�2� ���Mϐ�����P��ﵟ�4��Xኛ����i:;�8IJ�h�n�X Aǎ)�OD}�*���c��qL�#�`j���VԸ3�_�Y�oOA����'������v?Ά_Q��i�2�5>*C܍y���[EY9GwKޅ<�y^f��$�u(kֲ#�q��� �9��W1�X��sT5uj���wH���� ��B�6l���Y{|}d�b6��&���8˱4f�?P�hLM�#�^jg��ߺ[�Z��-����N��i�2�.6�ʹ�7��!��o�a�B��^pB�Ť:9_���_��=z�\�\(yeW�QF�����%t��F��R9�A�?N�Ƶ"���'��]��Z�t���H7R��
W@��r%Wr����°�����V��.*�p�z�ɳf��c�3:�=�J�3ކ�$v{ylQ���j���.xڭ�Gj@& U߯K������|�R�;'�%�)��k�߆;7M�ѐ��%7���՟u��Й������aH��25���곻 ��)�+T�$��h48��&������*p��,H%*3�+���v�I7�U��d��,ˠ{n��$�)���
�W��N�VU�ܫ�<��3��NJ�l�?U�������ӷ����;j١�ؾ�F�Z��ыbJ�j��r^�\tY_�.E��T���F0K6��4����7����Z��L�{�%�ݭ/:�T�6�~y$2u�C��
��lg'��Y׭ˇ^��x(���bϻME�W^h\�-�r��n�+5L*���`��;�B�K����;Z���5�0�ی~����R�!C�����JSu��xJs���ۧ���A�g����zy�uL@����^��YX ��ц�ŉ��wE#턙��|��?�����H���!=x\�����V�R��D�f��CL���J��'���G�OS�x:��ű沨G]����<Q��`ԡ$���^�`0�����[MwK��.24�����Wc�g�+�&��&>��_-�ک�*�$�O�_\	堕Ղ�� �g���=�M��YXY���Ee�p�����(n[$`�9e�wF�������9!���Hq��;�YZ���8t����!t      �   �  x����j�0���S�,ɶ������,���0L�0￨ZzIN9�����WРY�V�;>��<�2dQ -X�#1X�㝍���_�7dȬ�k���%��X]m6��x1̩��vk¼���C����n�3r��|���1��{��Ʒ�W?�
�p8\zK`E�Ÿ�1�Ǚ7�ttn1,i��I��M�l�����|�����y�1 �z|�U	bK@(���J���һ���Ͽ�/�d���s�s���ͼ� �����>��c.�T�""��;��r����Ez�{��^��u�]���/]���M8p	��#�=��!��2d���2�?cg]k�j�ѵ�揵J�<��PJ�I�q��}=���0���#j�[���m��CY�      �   ?  x���ko�0���W�ˎs��h�F�m�&M΅���4q���R`�&y|�#��y��!��FF�<����JH��F�t�+}؏h���X��Mw���>_�۵p״5H���K��(xʠ�y$
�e�z�����k�-�,����(��WO��A���g�T�YȢ�Y�.ZI���!aU�r�a2�9ޯ����\D1={���3Ǽ�!nx���ދEH����#]�%ƙs.ܦb9+`s���R��;~���`�D=��0kV�SǛ/���ǡ?���S��l�Mϻ��$���e���ٻ��l�`�y�my�%�U�:���4R����<�;{��LƼ��F��y�`�ǐ��R7äK����-x�Vp��A�xz�D�>�z�"�S�KϰH�tg���$6"f�ح�%8�p�a�X�մt�/z�UZ�׵�ٚ3�X�D>��?�e���930�^����o&Ni���X/�h�9��� #��T�>��֛e�z�߀a"j���
 ��8
ب�z�?^O��υa#�no�:�ی����RQ_T"�x�}��[:���=͚c��G�
"OY5K� h��,,x��z�"װ[����~�$�z����v�|��_�Cj[2)����u��S��,�m�k$ϡ���>k��?��pĉ��ݬ=䘟�]+Q��b~���or�c?]+-���mw��N$y$!a���Zd,��Q!���J�G=i!������e���5W[� �G�px���k=�4?t��
��ZT6j�S�j�SsN����K�*D����Xo͏':=��n�.%�m��Otww�}�[k      �      x������ � �      �      x������ � �      �   �   x�3���|�i2�sb	���{:�K~:�1�!��)@r���险\&@����_��T�Y�Y���_T���Y�e
R���i�6Π�����.3N#�	 }��ҋRs�́B/�'>[?��=?'%5/>(��(3�,���(�bӖ�+�q���r��qqq ug=�      �   �  x���˒�@�u�Y��nh`VQe���TY��r�f���~01�,��?�S_��H��9e[�����&D)�І�-�m#s~�<�;�ISa��b�V���ȮR��\5W�/��a A$+XՀC��B��#$]׀$�=�"Do"|�o����w�IV�5oAP�>��:5�ШB���P����V��8��sb��q�fx�L8�͝�y$k��C8 E]�]��@��I���оǆ8�.,{���w��'[�A�u�Nm�u�3DIu�t�O�����j��A�9ek��� �@y�D�H~{�:5BT�f�ze�r�ק��g�����s8�{��2�m�g熻�c��m�<�Lz�m$��K�B��J�"����<�eo[z��I��_]���!3��KM=˞�t�WN������ʍpyoq����u�^@�Z��%�K      �      x������ � �     