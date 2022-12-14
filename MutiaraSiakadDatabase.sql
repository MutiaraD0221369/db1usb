PGDMP         -        
    
    z            siakad    15.0    15.0     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    siakad    DATABASE     }   CREATE DATABASE siakad WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE siakad;
                postgres    false            ?            1259    16413    dosen    TABLE     `   CREATE TABLE public.dosen (
    nama character varying(15),
    alamat character varying(30)
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            ?            1259    16400 	   mahasiswa    TABLE     ~   CREATE TABLE public.mahasiswa (
    nim integer NOT NULL,
    nama character varying(30),
    alamat character varying(50)
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            ?            1259    16399    mahasiswa_nim_seq    SEQUENCE     ?   CREATE SEQUENCE public.mahasiswa_nim_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.mahasiswa_nim_seq;
       public          postgres    false    215                       0    0    mahasiswa_nim_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.mahasiswa_nim_seq OWNED BY public.mahasiswa.nim;
          public          postgres    false    214            ?            1259    16407    makul    TABLE     n   CREATE TABLE public.makul (
    idmk integer NOT NULL,
    namamk character varying(15),
    nilai integer
);
    DROP TABLE public.makul;
       public         heap    postgres    false            ?            1259    16406    makul_idmk_seq    SEQUENCE     ?   CREATE SEQUENCE public.makul_idmk_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.makul_idmk_seq;
       public          postgres    false    217                       0    0    makul_idmk_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.makul_idmk_seq OWNED BY public.makul.idmk;
          public          postgres    false    216            n           2604    16403    mahasiswa nim    DEFAULT     n   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN nim SET DEFAULT nextval('public.mahasiswa_nim_seq'::regclass);
 <   ALTER TABLE public.mahasiswa ALTER COLUMN nim DROP DEFAULT;
       public          postgres    false    214    215    215            o           2604    16410 
   makul idmk    DEFAULT     h   ALTER TABLE ONLY public.makul ALTER COLUMN idmk SET DEFAULT nextval('public.makul_idmk_seq'::regclass);
 9   ALTER TABLE public.makul ALTER COLUMN idmk DROP DEFAULT;
       public          postgres    false    216    217    217                      0    16413    dosen 
   TABLE DATA           -   COPY public.dosen (nama, alamat) FROM stdin;
    public          postgres    false    218   V                 0    16400 	   mahasiswa 
   TABLE DATA           6   COPY public.mahasiswa (nim, nama, alamat) FROM stdin;
    public          postgres    false    215   ?                 0    16407    makul 
   TABLE DATA           4   COPY public.makul (idmk, namamk, nilai) FROM stdin;
    public          postgres    false    217   ?                  0    0    mahasiswa_nim_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mahasiswa_nim_seq', 1, false);
          public          postgres    false    214                       0    0    makul_idmk_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.makul_idmk_seq', 1, false);
          public          postgres    false    216            q           2606    16405    mahasiswa mahasiswa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pkey PRIMARY KEY (nim);
 B   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pkey;
       public            postgres    false    215            s           2606    16412    makul makul_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.makul
    ADD CONSTRAINT makul_pkey PRIMARY KEY (idmk);
 :   ALTER TABLE ONLY public.makul DROP CONSTRAINT makul_pkey;
       public            postgres    false    217               (   x??-?J????M?N,.N,???K)Jr?R?R?b???? ??
?         9   x?32246???/??L??L?OIL??2	[r???d&%r?&d??dr??qqq {?n         )   x?340?tJ,?,VpI,IT??440?240B????qqq *?[     