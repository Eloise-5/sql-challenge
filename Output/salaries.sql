PGDMP     #    0                {           sql-challenge    12.13    12.13                0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24769    sql-challenge    DATABASE     ?   CREATE DATABASE "sql-challenge" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Australia.1252' LC_CTYPE = 'English_Australia.1252';
    DROP DATABASE "sql-challenge";
                postgres    false            ?            1259    24819    salaries    TABLE     Y   CREATE TABLE public.salaries (
    emp_no integer NOT NULL,
    salary money NOT NULL
);
    DROP TABLE public.salaries;
       public         heap    postgres    false            ?
           2606    24822    salaries salaries_emp_no_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT salaries_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);
 G   ALTER TABLE ONLY public.salaries DROP CONSTRAINT salaries_emp_no_fkey;
       public          postgres    false    207           