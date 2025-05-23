PGDMP  $                    }            organica    16.4    16.4 D    9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            <           1262    17647    organica    DATABASE     �   CREATE DATABASE organica WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Vietnamese_Vietnam.1258';
    DROP DATABASE organica;
                postgres    false            �            1259    20350    cart    TABLE     k   CREATE TABLE public.cart (
    id integer NOT NULL,
    total_amount real NOT NULL,
    user_id integer
);
    DROP TABLE public.cart;
       public         heap    postgres    false            �            1259    20359    cart_detalis    TABLE     �   CREATE TABLE public.cart_detalis (
    amount integer NOT NULL,
    cart_detalis_id integer NOT NULL,
    cart_id integer,
    products_product_id integer,
    quantity integer NOT NULL
);
     DROP TABLE public.cart_detalis;
       public         heap    postgres    false            �            1259    20358     cart_detalis_cart_detalis_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_detalis_cart_detalis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.cart_detalis_cart_detalis_id_seq;
       public          postgres    false    218            =           0    0     cart_detalis_cart_detalis_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.cart_detalis_cart_detalis_id_seq OWNED BY public.cart_detalis.cart_detalis_id;
          public          postgres    false    217            �            1259    20349    cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.cart_id_seq;
       public          postgres    false    216            >           0    0    cart_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.cart_id_seq OWNED BY public.cart.id;
          public          postgres    false    215            �            1259    20366    category    TABLE     c   CREATE TABLE public.category (
    id bigint NOT NULL,
    category_name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    20365    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    220            ?           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    219            �            1259    20373    product    TABLE     �   CREATE TABLE public.product (
    price real,
    product_id bigint NOT NULL,
    description text,
    img_link text,
    product_brand text,
    product_name text
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    20381    product_category    TABLE     j   CREATE TABLE public.product_category (
    category_id bigint NOT NULL,
    product_id bigint NOT NULL
);
 $   DROP TABLE public.product_category;
       public         heap    postgres    false            �            1259    20372    product_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public          postgres    false    222            @           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;
          public          postgres    false    221            �            1259    20385    purchase    TABLE     �   CREATE TABLE public.purchase (
    product_product_id integer,
    purchase_id integer NOT NULL,
    quantity integer NOT NULL,
    user_user_id integer,
    purchase_date timestamp(6) without time zone
);
    DROP TABLE public.purchase;
       public         heap    postgres    false            �            1259    20384    purchase_purchase_id_seq    SEQUENCE     �   CREATE SEQUENCE public.purchase_purchase_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.purchase_purchase_id_seq;
       public          postgres    false    225            A           0    0    purchase_purchase_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.purchase_purchase_id_seq OWNED BY public.purchase.purchase_id;
          public          postgres    false    224            �            1259    20392    role    TABLE     W   CREATE TABLE public.role (
    id integer NOT NULL,
    role character varying(255)
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    20391    role_id_seq    SEQUENCE     �   CREATE SEQUENCE public.role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.role_id_seq;
       public          postgres    false    227            B           0    0    role_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.role_id_seq OWNED BY public.role.id;
          public          postgres    false    226            �            1259    20399    users    TABLE       CREATE TABLE public.users (
    enabled boolean NOT NULL,
    user_id integer NOT NULL,
    date timestamp(6) without time zone,
    contact character varying(255),
    email character varying(255),
    password character varying(255),
    username character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    20407 
   users_role    TABLE     d   CREATE TABLE public.users_role (
    role_id integer NOT NULL,
    user_user_id integer NOT NULL
);
    DROP TABLE public.users_role;
       public         heap    postgres    false            �            1259    20398    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    229            C           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    228            v           2604    20353    cart id    DEFAULT     b   ALTER TABLE ONLY public.cart ALTER COLUMN id SET DEFAULT nextval('public.cart_id_seq'::regclass);
 6   ALTER TABLE public.cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            w           2604    20362    cart_detalis cart_detalis_id    DEFAULT     �   ALTER TABLE ONLY public.cart_detalis ALTER COLUMN cart_detalis_id SET DEFAULT nextval('public.cart_detalis_cart_detalis_id_seq'::regclass);
 K   ALTER TABLE public.cart_detalis ALTER COLUMN cart_detalis_id DROP DEFAULT;
       public          postgres    false    217    218    218            x           2604    20495    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220            y           2604    20458    product product_id    DEFAULT     x   ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    221    222    222            z           2604    20388    purchase purchase_id    DEFAULT     |   ALTER TABLE ONLY public.purchase ALTER COLUMN purchase_id SET DEFAULT nextval('public.purchase_purchase_id_seq'::regclass);
 C   ALTER TABLE public.purchase ALTER COLUMN purchase_id DROP DEFAULT;
       public          postgres    false    224    225    225            {           2604    20395    role id    DEFAULT     b   ALTER TABLE ONLY public.role ALTER COLUMN id SET DEFAULT nextval('public.role_id_seq'::regclass);
 6   ALTER TABLE public.role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            |           2604    20402    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    228    229    229            (          0    20350    cart 
   TABLE DATA           9   COPY public.cart (id, total_amount, user_id) FROM stdin;
    public          postgres    false    216   �M       *          0    20359    cart_detalis 
   TABLE DATA           g   COPY public.cart_detalis (amount, cart_detalis_id, cart_id, products_product_id, quantity) FROM stdin;
    public          postgres    false    218   �M       ,          0    20366    category 
   TABLE DATA           5   COPY public.category (id, category_name) FROM stdin;
    public          postgres    false    220   �M       .          0    20373    product 
   TABLE DATA           h   COPY public.product (price, product_id, description, img_link, product_brand, product_name) FROM stdin;
    public          postgres    false    222   	N       /          0    20381    product_category 
   TABLE DATA           C   COPY public.product_category (category_id, product_id) FROM stdin;
    public          postgres    false    223   &N       1          0    20385    purchase 
   TABLE DATA           j   COPY public.purchase (product_product_id, purchase_id, quantity, user_user_id, purchase_date) FROM stdin;
    public          postgres    false    225   CN       3          0    20392    role 
   TABLE DATA           (   COPY public.role (id, role) FROM stdin;
    public          postgres    false    227   `N       5          0    20399    users 
   TABLE DATA           [   COPY public.users (enabled, user_id, date, contact, email, password, username) FROM stdin;
    public          postgres    false    229   }N       6          0    20407 
   users_role 
   TABLE DATA           ;   COPY public.users_role (role_id, user_user_id) FROM stdin;
    public          postgres    false    230   �N       D           0    0     cart_detalis_cart_detalis_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.cart_detalis_cart_detalis_id_seq', 1, false);
          public          postgres    false    217            E           0    0    cart_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.cart_id_seq', 1, false);
          public          postgres    false    215            F           0    0    category_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.category_id_seq', 1, false);
          public          postgres    false    219            G           0    0    product_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_product_id_seq', 1, false);
          public          postgres    false    221            H           0    0    purchase_purchase_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.purchase_purchase_id_seq', 1, false);
          public          postgres    false    224            I           0    0    role_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.role_id_seq', 1, false);
          public          postgres    false    226            J           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);
          public          postgres    false    228            �           2606    20364    cart_detalis cart_detalis_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.cart_detalis
    ADD CONSTRAINT cart_detalis_pkey PRIMARY KEY (cart_detalis_id);
 H   ALTER TABLE ONLY public.cart_detalis DROP CONSTRAINT cart_detalis_pkey;
       public            postgres    false    218            ~           2606    20355    cart cart_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    216            �           2606    20357    cart cart_user_id_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_user_id_key UNIQUE (user_id);
 ?   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_user_id_key;
       public            postgres    false    216            �           2606    20497    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    220            �           2606    20460    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    222            �           2606    20390    purchase purchase_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT purchase_pkey PRIMARY KEY (purchase_id);
 @   ALTER TABLE ONLY public.purchase DROP CONSTRAINT purchase_pkey;
       public            postgres    false    225            �           2606    20397    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    227            �           2606    20406    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    229            �           2606    20411 !   users_role users_role_role_id_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.users_role
    ADD CONSTRAINT users_role_role_id_key UNIQUE (role_id);
 K   ALTER TABLE ONLY public.users_role DROP CONSTRAINT users_role_role_id_key;
       public            postgres    false    230            �           2606    20487 ,   product_category fk2k3smhbruedlcrvu6clued06x    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT fk2k3smhbruedlcrvu6clued06x FOREIGN KEY (product_id) REFERENCES public.product(product_id);
 V   ALTER TABLE ONLY public.product_category DROP CONSTRAINT fk2k3smhbruedlcrvu6clued06x;
       public          postgres    false    223    4742    222            �           2606    20447 &   users_role fk3qjq7qsiigxa82jgk0i0wuq3g    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_role
    ADD CONSTRAINT fk3qjq7qsiigxa82jgk0i0wuq3g FOREIGN KEY (role_id) REFERENCES public.role(id);
 P   ALTER TABLE ONLY public.users_role DROP CONSTRAINT fk3qjq7qsiigxa82jgk0i0wuq3g;
       public          postgres    false    227    4746    230            �           2606    20461 (   cart_detalis fk5rfp37mtjs4iaq4v1uqy9pit7    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_detalis
    ADD CONSTRAINT fk5rfp37mtjs4iaq4v1uqy9pit7 FOREIGN KEY (products_product_id) REFERENCES public.product(product_id);
 R   ALTER TABLE ONLY public.cart_detalis DROP CONSTRAINT fk5rfp37mtjs4iaq4v1uqy9pit7;
       public          postgres    false    4742    218    222            �           2606    20417 (   cart_detalis fk9fw9c304yq5afht6relctjlpe    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_detalis
    ADD CONSTRAINT fk9fw9c304yq5afht6relctjlpe FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 R   ALTER TABLE ONLY public.cart_detalis DROP CONSTRAINT fk9fw9c304yq5afht6relctjlpe;
       public          postgres    false    4734    218    216            �           2606    20452 %   users_role fkati5xmjrd4vpcu1gd6j73s8m    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_role
    ADD CONSTRAINT fkati5xmjrd4vpcu1gd6j73s8m FOREIGN KEY (user_user_id) REFERENCES public.users(user_id);
 O   ALTER TABLE ONLY public.users_role DROP CONSTRAINT fkati5xmjrd4vpcu1gd6j73s8m;
       public          postgres    false    229    230    4748            �           2606    20442 $   purchase fke4whjgw89450rdxrwad4o7cjm    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT fke4whjgw89450rdxrwad4o7cjm FOREIGN KEY (user_user_id) REFERENCES public.users(user_id);
 N   ALTER TABLE ONLY public.purchase DROP CONSTRAINT fke4whjgw89450rdxrwad4o7cjm;
       public          postgres    false    229    225    4748            �           2606    20471 $   purchase fkf3ebnxpkqcgxtp0ov8tmotp7h    FK CONSTRAINT     �   ALTER TABLE ONLY public.purchase
    ADD CONSTRAINT fkf3ebnxpkqcgxtp0ov8tmotp7h FOREIGN KEY (product_product_id) REFERENCES public.product(product_id);
 N   ALTER TABLE ONLY public.purchase DROP CONSTRAINT fkf3ebnxpkqcgxtp0ov8tmotp7h;
       public          postgres    false    222    4742    225            �           2606    20412     cart fkg5uhi8vpsuy0lgloxk2h4w5o6    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT fkg5uhi8vpsuy0lgloxk2h4w5o6 FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 J   ALTER TABLE ONLY public.cart DROP CONSTRAINT fkg5uhi8vpsuy0lgloxk2h4w5o6;
       public          postgres    false    4748    216    229            �           2606    20498 ,   product_category fkkud35ls1d40wpjb5htpp14q4e    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT fkkud35ls1d40wpjb5htpp14q4e FOREIGN KEY (category_id) REFERENCES public.category(id);
 V   ALTER TABLE ONLY public.product_category DROP CONSTRAINT fkkud35ls1d40wpjb5htpp14q4e;
       public          postgres    false    223    4740    220            (      x������ � �      *      x������ � �      ,      x������ � �      .      x������ � �      /      x������ � �      1      x������ � �      3      x������ � �      5      x������ � �      6      x������ � �     