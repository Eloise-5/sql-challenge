PGDMP         0                {           sql-challenge    12.13    12.13                0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24769    sql-challenge    DATABASE     ?   CREATE DATABASE "sql-challenge" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Australia.1252' LC_CTYPE = 'English_Australia.1252';
    DROP DATABASE "sql-challenge";
                postgres    false            ?            1259    24780 	   employees    TABLE     T  CREATE TABLE public.employees (
    emp_no integer NOT NULL,
    emp_title character varying(255) NOT NULL,
    birth_date character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    sex character varying(255) NOT NULL,
    hire_date character varying(10) NOT NULL
);
    DROP TABLE public.employees;
       public         heap    postgres    false            ?
           2606    24787    employees employees_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (emp_no);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            postgres    false    204            ?
           2606    24788 "   employees employees_emp_title_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_emp_title_fkey FOREIGN KEY (emp_title) REFERENCES public.titles(title_id);
 L   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_emp_title_fkey;
       public          postgres    false    204           