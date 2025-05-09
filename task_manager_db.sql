PGDMP     1                    }           task_manager    15.3    15.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    1147588    task_manager    DATABASE     �   CREATE DATABASE task_manager WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1253';
    DROP DATABASE task_manager;
                postgres    false            �            1259    1147590    tasks    TABLE     N  CREATE TABLE public.tasks (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    description text,
    priority integer NOT NULL,
    deadline date NOT NULL,
    status character varying(20) DEFAULT 'Pending'::character varying,
    CONSTRAINT tasks_priority_check CHECK (((priority >= 1) AND (priority <= 10)))
);
    DROP TABLE public.tasks;
       public         heap    postgres    false            �            1259    1147589    tasks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tasks_id_seq;
       public          postgres    false    215                        0    0    tasks_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;
          public          postgres    false    214            e           2604    1147593    tasks id    DEFAULT     d   ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);
 7   ALTER TABLE public.tasks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �          0    1147590    tasks 
   TABLE DATA           S   COPY public.tasks (id, title, description, priority, deadline, status) FROM stdin;
    public          postgres    false    215   P                  0    0    tasks_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tasks_id_seq', 13, true);
          public          postgres    false    214            i           2606    1147599    tasks tasks_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tasks DROP CONSTRAINT tasks_pkey;
       public            postgres    false    215            �   7  x�M�MN�0���)�TM`�,٤�K-�6����O���{ �"� ���\�q+UH�5~�ޛ�8�FfVK8���.��i'0Nnx��^O��z����k�u�`���kk����l�"0�gA{HC�J�p�p��cS�R�An���I��CZ�D,z���Q�ϱ8SFjs�=��T����5�_h����[�64;�n���X�r�`͏-���%���O��f���ׁo��/z
���m�;���#��C��L1Sc�A��`�����ݘ%�<R�Q+��?lۏ�^v�(����T     