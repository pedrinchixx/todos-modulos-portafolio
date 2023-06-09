PGDMP                           {           portafolioM5    15.1    15.1 @    I           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            J           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            K           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            L           1262    16978    portafolioM5    DATABASE     �   CREATE DATABASE "portafolioM5" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Latin America.1252';
    DROP DATABASE "portafolioM5";
                postgres    false            M           0    0    DATABASE "portafolioM5"    COMMENT     �   COMMENT ON DATABASE "portafolioM5" IS 'realizacion de la base de datos y consultas correspondiende al la entrega del portafolio del modulo 5';
                   postgres    false    3404            �            1259    17002    carrito    TABLE     �   CREATE TABLE public.carrito (
    id integer NOT NULL,
    cantidad integer,
    producto_id integer,
    usuario_rut character varying(4)
);
    DROP TABLE public.carrito;
       public         heap    postgres    false            �            1259    17001    carrito_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carrito_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.carrito_id_seq;
       public          postgres    false    219            N           0    0    carrito_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.carrito_id_seq OWNED BY public.carrito.id;
          public          postgres    false    218            �            1259    17038    compra    TABLE     �   CREATE TABLE public.compra (
    id integer NOT NULL,
    usuario_rut character varying(4),
    fecha date,
    detallepago_id integer
);
    DROP TABLE public.compra;
       public         heap    postgres    false            �            1259    17037    compra_id_seq    SEQUENCE     �   CREATE SEQUENCE public.compra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.compra_id_seq;
       public          postgres    false    225            O           0    0    compra_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.compra_id_seq OWNED BY public.compra.id;
          public          postgres    false    224            �            1259    17055    detalle_compra    TABLE     �   CREATE TABLE public.detalle_compra (
    id integer NOT NULL,
    producto_id integer,
    cantidad_compra integer,
    compra_id integer
);
 "   DROP TABLE public.detalle_compra;
       public         heap    postgres    false            �            1259    17054    detalle_compra_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_compra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.detalle_compra_id_seq;
       public          postgres    false    227            P           0    0    detalle_compra_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.detalle_compra_id_seq OWNED BY public.detalle_compra.id;
          public          postgres    false    226            �            1259    17031    detalle_pago    TABLE     �   CREATE TABLE public.detalle_pago (
    id integer NOT NULL,
    estado character varying(12),
    metodo character varying(20)
);
     DROP TABLE public.detalle_pago;
       public         heap    postgres    false            �            1259    17030    detalle_pago_id_seq    SEQUENCE     �   CREATE SEQUENCE public.detalle_pago_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.detalle_pago_id_seq;
       public          postgres    false    223            Q           0    0    detalle_pago_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.detalle_pago_id_seq OWNED BY public.detalle_pago.id;
          public          postgres    false    222            �            1259    16990    direccion_usuario    TABLE     �   CREATE TABLE public.direccion_usuario (
    id integer NOT NULL,
    direccion character varying(50),
    comuna character varying(50),
    ciudad character varying(50),
    region character varying(50),
    usuario_rut character varying(4)
);
 %   DROP TABLE public.direccion_usuario;
       public         heap    postgres    false            �            1259    16989    direccion_usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.direccion_usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.direccion_usuario_id_seq;
       public          postgres    false    217            R           0    0    direccion_usuario_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.direccion_usuario_id_seq OWNED BY public.direccion_usuario.id;
          public          postgres    false    216            �            1259    17019    metodo_pago    TABLE     �   CREATE TABLE public.metodo_pago (
    id integer NOT NULL,
    metodo character varying(20),
    usuario_rut character varying(4)
);
    DROP TABLE public.metodo_pago;
       public         heap    postgres    false            �            1259    17018    metodo_pago_id_seq    SEQUENCE     �   CREATE SEQUENCE public.metodo_pago_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.metodo_pago_id_seq;
       public          postgres    false    221            S           0    0    metodo_pago_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.metodo_pago_id_seq OWNED BY public.metodo_pago.id;
          public          postgres    false    220            �            1259    17071    precios_pasados    TABLE     �   CREATE TABLE public.precios_pasados (
    id integer NOT NULL,
    nombre_producto character varying(50),
    precio integer,
    existencias integer
);
 #   DROP TABLE public.precios_pasados;
       public         heap    postgres    false            �            1259    16979 	   productos    TABLE     �   CREATE TABLE public.productos (
    id integer NOT NULL,
    nombre_producto character varying(50),
    precio integer,
    existencias integer
);
    DROP TABLE public.productos;
       public         heap    postgres    false            �            1259    16984    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    rut character varying(4) NOT NULL,
    "contraseña" character varying(20),
    nombre_cliente character varying(50),
    apellido_cliente character varying(50),
    email character varying(50)
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �           2604    17005 
   carrito id    DEFAULT     h   ALTER TABLE ONLY public.carrito ALTER COLUMN id SET DEFAULT nextval('public.carrito_id_seq'::regclass);
 9   ALTER TABLE public.carrito ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    17041 	   compra id    DEFAULT     f   ALTER TABLE ONLY public.compra ALTER COLUMN id SET DEFAULT nextval('public.compra_id_seq'::regclass);
 8   ALTER TABLE public.compra ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    17058    detalle_compra id    DEFAULT     v   ALTER TABLE ONLY public.detalle_compra ALTER COLUMN id SET DEFAULT nextval('public.detalle_compra_id_seq'::regclass);
 @   ALTER TABLE public.detalle_compra ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    17034    detalle_pago id    DEFAULT     r   ALTER TABLE ONLY public.detalle_pago ALTER COLUMN id SET DEFAULT nextval('public.detalle_pago_id_seq'::regclass);
 >   ALTER TABLE public.detalle_pago ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16993    direccion_usuario id    DEFAULT     |   ALTER TABLE ONLY public.direccion_usuario ALTER COLUMN id SET DEFAULT nextval('public.direccion_usuario_id_seq'::regclass);
 C   ALTER TABLE public.direccion_usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    17022    metodo_pago id    DEFAULT     p   ALTER TABLE ONLY public.metodo_pago ALTER COLUMN id SET DEFAULT nextval('public.metodo_pago_id_seq'::regclass);
 =   ALTER TABLE public.metodo_pago ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            =          0    17002    carrito 
   TABLE DATA           I   COPY public.carrito (id, cantidad, producto_id, usuario_rut) FROM stdin;
    public          postgres    false    219   J       C          0    17038    compra 
   TABLE DATA           H   COPY public.compra (id, usuario_rut, fecha, detallepago_id) FROM stdin;
    public          postgres    false    225   �J       E          0    17055    detalle_compra 
   TABLE DATA           U   COPY public.detalle_compra (id, producto_id, cantidad_compra, compra_id) FROM stdin;
    public          postgres    false    227   �K       A          0    17031    detalle_pago 
   TABLE DATA           :   COPY public.detalle_pago (id, estado, metodo) FROM stdin;
    public          postgres    false    223   �L       ;          0    16990    direccion_usuario 
   TABLE DATA           _   COPY public.direccion_usuario (id, direccion, comuna, ciudad, region, usuario_rut) FROM stdin;
    public          postgres    false    217   �M       ?          0    17019    metodo_pago 
   TABLE DATA           >   COPY public.metodo_pago (id, metodo, usuario_rut) FROM stdin;
    public          postgres    false    221   O       F          0    17071    precios_pasados 
   TABLE DATA           S   COPY public.precios_pasados (id, nombre_producto, precio, existencias) FROM stdin;
    public          postgres    false    228   �O       8          0    16979 	   productos 
   TABLE DATA           M   COPY public.productos (id, nombre_producto, precio, existencias) FROM stdin;
    public          postgres    false    214   �O       9          0    16984    usuarios 
   TABLE DATA           _   COPY public.usuarios (rut, "contraseña", nombre_cliente, apellido_cliente, email) FROM stdin;
    public          postgres    false    215   �P       T           0    0    carrito_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.carrito_id_seq', 6, true);
          public          postgres    false    218            U           0    0    compra_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.compra_id_seq', 10, true);
          public          postgres    false    224            V           0    0    detalle_compra_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.detalle_compra_id_seq', 21, true);
          public          postgres    false    226            W           0    0    detalle_pago_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.detalle_pago_id_seq', 10, true);
          public          postgres    false    222            X           0    0    direccion_usuario_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.direccion_usuario_id_seq', 5, true);
          public          postgres    false    216            Y           0    0    metodo_pago_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.metodo_pago_id_seq', 6, true);
          public          postgres    false    220            �           2606    17007    carrito carrito_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT carrito_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.carrito DROP CONSTRAINT carrito_pkey;
       public            postgres    false    219            �           2606    17043    compra compra_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.compra DROP CONSTRAINT compra_pkey;
       public            postgres    false    225            �           2606    17060 "   detalle_compra detalle_compra_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.detalle_compra
    ADD CONSTRAINT detalle_compra_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.detalle_compra DROP CONSTRAINT detalle_compra_pkey;
       public            postgres    false    227            �           2606    17036    detalle_pago detalle_pago_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.detalle_pago
    ADD CONSTRAINT detalle_pago_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.detalle_pago DROP CONSTRAINT detalle_pago_pkey;
       public            postgres    false    223            �           2606    16995 (   direccion_usuario direccion_usuario_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.direccion_usuario
    ADD CONSTRAINT direccion_usuario_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.direccion_usuario DROP CONSTRAINT direccion_usuario_pkey;
       public            postgres    false    217            �           2606    17024    metodo_pago metodo_pago_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.metodo_pago
    ADD CONSTRAINT metodo_pago_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.metodo_pago DROP CONSTRAINT metodo_pago_pkey;
       public            postgres    false    221            �           2606    17075 $   precios_pasados precios_pasados_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.precios_pasados
    ADD CONSTRAINT precios_pasados_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.precios_pasados DROP CONSTRAINT precios_pasados_pkey;
       public            postgres    false    228            �           2606    16983    productos productos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT productos_pkey;
       public            postgres    false    214            �           2606    16988    usuarios usuarios_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (rut);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    215            �           2606    17008     carrito carrito_producto_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT carrito_producto_id_fkey FOREIGN KEY (producto_id) REFERENCES public.productos(id);
 J   ALTER TABLE ONLY public.carrito DROP CONSTRAINT carrito_producto_id_fkey;
       public          postgres    false    3217    214    219            �           2606    17013     carrito carrito_usuario_rut_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.carrito
    ADD CONSTRAINT carrito_usuario_rut_fkey FOREIGN KEY (usuario_rut) REFERENCES public.usuarios(rut);
 J   ALTER TABLE ONLY public.carrito DROP CONSTRAINT carrito_usuario_rut_fkey;
       public          postgres    false    215    3219    219            �           2606    17044 !   compra compra_detallepago_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_detallepago_id_fkey FOREIGN KEY (detallepago_id) REFERENCES public.detalle_pago(id);
 K   ALTER TABLE ONLY public.compra DROP CONSTRAINT compra_detallepago_id_fkey;
       public          postgres    false    3227    223    225            �           2606    17049    compra compra_usuario_rut_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.compra
    ADD CONSTRAINT compra_usuario_rut_fkey FOREIGN KEY (usuario_rut) REFERENCES public.usuarios(rut);
 H   ALTER TABLE ONLY public.compra DROP CONSTRAINT compra_usuario_rut_fkey;
       public          postgres    false    225    3219    215            �           2606    17066 ,   detalle_compra detalle_compra_compra_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_compra
    ADD CONSTRAINT detalle_compra_compra_id_fkey FOREIGN KEY (compra_id) REFERENCES public.compra(id);
 V   ALTER TABLE ONLY public.detalle_compra DROP CONSTRAINT detalle_compra_compra_id_fkey;
       public          postgres    false    225    3229    227            �           2606    17061 .   detalle_compra detalle_compra_producto_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_compra
    ADD CONSTRAINT detalle_compra_producto_id_fkey FOREIGN KEY (producto_id) REFERENCES public.productos(id);
 X   ALTER TABLE ONLY public.detalle_compra DROP CONSTRAINT detalle_compra_producto_id_fkey;
       public          postgres    false    214    3217    227            �           2606    16996 4   direccion_usuario direccion_usuario_usuario_rut_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.direccion_usuario
    ADD CONSTRAINT direccion_usuario_usuario_rut_fkey FOREIGN KEY (usuario_rut) REFERENCES public.usuarios(rut);
 ^   ALTER TABLE ONLY public.direccion_usuario DROP CONSTRAINT direccion_usuario_usuario_rut_fkey;
       public          postgres    false    215    217    3219            �           2606    17025 (   metodo_pago metodo_pago_usuario_rut_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.metodo_pago
    ADD CONSTRAINT metodo_pago_usuario_rut_fkey FOREIGN KEY (usuario_rut) REFERENCES public.usuarios(rut);
 R   ALTER TABLE ONLY public.metodo_pago DROP CONSTRAINT metodo_pago_usuario_rut_fkey;
       public          postgres    false    221    215    3219            =      1	3	1	15-5
    2	3	3	15-5
    3	1	1	11-1
    4	1	8	11-1
    5	1	7	12-2
    6	1	6	14-4
    \.


      C      1	11-1	2021-12-12	1
    2	12-2	2022-01-01	2
    3	13-3	2022-03-23	3
    4	11-1	2022-03-24	4
    5	12-2	2022-04-13	5
    6	12-2	2022-05-07	6
    7	15-5	2022-06-05	7
    8	12-2	2022-07-28	8
    9	12-2	2022-12-13	9
    10	15-5	2022-12-13	10
    \.


      E      1	5	1	1
    2	1	2	1
    3	7	1	2
    4	8	1	2
    5	2	1	3
    6	1	2	4
    7	3	4	4
    8	3	2	5
    9	1	1	5
 	   10	7	1	5
 	   11	4	1	5
 	   12	6	3	6
 	   13	5	3	6
 	   14	5	3	7
 	   15	6	2	8
 	   16	1	3	8
 	   17	3	2	8
 	   18	6	3	9
 
   19	1	2	10
 
   20	5	3	10
 
   21	8	1	10
    \.


      A      1	finalizado	credito
    2	finalizado	debito
    3	finalizado	debito
    4	finalizado	debito
    5	finalizado	debito
    6	finalizado	credito
    7	finalizado	transferencia
    8	finalizado	debito
    9	finalizado	transferencia
    10	finalizado	debito
    \.


      ;   *   1	av colon 31	peñalolen	santiago	RM	11-1
 -   2	calle el olivo 1221	maipu	santiago	RM	11-1
 +   3	labo albano 18889	maipu	santiago	RM	12-2
 .   4	labo de lugano 16787	maipu	santiago	RM	13-3
 +   5	labo carezza 1234	maipu	santiago	RM	15-5
    \.


      ?      1	debito	11-1
    2	debito	12-2
    3	credito	13-3
    4	debito	13-3
    5	debito	14-4
    6	transferencia	15-5
    \.


      F      \.


      8      1	quesillo	1360	17
    2	berlini	10392	2
    3	Torta Chocolate 1p	1272	4
    4	Cheescake Manjar	15192	0
    5	Dona chocolate 1u	1032	17
    6	Profiterol 1u	1112	5
    7	Queque Manzana 	6392	18
    8	Queque Limon 	6392	12
    \.


      9   2   11-1	contraseña1	jose	perez	jose.perez@gmail.com
 8   12-2	contraseña2	daniela	ponce	daniela.ponce@gmail.com
 2   13-3	contraseña3	luis	lopez	luiz.lopez@gmail.com
 >   14-4	contraseña4	ximena	hernandez	ximena.hernandez@gmail.com
 6   15-5	contraseña5	felipe	rozas	felipe.rozas@gmail.com
    \.


     