PGDMP         /                {           sql-challenge    12.13    12.13                0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24769    sql-challenge    DATABASE     ?   CREATE DATABASE "sql-challenge" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Australia.1252' LC_CTYPE = 'English_Australia.1252';
    DROP DATABASE "sql-challenge";
                postgres    false            ?            1259    24770    departments    TABLE     ~   CREATE TABLE public.departments (
    dept_no character varying(5) NOT NULL,
    dept_name character varying(255) NOT NULL
);
    DROP TABLE public.departments;
       public         heap    postgres    false            ?
           2606    24774    departments departments_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    202           