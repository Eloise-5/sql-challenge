PGDMP     :    0                {           sql-challenge    12.13    12.13                0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24769    sql-challenge    DATABASE     ?   CREATE DATABASE "sql-challenge" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Australia.1252' LC_CTYPE = 'English_Australia.1252';
    DROP DATABASE "sql-challenge";
                postgres    false            ?            1259    24775    titles    TABLE     v   CREATE TABLE public.titles (
    title_id character varying(5) NOT NULL,
    title character varying(255) NOT NULL
);
    DROP TABLE public.titles;
       public         heap    postgres    false            ?
           2606    24779    titles titles_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);
 <   ALTER TABLE ONLY public.titles DROP CONSTRAINT titles_pkey;
       public            postgres    false    203           