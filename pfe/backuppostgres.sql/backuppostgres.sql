PGDMP                      |           postgres    16.2    16.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    5    postgres    DATABASE     {   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'French_France.1252';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    5016                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    32805 
   abdelbaset    TABLE     �   CREATE TABLE public.abdelbaset (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    audio_url character varying(255) NOT NULL
);
    DROP TABLE public.abdelbaset;
       public         heap    postgres    false            �            1259    32804    abdelbaset_id_seq    SEQUENCE     �   CREATE SEQUENCE public.abdelbaset_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.abdelbaset_id_seq;
       public          postgres    false    236            �           0    0    abdelbaset_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.abdelbaset_id_seq OWNED BY public.abdelbaset.id;
          public          postgres    false    235            �            1259    32823    abubaker    TABLE     �   CREATE TABLE public.abubaker (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    audio_url character varying(255) NOT NULL
);
    DROP TABLE public.abubaker;
       public         heap    postgres    false            �            1259    32822    abubaker_id_seq    SEQUENCE     �   CREATE SEQUENCE public.abubaker_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.abubaker_id_seq;
       public          postgres    false    240            �           0    0    abubaker_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.abubaker_id_seq OWNED BY public.abubaker.id;
          public          postgres    false    239                       1259    81935    article    TABLE     �   CREATE TABLE public.article (
    art_id integer NOT NULL,
    code_art character varying(50) NOT NULL,
    des_art character varying(200) NOT NULL,
    couleur character varying(50),
    pu_art numeric(10,2),
    qte_stock integer
);
    DROP TABLE public.article;
       public         heap    postgres    false                       1259    81934    article_art_id_seq    SEQUENCE     �   CREATE SEQUENCE public.article_art_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.article_art_id_seq;
       public          postgres    false    258            �           0    0    article_art_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.article_art_id_seq OWNED BY public.article.art_id;
          public          postgres    false    257                        1259    81928    client    TABLE     
  CREATE TABLE public.client (
    cl_id integer NOT NULL,
    num_cl character varying(50) NOT NULL,
    nom_cl character varying(100) NOT NULL,
    prenom_cl character varying(100) NOT NULL,
    adresse_cl character varying(200),
    tel_cl character varying(20)
);
    DROP TABLE public.client;
       public         heap    postgres    false            �            1259    81927    client_cl_id_seq    SEQUENCE     �   CREATE SEQUENCE public.client_cl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.client_cl_id_seq;
       public          postgres    false    256            �           0    0    client_cl_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.client_cl_id_seq OWNED BY public.client.cl_id;
          public          postgres    false    255                       1259    81942    commande    TABLE     �   CREATE TABLE public.commande (
    com_id integer NOT NULL,
    num_com character varying(50) NOT NULL,
    date_com date NOT NULL,
    client_id integer
);
    DROP TABLE public.commande;
       public         heap    postgres    false                       1259    81953    commande_article    TABLE     l   CREATE TABLE public.commande_article (
    commande_id integer NOT NULL,
    article_id integer NOT NULL
);
 $   DROP TABLE public.commande_article;
       public         heap    postgres    false                       1259    81941    commande_com_id_seq    SEQUENCE     �   CREATE SEQUENCE public.commande_com_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.commande_com_id_seq;
       public          postgres    false    260            �           0    0    commande_com_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.commande_com_id_seq OWNED BY public.commande.com_id;
          public          postgres    false    259            �            1259    73729    coursreligion    TABLE     e   CREATE TABLE public.coursreligion (
    id integer NOT NULL,
    imageurl text,
    videourl text
);
 !   DROP TABLE public.coursreligion;
       public         heap    postgres    false            �            1259    73728    coursreligion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.coursreligion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.coursreligion_id_seq;
       public          postgres    false    252            �           0    0    coursreligion_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.coursreligion_id_seq OWNED BY public.coursreligion.id;
          public          postgres    false    251            �            1259    40961    donation    TABLE     $  CREATE TABLE public.donation (
    id integer NOT NULL,
    firstname character varying(255) NOT NULL,
    lastname character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    homeaddress character varying(255) NOT NULL,
    city character varying(255) NOT NULL,
    state character varying(255) NOT NULL,
    cardname character varying(255) NOT NULL,
    expirydate character varying(7) NOT NULL,
    cardnumber character varying(16) NOT NULL,
    cvv character varying(3) NOT NULL,
    donationtotal numeric(10,2) NOT NULL
);
    DROP TABLE public.donation;
       public         heap    postgres    false            �            1259    40960    donation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.donation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.donation_id_seq;
       public          postgres    false    246            �           0    0    donation_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.donation_id_seq OWNED BY public.donation.id;
          public          postgres    false    245            �            1259    32841    fares    TABLE     �   CREATE TABLE public.fares (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    audio_url character varying(255) NOT NULL
);
    DROP TABLE public.fares;
       public         heap    postgres    false            �            1259    32840    fares_id_seq    SEQUENCE     �   CREATE SEQUENCE public.fares_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.fares_id_seq;
       public          postgres    false    244            �           0    0    fares_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.fares_id_seq OWNED BY public.fares.id;
          public          postgres    false    243            �            1259    24586    ingredients    TABLE     �   CREATE TABLE public.ingredients (
    id_ingredient integer NOT NULL,
    titre character varying(100),
    description text,
    url_video character varying(255),
    url_image character varying(255)
);
    DROP TABLE public.ingredients;
       public         heap    postgres    false            �            1259    24585    ingredients_id_ingredient_seq    SEQUENCE     �   CREATE SEQUENCE public.ingredients_id_ingredient_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.ingredients_id_ingredient_seq;
       public          postgres    false    225            �           0    0    ingredients_id_ingredient_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.ingredients_id_ingredient_seq OWNED BY public.ingredients.id_ingredient;
          public          postgres    false    224            �            1259    32769    maher    TABLE     �   CREATE TABLE public.maher (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    audio_url character varying(255) NOT NULL
);
    DROP TABLE public.maher;
       public         heap    postgres    false            �            1259    32768    maher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.maher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.maher_id_seq;
       public          postgres    false    228            �           0    0    maher_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.maher_id_seq OWNED BY public.maher.id;
          public          postgres    false    227            �            1259    32796    michary    TABLE     �   CREATE TABLE public.michary (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    audio_url character varying(255) NOT NULL
);
    DROP TABLE public.michary;
       public         heap    postgres    false            �            1259    32795    michary_id_seq    SEQUENCE     �   CREATE SEQUENCE public.michary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.michary_id_seq;
       public          postgres    false    234            �           0    0    michary_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.michary_id_seq OWNED BY public.michary.id;
          public          postgres    false    233            �            1259    57352    prayer    TABLE     �  CREATE TABLE public.prayer (
    id integer NOT NULL,
    id_region integer,
    "يوم" character varying(20),
    "الهجري" character varying(10),
    "الميلادي" date,
    "الامساك" character varying(10),
    "الفجر" character varying(10),
    "الشروق" character varying(10),
    "الظهر" character varying(10),
    "العصر" character varying(10),
    "المغرب" character varying(10),
    "العشاء" character varying(10)
);
    DROP TABLE public.prayer;
       public         heap    postgres    false            �            1259    57351    prayer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prayer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.prayer_id_seq;
       public          postgres    false    250            �           0    0    prayer_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.prayer_id_seq OWNED BY public.prayer.id;
          public          postgres    false    249            �            1259    24594    recette_ingrédients    TABLE     b   CREATE TABLE public."recette_ingrédients" (
    id_recette integer,
    id_ingredient integer
);
 *   DROP TABLE public."recette_ingrédients";
       public         heap    postgres    false            �            1259    24577    recettes    TABLE     �   CREATE TABLE public.recettes (
    id_recette integer NOT NULL,
    titre character varying(100),
    description text,
    url_image text,
    url_video character varying(255)
);
    DROP TABLE public.recettes;
       public         heap    postgres    false            �            1259    24576    recettes_id_recette_seq    SEQUENCE     �   CREATE SEQUENCE public.recettes_id_recette_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.recettes_id_recette_seq;
       public          postgres    false    223            �           0    0    recettes_id_recette_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.recettes_id_recette_seq OWNED BY public.recettes.id_recette;
          public          postgres    false    222            �            1259    49153    regions    TABLE     i   CREATE TABLE public.regions (
    id_region integer NOT NULL,
    nom character varying(100) NOT NULL
);
    DROP TABLE public.regions;
       public         heap    postgres    false            �            1259    49152    regions_id_region_seq    SEQUENCE     �   CREATE SEQUENCE public.regions_id_region_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.regions_id_region_seq;
       public          postgres    false    248            �           0    0    regions_id_region_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.regions_id_region_seq OWNED BY public.regions.id_region;
          public          postgres    false    247            �            1259    32778    saad    TABLE     �   CREATE TABLE public.saad (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    audio_url character varying(255) NOT NULL
);
    DROP TABLE public.saad;
       public         heap    postgres    false            �            1259    32777    saad_id_seq    SEQUENCE     �   CREATE SEQUENCE public.saad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.saad_id_seq;
       public          postgres    false    230            �           0    0    saad_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.saad_id_seq OWNED BY public.saad.id;
          public          postgres    false    229            �            1259    32814    salah    TABLE     �   CREATE TABLE public.salah (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    audio_url character varying(255) NOT NULL
);
    DROP TABLE public.salah;
       public         heap    postgres    false            �            1259    32813    salah_id_seq    SEQUENCE     �   CREATE SEQUENCE public.salah_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.salah_id_seq;
       public          postgres    false    238            �           0    0    salah_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.salah_id_seq OWNED BY public.salah.id;
          public          postgres    false    237            �            1259    32832    saoud    TABLE     �   CREATE TABLE public.saoud (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    audio_url character varying(255) NOT NULL
);
    DROP TABLE public.saoud;
       public         heap    postgres    false            �            1259    32831    saoud_id_seq    SEQUENCE     �   CREATE SEQUENCE public.saoud_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.saoud_id_seq;
       public          postgres    false    242            �           0    0    saoud_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.saoud_id_seq OWNED BY public.saoud.id;
          public          postgres    false    241            �            1259    32787    soudais    TABLE     �   CREATE TABLE public.soudais (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    audio_url character varying(255) NOT NULL
);
    DROP TABLE public.soudais;
       public         heap    postgres    false            �            1259    32786    soudais_id_seq    SEQUENCE     �   CREATE SEQUENCE public.soudais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.soudais_id_seq;
       public          postgres    false    232            �           0    0    soudais_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.soudais_id_seq OWNED BY public.soudais.id;
          public          postgres    false    231            �            1259    81921    students    TABLE     }   CREATE TABLE public.students (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    age integer NOT NULL
);
    DROP TABLE public.students;
       public         heap    postgres    false            �            1259    81920    students_id_seq    SEQUENCE     x   CREATE SEQUENCE public.students_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public          postgres    false    254            �           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public          postgres    false    253            �            1259    16425    userrss    TABLE     �   CREATE TABLE public.userrss (
    id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    password character varying(100),
    role character varying(50),
    avatar bytea
);
    DROP TABLE public.userrss;
       public         heap    postgres    false            �            1259    16424    userrss_id_seq    SEQUENCE     �   CREATE SEQUENCE public.userrss_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.userrss_id_seq;
       public          postgres    false    221            �           0    0    userrss_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.userrss_id_seq OWNED BY public.userrss.id;
          public          postgres    false    220            �            1259    16398    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    password character varying(100),
    role character varying(50)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16397    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    217            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    216            �            1259    16407    userss    TABLE     �   CREATE TABLE public.userss (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    password character varying(255),
    role character varying(50)
);
    DROP TABLE public.userss;
       public         heap    postgres    false            �            1259    16406    userss_id_seq    SEQUENCE     �   CREATE SEQUENCE public.userss_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.userss_id_seq;
       public          postgres    false    219            �           0    0    userss_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.userss_id_seq OWNED BY public.userss.id;
          public          postgres    false    218            �           2604    32808    abdelbaset id    DEFAULT     n   ALTER TABLE ONLY public.abdelbaset ALTER COLUMN id SET DEFAULT nextval('public.abdelbaset_id_seq'::regclass);
 <   ALTER TABLE public.abdelbaset ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    32826    abubaker id    DEFAULT     j   ALTER TABLE ONLY public.abubaker ALTER COLUMN id SET DEFAULT nextval('public.abubaker_id_seq'::regclass);
 :   ALTER TABLE public.abubaker ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    240    240            �           2604    81938    article art_id    DEFAULT     p   ALTER TABLE ONLY public.article ALTER COLUMN art_id SET DEFAULT nextval('public.article_art_id_seq'::regclass);
 =   ALTER TABLE public.article ALTER COLUMN art_id DROP DEFAULT;
       public          postgres    false    258    257    258            �           2604    81931    client cl_id    DEFAULT     l   ALTER TABLE ONLY public.client ALTER COLUMN cl_id SET DEFAULT nextval('public.client_cl_id_seq'::regclass);
 ;   ALTER TABLE public.client ALTER COLUMN cl_id DROP DEFAULT;
       public          postgres    false    255    256    256            �           2604    81945    commande com_id    DEFAULT     r   ALTER TABLE ONLY public.commande ALTER COLUMN com_id SET DEFAULT nextval('public.commande_com_id_seq'::regclass);
 >   ALTER TABLE public.commande ALTER COLUMN com_id DROP DEFAULT;
       public          postgres    false    260    259    260            �           2604    73732    coursreligion id    DEFAULT     t   ALTER TABLE ONLY public.coursreligion ALTER COLUMN id SET DEFAULT nextval('public.coursreligion_id_seq'::regclass);
 ?   ALTER TABLE public.coursreligion ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    251    252    252            �           2604    40964    donation id    DEFAULT     j   ALTER TABLE ONLY public.donation ALTER COLUMN id SET DEFAULT nextval('public.donation_id_seq'::regclass);
 :   ALTER TABLE public.donation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    245    246            �           2604    32844    fares id    DEFAULT     d   ALTER TABLE ONLY public.fares ALTER COLUMN id SET DEFAULT nextval('public.fares_id_seq'::regclass);
 7   ALTER TABLE public.fares ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    244    244            �           2604    24589    ingredients id_ingredient    DEFAULT     �   ALTER TABLE ONLY public.ingredients ALTER COLUMN id_ingredient SET DEFAULT nextval('public.ingredients_id_ingredient_seq'::regclass);
 H   ALTER TABLE public.ingredients ALTER COLUMN id_ingredient DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    32772    maher id    DEFAULT     d   ALTER TABLE ONLY public.maher ALTER COLUMN id SET DEFAULT nextval('public.maher_id_seq'::regclass);
 7   ALTER TABLE public.maher ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            �           2604    32799 
   michary id    DEFAULT     h   ALTER TABLE ONLY public.michary ALTER COLUMN id SET DEFAULT nextval('public.michary_id_seq'::regclass);
 9   ALTER TABLE public.michary ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    57355 	   prayer id    DEFAULT     f   ALTER TABLE ONLY public.prayer ALTER COLUMN id SET DEFAULT nextval('public.prayer_id_seq'::regclass);
 8   ALTER TABLE public.prayer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    249    250    250            �           2604    24580    recettes id_recette    DEFAULT     z   ALTER TABLE ONLY public.recettes ALTER COLUMN id_recette SET DEFAULT nextval('public.recettes_id_recette_seq'::regclass);
 B   ALTER TABLE public.recettes ALTER COLUMN id_recette DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    49156    regions id_region    DEFAULT     v   ALTER TABLE ONLY public.regions ALTER COLUMN id_region SET DEFAULT nextval('public.regions_id_region_seq'::regclass);
 @   ALTER TABLE public.regions ALTER COLUMN id_region DROP DEFAULT;
       public          postgres    false    248    247    248            �           2604    32781    saad id    DEFAULT     b   ALTER TABLE ONLY public.saad ALTER COLUMN id SET DEFAULT nextval('public.saad_id_seq'::regclass);
 6   ALTER TABLE public.saad ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    32817    salah id    DEFAULT     d   ALTER TABLE ONLY public.salah ALTER COLUMN id SET DEFAULT nextval('public.salah_id_seq'::regclass);
 7   ALTER TABLE public.salah ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    32835    saoud id    DEFAULT     d   ALTER TABLE ONLY public.saoud ALTER COLUMN id SET DEFAULT nextval('public.saoud_id_seq'::regclass);
 7   ALTER TABLE public.saoud ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241    242            �           2604    32790 
   soudais id    DEFAULT     h   ALTER TABLE ONLY public.soudais ALTER COLUMN id SET DEFAULT nextval('public.soudais_id_seq'::regclass);
 9   ALTER TABLE public.soudais ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    81924    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    253    254    254            �           2604    16428 
   userrss id    DEFAULT     h   ALTER TABLE ONLY public.userrss ALTER COLUMN id SET DEFAULT nextval('public.userrss_id_seq'::regclass);
 9   ALTER TABLE public.userrss ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16401    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16410 	   userss id    DEFAULT     f   ALTER TABLE ONLY public.userss ALTER COLUMN id SET DEFAULT nextval('public.userss_id_seq'::regclass);
 8   ALTER TABLE public.userss ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            y          0    32805 
   abdelbaset 
   TABLE DATA           :   COPY public.abdelbaset (id, title, audio_url) FROM stdin;
    public          postgres    false    236   �       }          0    32823    abubaker 
   TABLE DATA           8   COPY public.abubaker (id, title, audio_url) FROM stdin;
    public          postgres    false    240   X�       �          0    81935    article 
   TABLE DATA           X   COPY public.article (art_id, code_art, des_art, couleur, pu_art, qte_stock) FROM stdin;
    public          postgres    false    258   ��       �          0    81928    client 
   TABLE DATA           V   COPY public.client (cl_id, num_cl, nom_cl, prenom_cl, adresse_cl, tel_cl) FROM stdin;
    public          postgres    false    256   !�       �          0    81942    commande 
   TABLE DATA           H   COPY public.commande (com_id, num_com, date_com, client_id) FROM stdin;
    public          postgres    false    260   ��       �          0    81953    commande_article 
   TABLE DATA           C   COPY public.commande_article (commande_id, article_id) FROM stdin;
    public          postgres    false    261   ��       �          0    73729    coursreligion 
   TABLE DATA           ?   COPY public.coursreligion (id, imageurl, videourl) FROM stdin;
    public          postgres    false    252   �       �          0    40961    donation 
   TABLE DATA           �   COPY public.donation (id, firstname, lastname, email, homeaddress, city, state, cardname, expirydate, cardnumber, cvv, donationtotal) FROM stdin;
    public          postgres    false    246   
�       �          0    32841    fares 
   TABLE DATA           5   COPY public.fares (id, title, audio_url) FROM stdin;
    public          postgres    false    244   ��       n          0    24586    ingredients 
   TABLE DATA           ^   COPY public.ingredients (id_ingredient, titre, description, url_video, url_image) FROM stdin;
    public          postgres    false    225   �       q          0    32769    maher 
   TABLE DATA           5   COPY public.maher (id, title, audio_url) FROM stdin;
    public          postgres    false    228   ,�       w          0    32796    michary 
   TABLE DATA           7   COPY public.michary (id, title, audio_url) FROM stdin;
    public          postgres    false    234   ��       �          0    57352    prayer 
   TABLE DATA           �   COPY public.prayer (id, id_region, "يوم", "الهجري", "الميلادي", "الامساك", "الفجر", "الشروق", "الظهر", "العصر", "المغرب", "العشاء") FROM stdin;
    public          postgres    false    250   ��       o          0    24594    recette_ingrédients 
   TABLE DATA           K   COPY public."recette_ingrédients" (id_recette, id_ingredient) FROM stdin;
    public          postgres    false    226   ��       l          0    24577    recettes 
   TABLE DATA           X   COPY public.recettes (id_recette, titre, description, url_image, url_video) FROM stdin;
    public          postgres    false    223   �       �          0    49153    regions 
   TABLE DATA           1   COPY public.regions (id_region, nom) FROM stdin;
    public          postgres    false    248   �       s          0    32778    saad 
   TABLE DATA           4   COPY public.saad (id, title, audio_url) FROM stdin;
    public          postgres    false    230   \�       {          0    32814    salah 
   TABLE DATA           5   COPY public.salah (id, title, audio_url) FROM stdin;
    public          postgres    false    238   ��                 0    32832    saoud 
   TABLE DATA           5   COPY public.saoud (id, title, audio_url) FROM stdin;
    public          postgres    false    242   �       u          0    32787    soudais 
   TABLE DATA           7   COPY public.soudais (id, title, audio_url) FROM stdin;
    public          postgres    false    232   f�       �          0    81921    students 
   TABLE DATA           1   COPY public.students (id, name, age) FROM stdin;
    public          postgres    false    254   �      j          0    16425    userrss 
   TABLE DATA           J   COPY public.userrss (id, name, email, password, role, avatar) FROM stdin;
    public          postgres    false    221   �      f          0    16398    users 
   TABLE DATA           @   COPY public.users (id, name, email, password, role) FROM stdin;
    public          postgres    false    217         h          0    16407    userss 
   TABLE DATA           A   COPY public.userss (id, name, email, password, role) FROM stdin;
    public          postgres    false    219   y      �           0    0    abdelbaset_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.abdelbaset_id_seq', 114, true);
          public          postgres    false    235            �           0    0    abubaker_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.abubaker_id_seq', 114, true);
          public          postgres    false    239            �           0    0    article_art_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.article_art_id_seq', 3, true);
          public          postgres    false    257            �           0    0    client_cl_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.client_cl_id_seq', 2, true);
          public          postgres    false    255            �           0    0    commande_com_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.commande_com_id_seq', 2, true);
          public          postgres    false    259            �           0    0    coursreligion_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.coursreligion_id_seq', 9, true);
          public          postgres    false    251            �           0    0    donation_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.donation_id_seq', 2, true);
          public          postgres    false    245            �           0    0    fares_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.fares_id_seq', 114, true);
          public          postgres    false    243            �           0    0    ingredients_id_ingredient_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.ingredients_id_ingredient_seq', 1, false);
          public          postgres    false    224            �           0    0    maher_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.maher_id_seq', 342, true);
          public          postgres    false    227            �           0    0    michary_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.michary_id_seq', 114, true);
          public          postgres    false    233            �           0    0    prayer_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.prayer_id_seq', 93, true);
          public          postgres    false    249            �           0    0    recettes_id_recette_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.recettes_id_recette_seq', 34, true);
          public          postgres    false    222            �           0    0    regions_id_region_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.regions_id_region_seq', 5, true);
          public          postgres    false    247            �           0    0    saad_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.saad_id_seq', 114, true);
          public          postgres    false    229            �           0    0    salah_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.salah_id_seq', 114, true);
          public          postgres    false    237            �           0    0    saoud_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.saoud_id_seq', 114, true);
          public          postgres    false    241            �           0    0    soudais_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.soudais_id_seq', 113, true);
          public          postgres    false    231            �           0    0    students_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.students_id_seq', 3, true);
          public          postgres    false    253            �           0    0    userrss_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.userrss_id_seq', 1, false);
          public          postgres    false    220            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 57, true);
          public          postgres    false    216            �           0    0    userss_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.userss_id_seq', 1, false);
          public          postgres    false    218            �           2606    32812    abdelbaset abdelbaset_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.abdelbaset
    ADD CONSTRAINT abdelbaset_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.abdelbaset DROP CONSTRAINT abdelbaset_pkey;
       public            postgres    false    236            �           2606    32830    abubaker abubaker_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.abubaker
    ADD CONSTRAINT abubaker_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.abubaker DROP CONSTRAINT abubaker_pkey;
       public            postgres    false    240            �           2606    81940    article article_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (art_id);
 >   ALTER TABLE ONLY public.article DROP CONSTRAINT article_pkey;
       public            postgres    false    258            �           2606    81933    client client_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (cl_id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    256            �           2606    81957 &   commande_article commande_article_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.commande_article
    ADD CONSTRAINT commande_article_pkey PRIMARY KEY (commande_id, article_id);
 P   ALTER TABLE ONLY public.commande_article DROP CONSTRAINT commande_article_pkey;
       public            postgres    false    261    261            �           2606    81947    commande commande_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_pkey PRIMARY KEY (com_id);
 @   ALTER TABLE ONLY public.commande DROP CONSTRAINT commande_pkey;
       public            postgres    false    260            �           2606    73736     coursreligion coursreligion_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.coursreligion
    ADD CONSTRAINT coursreligion_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.coursreligion DROP CONSTRAINT coursreligion_pkey;
       public            postgres    false    252            �           2606    40968    donation donation_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.donation
    ADD CONSTRAINT donation_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.donation DROP CONSTRAINT donation_pkey;
       public            postgres    false    246            �           2606    32848    fares fares_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.fares
    ADD CONSTRAINT fares_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.fares DROP CONSTRAINT fares_pkey;
       public            postgres    false    244            �           2606    24593    ingredients ingredients_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id_ingredient);
 F   ALTER TABLE ONLY public.ingredients DROP CONSTRAINT ingredients_pkey;
       public            postgres    false    225            �           2606    32776    maher maher_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.maher
    ADD CONSTRAINT maher_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.maher DROP CONSTRAINT maher_pkey;
       public            postgres    false    228            �           2606    32803    michary michary_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.michary
    ADD CONSTRAINT michary_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.michary DROP CONSTRAINT michary_pkey;
       public            postgres    false    234            �           2606    57357    prayer prayer_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.prayer
    ADD CONSTRAINT prayer_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.prayer DROP CONSTRAINT prayer_pkey;
       public            postgres    false    250            �           2606    24584    recettes recettes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.recettes
    ADD CONSTRAINT recettes_pkey PRIMARY KEY (id_recette);
 @   ALTER TABLE ONLY public.recettes DROP CONSTRAINT recettes_pkey;
       public            postgres    false    223            �           2606    49158    regions regions_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (id_region);
 >   ALTER TABLE ONLY public.regions DROP CONSTRAINT regions_pkey;
       public            postgres    false    248            �           2606    32785    saad saad_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.saad
    ADD CONSTRAINT saad_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.saad DROP CONSTRAINT saad_pkey;
       public            postgres    false    230            �           2606    32821    salah salah_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.salah
    ADD CONSTRAINT salah_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.salah DROP CONSTRAINT salah_pkey;
       public            postgres    false    238            �           2606    32839    saoud saoud_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.saoud
    ADD CONSTRAINT saoud_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.saoud DROP CONSTRAINT saoud_pkey;
       public            postgres    false    242            �           2606    32794    soudais soudais_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.soudais
    ADD CONSTRAINT soudais_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.soudais DROP CONSTRAINT soudais_pkey;
       public            postgres    false    232            �           2606    81926    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    254            �           2606    16432    userrss userrss_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.userrss
    ADD CONSTRAINT userrss_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.userrss DROP CONSTRAINT userrss_pkey;
       public            postgres    false    221            �           2606    16405    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            �           2606    16414    userss userss_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.userss
    ADD CONSTRAINT userss_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.userss DROP CONSTRAINT userss_pkey;
       public            postgres    false    219            �           2606    81963 1   commande_article commande_article_article_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.commande_article
    ADD CONSTRAINT commande_article_article_id_fkey FOREIGN KEY (article_id) REFERENCES public.article(art_id);
 [   ALTER TABLE ONLY public.commande_article DROP CONSTRAINT commande_article_article_id_fkey;
       public          postgres    false    261    258    4811            �           2606    81958 2   commande_article commande_article_commande_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.commande_article
    ADD CONSTRAINT commande_article_commande_id_fkey FOREIGN KEY (commande_id) REFERENCES public.commande(com_id);
 \   ALTER TABLE ONLY public.commande_article DROP CONSTRAINT commande_article_commande_id_fkey;
       public          postgres    false    4813    261    260            �           2606    81948     commande commande_client_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_client_id_fkey FOREIGN KEY (client_id) REFERENCES public.client(cl_id);
 J   ALTER TABLE ONLY public.commande DROP CONSTRAINT commande_client_id_fkey;
       public          postgres    false    260    256    4809            �           2606    57358    prayer prayer_id_region_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prayer
    ADD CONSTRAINT prayer_id_region_fkey FOREIGN KEY (id_region) REFERENCES public.regions(id_region);
 F   ALTER TABLE ONLY public.prayer DROP CONSTRAINT prayer_id_region_fkey;
       public          postgres    false    250    248    4801            �           2606    24602 <   recette_ingrédients recette_ingrédients_id_ingredient_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."recette_ingrédients"
    ADD CONSTRAINT "recette_ingrédients_id_ingredient_fkey" FOREIGN KEY (id_ingredient) REFERENCES public.ingredients(id_ingredient);
 j   ALTER TABLE ONLY public."recette_ingrédients" DROP CONSTRAINT "recette_ingrédients_id_ingredient_fkey";
       public          postgres    false    225    4779    226            �           2606    24597 9   recette_ingrédients recette_ingrédients_id_recette_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."recette_ingrédients"
    ADD CONSTRAINT "recette_ingrédients_id_recette_fkey" FOREIGN KEY (id_recette) REFERENCES public.recettes(id_recette);
 g   ALTER TABLE ONLY public."recette_ingrédients" DROP CONSTRAINT "recette_ingrédients_id_recette_fkey";
       public          postgres    false    226    4777    223            y   g  x���}n�6��^�bO����س(�h���.�I��m%N�ܢMS{���c{�$�m:�SZehOX�Br~|3�7~�L��z�g�e3�3���ӛ���?�}u||vr��ɩɎ��~���݇�'��߾;�����?���q���Q�Z�ϛ:<J[��'�Gs��<͚�!Z��F��ߕ_�"��B����_�i���V�Tu+��ɷ�����ZJ��J��H�V��Ghh.�HU��SRy�[)�
���榙��P1	TLO�Z�<� �&}=y��d�L��R�5h4�������1��qi��)Q�F1-���/9�l�h{=D�P �F|'t�g�P�F��\�j��P ���lp~-Aj�#�o�k��|�f�!̛z�΀�K<��Ag�E�g3�F�{@t���Nd��m��zO8�:Sm�k�#�� 4��l&$�)�L5����� :S��;Ņ02�N�f���-�yV����LB$����LS�׉����B�>z+�?Kd�
8�����Eo���h�c�-��$����~F��ځw�d�]sr~(�8p����x��c�y|��)�ļO�?���sp��W��	U�>(�5������i��\S��E��;yW�*����H�$�:��	��)nO��1��R����Z�
����<� ]�xL��+��8�)��\��V5����gѯ<k��d:��-�{�fsn-4�[:������ߓn_��Bg���Ewl�l.$��,t�9�ߵ�r��d�3��D��� ���s��'Q#�F���5���L�Hd,�S$��HJ�ZjZ7�~/Ai�)��Ȕഌ�N������V�%x-��.Bn�:�T��fv+��ew��n�*������='�l�)��2�=�
� V˘հ���V��ȝO,X����\^� �ƤrTXPj���3}���j?���?�;߂N��Fu�-��EĂO���Ck�]����)_Wa���΂R�)���qJ��fR�����ԪO�NF������.��2�H�4�wm+nv�b��ح��X\��rj+��B���5�ȭ�������
�V��vU�q��jO�TV�����[�ۥ!Ϭ隻���vLw�*���~����N3�N8�xu�W��!}сT�OR_�������ӌ�C��)�N��\��āM��Tqd:�鴟֒8�t��y�I������R�w��ܵ�2}�N�D�2k;��xLw=em�b���-��.�L�Y��+�u�]\�b��N׼O�)��Lwe�~�n�kN�k�'q��	�d�n��'����)����h/�@W�Mǭ�����.�4�⨜+���&��-��F�y�p�7NB	�I����w�3.A\4���>�F��3WO      }   N  x����r�6���S�	l� 	���M�I�$�۽hKV���HQ�SYR5꓀o���/�8��2bft�~�� 0o��������/��n�~���7�/.>��trr~z���1�>�Ͽ���x����������_N��������_vmx`E�^ĎD����C7��E7cul�S�w������Hы�Jd*_��Ne/S������۔��z�eD$�̄�q�L�&T��be�^�Q2+yX�3��"&�_����L��ɠ`F
����=�5���;���fb-u�GZ��;��P�k���F+M|�׬h5U�:4��ꝴ�:�X5
��Rf��@5#R����*(�G��}wM�:���A�/�������+�e�jn#G��M� 洿� 6�6<��5��:��	^���\����/��]�NS���������� ���փ��R����rm��I*��o��;��OX�
Y�k5��%~�C6�N{+�,u^�:`׎�݈�޲��v�m��4���j���k��V��.���X�jǬ��Z0j5���[Y�Y����V� ��yU�]�!��,4�����Ϊ��B���E�]��!�*O�yL�t:�߅2��
0ZD�Ur@��7�Z�W��|�tT��B{�$lOX�Zh^�d��3�-ǉ�%[��R'����_�I�E	jKM�>a�-�l������kC	bK��(�M��u��/Ak�S�\�n%�ԗ��������B,�%�-5�Ӿ�D��-cn����*ӣ��HI���T ���h7�@n����T��*ʱ�.�L��d+0\i�]��H���+��^>�#��@�n8�IٳT��YvvO�(��,tX�[�������]Dp8@�Gv����煰caWz]L/K��.ށ='�2�u�weM��i_p ���W�"�b�������ḍ���+bV�nB���N�;KH��&�XH�;����cz26�נ�֮��.��n�zנ�����G��I�(�c����)��5H���
5����As��wv��C�`��,��Ï$�?8��Ybw�pR��jú�MH�5H�5ɓ�S�7�$a�'�F���V�a{�ÍbX����ـ�F����,�֦���vr+�bM�*���h^g,�hm�ﶲ��|4`�Ѭ.ûФ6åB|����r��q=��;a�%���fgџ�c2���ɴ�����9;�f�"3����w��p��q��RÅC����h��1�����~K�e%��,��z7`��1��W�����K�o��h`���;K(��d�bq^ֿ��]�����yxh^�����PC��y�33��]N�pa�����ѿ&1�L      �   [   x�˱
� F���#W-±����AH0��O��s$Vf��q�/[p�c03��
���)�L>c��tW�V[K��6�-�PL� ��!_      �   }   x�3�t600�t)-��+��JM��442V*MU�ILK�L-)I�QH,�,�4 ʘ���[Xr��q�&�d恨�TN���cYjPkJ�BN�B���I9���@#|*��8,-��LM���b���� �p#�      �   -   x�3�t��500�4202�50�5��4�2���E�8��b���� ��t      �      x�3�4�2�4�2�4bC�=... X�      �   �  x�ŔY��8�������L R4��$$�S+��!�t����~ҙ���Fi�ZZY*����}�@�+&$/; `�&8�8�%���)���q?B .�p�#�y��,�.��:�=d��ٳ���o�B.r��#}���Ql�>ՑnQ��|*��4�M��������ʑ����%�F��a��ruV��o<9wIWx�d�?��ց��N)�O5С�r��dCķ&X����G�^>6����X2ҟܴUH��bQ�>U�ܽ��PM�W�E2�-���Q�}(p��?ɓ����P��'x��g[XB�lb�sS�$v�kɛ3{�d�,�^�6|y����������Q� �<:-��b8����E[ZQ��`gj%Z��>A�*ךc�T�V��u�v���c-$��I�B��(���p�J�/�4��z>6��u��%:M�E�zk�ϋ��Z����[q[��퇵.zi�g~��<�u7g9NZv�N�BD��59����CI�b;l~[�I�3���6�MÙ)��e����SX�#��4$��,�R�T�1�A	D^� /�'K}���h���diO�r�M��$�l2�_�Ɗʇ�ǡi�s�{�,���$ݙ]-{s�x�>���h5��r!;������_e���Jz�ԭ;��-��n���c�=j�7�Ex��.�L�n�)�nw��õC��(L�|�pp�������������R�%��Xe����
2C      �   �   x�U�;� ��� �wI�&��4�Z�vD1�s�,�y�l�3
��#��6Bq$��Ǻ׎b����qa��c8}!m�l�ŠT���k�Z+Y(@I)�d��:�SX�<�t��\�~�d�)k�Óz��T���4JV�����z�@K�s�!c_J�E�      �   C  x���Mr�6�ףS�	l� "gIUjNe����d/ڒ�"qi4��,)*�$�m���1�W.�DW�Dx�h�wq�-�&~~��u7�˸����./?]|szzqv���ys��'����>�|<�<�����Eaҟ'�[������I���I��]���n&O�nΩ�^�Ro3�[y��8���pJb&�g�m\/R�����ی�{�ED"�Ȕ�H��$Ÿ��D�?O�Y�Ê]��K����[��P�M��f4�F�<s��)��wy�VрNc�
l$�@��y/��"y#s�0��(:e�>�� 2M�m�G,���^6ن�f\fw%�A�P���+�����x�n��%h,�W6����W��S;�ē.K����L�����t��q�Nd��7�����t��8w�<vUAh鳷�������t�q���,�geW��"�9Pj�<[�sV��9�MRF#�bA�Քn�u،h����NX�Ȯ8pjǜn�E��`Ԏ��ɸ��g2Y0i�k�S&O��.�K�G���%y&� �1������W�2oV��n<(�4������i��JS��D��;�Pc*����D�
$V:�?	_�)nOU���L��-]!V ��o��|�ʦ����i:@p
`��l�U�7*���fK�t ��l����M�͹8�4�:�:��t>�����t:���>w�H��IL�|;��t���߭�r�o2�����,Q��t��i:g�^{5r.`����u�u�g"s��"1�fR��ZӺ'�{JkM�FG��uVw�[��ml�Y��Z��:���H0[kf�Y�.Pgv���*j0[��s��6�����3�p
`��YM���0h����!���ăU?���L��R}N*G��>?��'>��SɎ���=���lԦ�"J\D<����{���5�J��u�v��<(���9]�{P�C���z����6cR�2�.o@h��t�]��ݒn@j�I���l��c8����U��B\�P�hWJ�^niOl@n�}u�Ο�4��������6_���p�3tBu+4�]s7����N�\^�>ѯ��R`6hfw�	G} �A�*?��/��I�o�d�x04��Tir
�3h:��>	`3h6U�d������ .��r�ނ�2��t���ڣ�h�R�>�� d�UY�=sj>f�V2��U1�tP��WK�Ь㞕���.nR1���м/�)���p�d�q���;N`h�y�_
�d�n�[%S������_h/�BW����������K�XqTΕ���Ɋ���VT�μ^5�&���$�z�d�{�%� �p����d2�|�6�      n      x������ � �      q   N  x���MR#G���)�����Y�̂��1f��j`nac,��$+4'������p�5�G"������WY�֦w���ʫ��}����4��2���>��~��������_�N��������ɇ���ӃO>�L&��yϺ�k����@�X���������g�4�/H!!��u��eb��**N��D��HO+@ǫŹ����ی�i�����ՙ�:-t�z<%��9���*��<,��IP������U��`&PA�_ʗG�}��'�G ���Z��D���cfoeKd/e<$%�zE�$�]^� ��*�Y:h���[�����zEk&�������Qް��ԏ(����{ۂP�~� ���_V�6Z�.� V��\��~&pź���r��@j�֠=v*��xǷ 6h�]�x#���6�jN3�|b�&�˛�!5@l�޺���	3WyI*���7I�I��c����������&�Y|��K�m���H<I���m��>��ސ��f��P4mY��m�x�a�<N���R����͘U�QF��S�VRt6c:�s <�lҫHlJB*��V��.�o�
�l5�O�ATȝʃ�Vy�d��kt���2�	ed�y0�V���_qz�چW��|��ȃ�V{�SH��j^�ʈ�f�q��q�Ze�=<~=��e ��X���9���Յ�X�MJQ'����R ���"߱[M@D]Tt���5����D�G]_��N�
2���ڪ��D�L���:fCR?�;�A��`M�0R F=�$�D�M����k.�M�\a��RvSU�\��?�0n�p�&�,[�o�8N��|��4�8i/�;o85�8��xVc�(NUi\tH�j~K^����"�\��#y�j�o�� DnJ��nR�KR�Z(��'���:�hߕ-:c}��P�ǹ��E�EF����޾\��k�@�bV�>�,b�Ƕ��&��?4�m�1�2q���$(����H��C��}����L|w�F�{;\%nK&�J���o�}��Sd�#H6�}�)�;�9#h6����:D�F�<�=�l~p�+�DR"(6���Kk�`A��$O�K�����X���������2��a��f�3�^��H-D�&�[��]���� �V���'�W�y-���&�j��v���|$�j5��2��Rm}I��au@�մ��?i�	��zn�Pw��A��U=7��r�'�٠��fw�7�حn��
�gz��۔�D�f�7�JR"�&��n�m�}
0h�9�f+;��~u���x�$�����x/�8���fWܖ�l�v��U͐����~4h�9�tZX�2h�9_7����a�p;�����4U��      w   @  x���Mr�6�ףS�	l� 	"g�fNe����d/ڒ�"qi4��,)*�I�ۤ�'tc��4%��[ ��׍�y��"l���a�_�Ӱ��>�������w��g翞��'?}�?�r����ǳ��?\�����o]�U���A98�#���ñ��Ӳ�3>��R�1[y����Vfb�Wx�ޣ\4j#�dG�6c\4��]���Sƅ\��*bT�k���ǉW.���v�L���_�p֦��Y�ȗg�0���/��w$��|#�O�:(4c�e�b�nd E�$�C�0���4Y*<R�7@�h�%�6d20h���� hFF-`w��#�¡�!,K�W�o��%߾L��Q"�X���fJ�g?�$^PzX��2���؃�R��T�Б�\��R�j��%h,]�3��$���.�Þ����£��J�X�5�D�B�D�!ڂK;VDy�X��HXi5�[����T��2�	�/��L�1�[Q�;�<��C�r�h� �6�@�"��V�}�ƱIb|�A;f�aς=��{�Z�؃�jL��a݌u�*�f���`�A\���Ň�7���4q/�I<0U�J=��@!��̛
�U�?H�AL�T`���B����U��ro��|������il�{pXi���́
,�㎰#�jPX�����f��̯נ��4�jX��Z��yx���������u:�h7���ֺ+\����c���ZóD�!���&q6dԳ�������`�)�*d�Uf�l4�{*��h"�'2�l�>Q�/�"lq�b6���X+�á|��F�y�ϒ��&���J�!��7�ѽ�,�<{��d�b��؃�&�2�S��22� A���n\�c��(��.�����H��\^�n݁E�uR�\�B��N�[�X+��f��$n/� 'cQ�ncVPuˁH����]���g�K风�*@e;��(+`��4�Z%�����-�T����a�u���x�mN�A�r*�ĵ��VK�BzێT���Z/W�DHeyF[���@h��Y��
ӡ�iҨG��n�����&tJN�Z����z�|�ރO���	�lzŦ���σJ�O9�H����G�y��ސ��^��&���C�9�1zP�Nv��L�=���U\?E�O�������uޭ1<m-yL���d��f��ZL��1��K��xle�դ+Sh.�a�9H��B���p/��E6��rˤ�S��>�pl�1�i^�5|)|SݵI�1��G�6i^h���,�]Ib���rN���kM�(%����n�d�<<-13�W4��F��Ǽ�ј��p�H�I4ߟL&��A�w      �     x���M��6���]�" $�,9N�oᕓ8?��*7�M�(�Q\ө�Y�k�5��z5��v�������������}��ӻ(tӺ�-��n���&7��e˷���;��~�xP�J%M��;������N�APE:��B�((�A�������mK��@P�Bz~|h��u�AP!N�B	v����m��ް�����e��~��אǓ���ז�������}X���k[�1���2�1R�����dȓA����A �����ҞL�p����>=8��]m�p�ؓC�HhA���H)#���M`�`�Z��g�42��h�]����H�j 9���OF>S?0������Jg�4�ɸ���F�NPt?}����Ȏ�22*]2N�DAʵ��`YeH��4�Ld]k��4<2���]Q��8�sJKs�r1<2˸���81
�^��2��.�0�Ό
�g�<�*�ꎁ���>g E$0��Hj���f�&�D �<�a>��~:��0;S,˱,����(G���ie���@L���N�38�˦�qr`�����t;q�(�m6�6H~(��ub(5p��A�C�����0=	���p���yƫJm������uP����a��4M�8H�R$J�1
�r��㴄�\%Z����i��2�v�/��vD��:�F$��'ڰ�
E�w��F���B��R�!�P��g��J�d��)���+Eҳ^�H�8��J��J��R��4��^�+�Ƌaw�P:�W
�a�P��W
M����+��J�6�W
ͳa��2vW
��aw���0�FW��R�r�֒�r��t@^��c//T
���Ja�@��?�@��RXO�M�"ǫZw�ȴR��Wj��"���_)r���+Eֳ]��v��9/���R���.�+E���JQ�b�])
��+E��a�(�j�_)�.���R[�W��g��JQ�l�_)J��+E��aw���0������ʉ�R��>��/=�ژ      o      x������ � �      l   �
  x��Y[s�~�_1/ڒ*sW�RȲ]��ťx�R�j�A�kݞ,	i	�/���-'A�u	B��*�����5�$眞K0Y��eFL��ӧ��;M.1:�:��Q�=�3���%��Fm�;���{&d$ɽF��{�ėn�����/0���5,<K	@p;j�F��;j��X@v�GXp$x��i�Q
���pt�L?��`3x¨;t�qw�8��<�hx�G��/����}��ꉍCj�du�+a�a/�"�� '���BAQ�[��(���tb�q��Q��w�j}-]���VU4_?�^r5]�;��]6+F���4ׂE����]�崊&-�6�������<Z|��f�[�|��p�VՌGk���t��F�a�N �۰��2©�F� ����V�Et�i�I"탹h�9�� �]w����NF]F�9q���
�TQ��U=<�4����s`{,��Y�	3u߽�ύ3D/�L�@<>�n>2�ROb7�@7�/����`�z��X�t����X_�EERd1+���i)5������)�,�g�=)��t��2��h��c/�����y����\q�-�cX,�}&w`[˜�z@�^���7��������w�w���=���� +�� �p��w}0�bZ�zf�}��`����4sc5� ���G�?�Y,%��O�D��JP%	����:��t���+��I�߁��E=�·�9h=�0N�ŝ
uԏKa5���귿:���òio8V󫭇�d6�۶!�a�����i�\i�O�H�}★%S��`�7f^F���n�$���_'�{�m��� ��Y��d=$�0|����$<�[7I�X��4� �%fq�Ϯ %w���'����a�	.��W,_�D��	a�h6�Ci�����|�t?��y���'Ε,c���;Ϟ�~C5��[]��Ξ��H*RMA�>e^~�������¼���fɍ�1�FGsѢ���pD X�=MC���b�m	�9���eXt؟#��
�������j1+G��A�CYӞhD�9As��G&��?�<2��:��ͪ��1�Lǭ��t�ߛ%���]<P�N1�0M�}�߁$�t��$��1��a�Gz� ;t&�E�e�^/Z�f9m���fݨ�)6�-ǲ�LV�Kb�ԋ��Ϛ�JQ��GY;���������Td���~�I�4ȟ�ٕ�B9<D�,^ihX��X�����!���+U +|B?�7V�@a� ܮ4"H<T�X�(����@��- >S�b��d�-fFL���@��j�\��IA1Ez�{���Y !X�lCE7.'�f׳OR�����/,o���$��'X�Q���0/����ez`���4 {_���0�h9�̏2�N�!�~S4aw�J��׈�=ɂk\z�wV�Z6�wXD�lH��3��E�,p�3�.C�?�>�u�&��h�>�0�P;�DlIH�6F���}y��Z�YE��.5K��d�,U��-ꚞ�LYS]���!fuiGӕ�ۜ$�c��L�e�e~G�����U_�Sh�9�?z>���/�� �A��2XUX���^kIEM�����'�_�����A�����A�"�&oB��l\�a��u����-O�悃�NT(Q0�z��hn<�z��L`!%`�_Ga
��Ɂ�K��]m��i�Pp�-�լYF�e���|Jʉ�i�����+e=�r���#'e��S��{�qC��]Y^^ h�%P*l��1�00��4���oH!�ɼ���� �Q����b�v#��.�wb&X����X�2��ʽ#d�A�b���5��b�](���t֙L��s`�:�K��,��̿H��/L����Ix���O���Fv�C��� ���(�\�x	�)�N�$o�u���A��K_�||�7��C-�<�w���������X_�B�p��J.A ��ồ)�ț�����#�=\�����W��d�<V�[:�9@)�3�)�&%���n�h�lA���`mC��Tx��������?,3媑�˦�[��f�Ѧ\�Nv�q~���cy��liw�7�o�����vUO*z�;\��g�j���k��M�PPGe��=�5�&�6۩Ǫ�?�9	Fϙ��~�������
l��q�q�^���`Lr��k	9��(cWP�u�n�/}��5���^7[ƞ�<����<�)��tgCp�ʻ�����X�}���)�����D "��m	�ϘqM(���۰Z�S�U��7 ]k�#��V�Uu�U�^_�M�*m8V��Z뛆(��(gռ&�r
���{�syu����J�������F�^}���'%D�W��V@�`�K��{��p��H�̂/�~*EW�5<�I���~@{}f%���`v7j�f��⬷�E[�J��(W�u0�����J�����8��‹^������21](p���I�?��Us�\5SKIU&K������Dw)?�XYE8�`��wGp?S$} ����r�xV�S\~����hk-˸�Kxq����2���/�a�K�J���h��[Ų��ms�R���)�D�f֭ƌ"���^m8��6jF�^�_-��{/�y+���P�'�P�嫐�kn S#=.�	r,�e�5�?�y��V)2Z	@ ![�eW��0�q?U���d���}�����
���¦�Ā?Z����}#���Ef������?�I)I3�j*�
zY�J�h�3�JE�ג�ϖ���/Yy�y�hk�Q��ů��;��N&����d�      �   9   x�3�,ɯJ--�2��KM+I�2�,I�M-�J�2��H��M�2�LIOM�H����� w.      s   G  x����n�6���O�O���$�}��7��&i�Ď��h��^o~��^�}�m:�QZe��+ O(��3áy��E؄�oò��a��>|~�������NN=9uG>ٟ9����Ǔ���?~��(L��|-V}8�2Iؑ����p�g��眊M*�z�yx�������D�$f"�WxdߦN"�Z���A��8�&�8-"qE��H���gc�_r"m�Jd-+vE|�0���u����ƛ��h��|y�FPS��������ƪ�H,��L3F�VV/F�J��!a �Qt�F�Nd�&�"�$X��l����4
��BV��	�4#*�W�k	"��a�_QcK�X�ol�UM�B9�vN�'7\�6s�?��l��%�,3���,�oN%"��%�,�qn�y쪂��eo3#/Ag����.�8�Yj�<�,.��EXs:���y$���ڱsʛČFFłR�)}�a3��v�a�I"��T��s�,.zÍ�v�h*t�$�t�f�E��e��ծ���<[�
��c.9-x��ǧ虜H��$��fύ��ae^��.��xPXi
����� ����)<��w���T^);��QH�t��Sܞ��c�����;�B�@f�^��{�p�M&+��x���f��LU�7*�Y�+̎Y��Zg��oR6�fP��Z���h>k����t�t�:�w�>���fs� ��Af��̅��$�s|� �֞y%*�5�5����E���sF�캂Ϧ�3���N�s3i@k�iݑ�����T�#Ӏ�&�;�-�w�6��l�k��ts��I�
�m4�{�,Ih�3�v���O�mt�9�gN�6Y�U8�����GF�������G�|�����x����.'��R����蓀�N��d�����t:}6�bn%."|:��-�[�M��O��w��(u��9]�;P�|���z�����cR2�.o�g�V�麿�&C��V�z��l��e8 �����V�bC\�[`�j[L�`�hSl�n��u��	� ���Ua�l�o4Ceu��Z��͖.�[`�jl�t��^�W�A)xت��n�{^��U~�Ic� ���W)e�xx0�5��Xjr
��k:��>�`�k6#U�dzm��$�.��r߂����x���Ҥ�hR�L��D`2٪,SӜ���L�mU�9���6�ݒ)4���c%��}�뀫XM��3tI��:3\,�b܃��)u�	��"/ �B=Y���Z�y�~��e���K/�V�g3pkt�:�����&V�se�r�d�" <�ʊ�ԙ��&}�$���d^.�L~���n��M&�T�6'      {   R  x����n�6�?�O�'HDQ�=ˀaVti��Vb��[lYf�͟9�gxOB��.u�M��C),>�x��4o��[�����/��n�~���7�..>|�������/g���O�ϟο�����O������4�L��$-�W]X���#�߻������i��Y����~+o�+R�"���ğ����������h��i��T���2"ff�ʸ^��G*�]�2�/&��Y�Ê���1��*�M�e"L3R��O����_�@��4 �X5�=
�jƸ��<��^�xXD�5�Xi�{�a5@����y��0@�hV��6	h��Q�v�2+t} ���$eVAi>���k��9��W���$�F>�vX�.� Vs9��L`A�kb��`��Zs��S�N���9�͵���������E�4���Al��m���Y�ko=�H.���_�J �fڛ��,��ڱ����U����V��_��Q;d�����R��v�ݭ��-�}pkG��a�@�oA��ƫ��Ypj���C
����v�*˨�V3���� �Ř��w`
�Y�W�؇�*��B��ݯ�
�,4���QTؕ�2��T�Ǆ^+@g�3����E(c�� �E[%�	y� ��{��>���
pZhO���	�^�k��z� ��8���wK�Z�$���M��Q�����V�̖:��=�6� ��)�Mp�r�di^7�����:�.��Vr K}	ZK���I*�[��R;��I����2�v��0��2=�t�T�M�+M�v�
�V�\a.�Jح�+�"�$��I�Õv�uX�$m�:���gI{D5�h�1){�
W:����� �U�e��~���Зt�A��(����u�v,�*�@���e)q ��;��]��N�������:��j�Z$Zlu�u��;��s3pE���m�"z}t �ir�	)߁\�DK�uǔр�zL�QF������u�ݥ��]��֚޻���:�U�uL�A�w*>�ּɵv_�F2x���5h�����n�v�,ך�~v�����+g�2K쮢Nj�QmX�v	I�ɵ&y�p*X��F�$�����h�q�9�	7l/4`�Q˿�=�����ߒ���4����Bne5@l��]'�O^�k��������VV���6��Ux��f�T�O�C��+h\�}�N�j�� e��Y�g���p=f2m�b�ak�N���L��=�=/2�8d:B\�(¿�p�Eg�|?��~�d�㰶��X���!���Rz����v�d��"�FåC�=��[)#X6:�����5��X���o�rWf� ��xF��+3}g&�Юe^��L|ǻd�3\�}{2�L�g�          A  x���Mr7���)|i0�r�l�P�7q9��=G"��������dX�I0�Ic��^�r��Q1�ׯ�.l�E؄/�ò��a��1|y��������g翞����?�_>���������Ň��Ea�_'�[����@)���)��_��~&O�~N��A�R�2[y��)�jP���L����W��F-Ɲ��(�f�F3h8�!
q5�����I��#nnMi���WkyX���S�/�����)�pS`���/��``iʷ�-�0i�z������ь�����[x#3�P0@�(&%4 ����⑃� F�i���ڰ�e@�Q8�W��n E3b1z���q�3����ND��[v�d��%e#�ᠱ��7���$��G�`��L2>P��9���X�.�d�Mr�#\�.{�v	&K�d�aO	��R��Q�p%l,����F#�J�mA����F�[�~X�i5�[12�ٔ��[�	�/��+Jt�1�[q�;j0ȴ#2�2���m��m�ق�R$Z����c!E��F;���ЂB�)|��H	��j�߷a���
�U�ͺ�c�@{�fo��(	�Wi�^HP�J���E����
�U:S?_%*�*PXe�d�-�*�X�7��Q>T�R��J��4�(Yi"�����
T��ʱc�����o��͐��߯�e��<�����������z&k��;6��t��Dn"�5x�u����;���5x��?>�g���L֚��^�"��d�9�;rIAeS�y�L$:ds�y4`�ь� o�f����=i@g�Փ�
b3YQ6���ι�9D� N�6�ԃ|�\�7�ܭ�3v1�cBR]S��Q� �MVSFJ �69�1อ�.c46 �:o8��Y=�������hp`��g���w��i��r�����'�.���J���G[�\��ʨ���!\Fs`�i6�l������Rj�#=�َ�<��Z���v�u%�u�mm>[����;�(�d�i�sz���P�ۂ�V;��!Up�`^[���x�䂾���uXr`��N�RV�*��Թԭ˘Ovl!݂�V�:e�f-(��T���F��T�I�	��zE����LЃO��E�H�B��^���%$% &�fr�Ɔ�^a�x���k��$Px��5���
�>���:>��k']y
`�\#㓎�Vd9���٘t�c
m����K��I�>�ЄÞTH=�B'��X-��Z�E��$ͤ;S��G�p��Q�S���3�RP�*q�n|L�7��6{�}�
!z.�V���9���]�hN�=)6��?&K��i�����y���@BgA����7�K*�t	���d2�7��      u   5  x���]r�6���Ud6A�ٵ�%3�L_�Im��-[�.ZW������F]	��^��)}��3��gp�~8�0��v������/��a�~���w?^]}����������cN�d�����ӏ�Wg�?\�E��I�V�/�>�P
eT�#�?����8L�m1�R"6�Tj(�~+���R��B����/�B�������Q�M)�&j8�!
a6&���mޏ���h�F�4V�$g��
��_b�f!(LsS��5��//Tc`iʷ�-/�0i��Z���>x4c �2q!�w�
$�bR��_S��4ٲx� 0��h粮���2��(�k�	.@ьX�@O#8,G��p�4-�`i�����=;e2I�H�9h,m�MSY�3�#K0Yf&^(�Xj��H,z֩K0Yj�����	��ˆ2��.�d������)0Yj<J����_Q2`��h$���ڱK�0B���a���ln�dȴgS�n� �o$�KJt�1�[q��1ȴ#2cs���`�6�l�e)�v�}�ա��D@��HQhA��n�?R���o�:ռ}�y3��P'P��^��ۅ��7J�U���	*�T�vT�(�?�����ԏB�A�ZF(���Q�uϖ~x�ܛ\�$�n�@b�}qv� ��4��fa�C*�q��3k�X�|����:�k��kpYk.l��Ae�3���l�����=��봝�D��5x�u�8��{���5x��?>���d&k��4.��z2��9���)t?�'�:$�T?0�hF��o�f���ؘ4����I�،@FV�(m�s�B�"���&� ��웴���N1�mBR]SN�V� �MVSJ �69�a�q��.c4@�+��p ԍ�z�$P	��O��I������:��w��i��pK݁I�w:}�!"D�J����X���t�Q)_�a�p́M�ټe+l6]�	,��:�� ��ϣ􁪵[p�j�\��X�\h[��j>��p�V	%NۜӃ8�DL�
oV[��B�T�=k�-xm��.�F�[�-hm5�qF�^���g�23T9ߦ�K}t�Ɏ-�[��jV'�YJ;�+_�]#Ё�N��>(�;P�)J��=g������)T�Ht@��r;�v�:�d`�©N��?{�q*�`�4��0�.��k7�É$����X���S��B'�>�v��3��F�����*5�&]��3ӞTH'�vл��ɱ��B��	�LL����x���;�}: /4����H��&���3;"��I��Ev̎��/"�zm��z2�_on�*tK��y��1ҹ�Es:f^oq�v�	iA��G_Ų�1r��p�?=99�p��_      �   C   x�3��J�KU��,��42�2���L�HL�Q����+���42�2�t��̩TpI,�,�4������ �M0      j      x������ � �      f   N  x�e͹r�P @���)��� �,"����)(�,���'�$��[�K.*�
��.E���H8#������*�W7��2�m��7E���G.к��ZI���#X�#'l���8�G:X�%����\´�8����YBn�h>%\�W��P�Xp�eKk'q�����J
���@�D�Eh��K~�զ*�!J���H�Q��-�#������)1��������`���d�l��Jᳯv�'��i�u��QR�'.ۜ�hA-C��7���&yָ�I���_{`	��G_�{�U�n��$n()w�9���8BF?���1� ,��=E��NG�7?�� �'b�       h      x������ � �     