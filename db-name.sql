PGDMP  9                 	    |           marche    15.8    16.4 C    I           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            J           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            K           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            L           1262    16398    marche    DATABASE     �   CREATE DATABASE marche WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE marche;
                postgres    false            �            1259    16457    comptabilites    TABLE     .  CREATE TABLE public.comptabilites (
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    montant numeric NOT NULL,
    type_operation character varying(50) NOT NULL,
    fournisseur_id bigint NOT NULL
);
 !   DROP TABLE public.comptabilites;
       public         heap    postgres    false            �            1259    16456    comptabilites_id_seq    SEQUENCE     }   CREATE SEQUENCE public.comptabilites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.comptabilites_id_seq;
       public          postgres    false    223            M           0    0    comptabilites_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.comptabilites_id_seq OWNED BY public.comptabilites.id;
          public          postgres    false    222            �            1259    16482 	   courriers    TABLE     �  CREATE TABLE public.courriers (
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    numero character varying(50) NOT NULL,
    objet character varying(255) NOT NULL,
    date_envoi text NOT NULL,
    destinataire character varying(255),
    type character varying(50) NOT NULL,
    fichier_joint character varying(255),
    service character varying(255) NOT NULL,
    statut character varying(50) NOT NULL
);
    DROP TABLE public.courriers;
       public         heap    postgres    false            �            1259    16481    courriers_id_seq    SEQUENCE     y   CREATE SEQUENCE public.courriers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.courriers_id_seq;
       public          postgres    false    227            N           0    0    courriers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.courriers_id_seq OWNED BY public.courriers.id;
          public          postgres    false    226            �            1259    16413    fournisseurs    TABLE     '  CREATE TABLE public.fournisseurs (
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    nom character varying(255) NOT NULL,
    adresse character varying(255),
    telephone character varying(50),
    email character varying(255),
    contact_interlocuteur character varying(255),
    fax1 text,
    fax2 text,
    remarques text,
    num_libelle text,
    ice text,
    rc text,
    forme_juridique text,
    affiliation_cnss character varying(50)
);
     DROP TABLE public.fournisseurs;
       public         heap    postgres    false            �            1259    16412    fournisseurs_id_seq    SEQUENCE     |   CREATE SEQUENCE public.fournisseurs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.fournisseurs_id_seq;
       public          postgres    false    217            O           0    0    fournisseurs_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.fournisseurs_id_seq OWNED BY public.fournisseurs.id;
          public          postgres    false    216            �            1259    16423    marches    TABLE     �  CREATE TABLE public.marches (
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    numero_marche character varying(50) NOT NULL,
    annee_marche bigint NOT NULL,
    objet_marche text NOT NULL,
    demandeur text,
    service text,
    montant_marche numeric NOT NULL,
    titulaire_marche_id bigint NOT NULL
);
    DROP TABLE public.marches;
       public         heap    postgres    false            �            1259    16422    marches_id_seq    SEQUENCE     w   CREATE SEQUENCE public.marches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.marches_id_seq;
       public          postgres    false    219            P           0    0    marches_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.marches_id_seq OWNED BY public.marches.id;
          public          postgres    false    218            �            1259    16472    rapports    TABLE       CREATE TABLE public.rapports (
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    type character varying(50),
    date text NOT NULL,
    description text
);
    DROP TABLE public.rapports;
       public         heap    postgres    false            �            1259    16471    rapports_id_seq    SEQUENCE     x   CREATE SEQUENCE public.rapports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.rapports_id_seq;
       public          postgres    false    225            Q           0    0    rapports_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.rapports_id_seq OWNED BY public.rapports.id;
          public          postgres    false    224            �            1259    16400    utilisateurs    TABLE     �  CREATE TABLE public.utilisateurs (
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    nom character varying(255) NOT NULL,
    prenom character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    mot_de_passe character varying(255) NOT NULL,
    profil character varying(50) NOT NULL,
    etat boolean DEFAULT true,
    service character varying(50),
    photo text
);
     DROP TABLE public.utilisateurs;
       public         heap    postgres    false            �            1259    16399    utilisateurs_id_seq    SEQUENCE     |   CREATE SEQUENCE public.utilisateurs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.utilisateurs_id_seq;
       public          postgres    false    215            R           0    0    utilisateurs_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.utilisateurs_id_seq OWNED BY public.utilisateurs.id;
          public          postgres    false    214            �            1259    16440 	   vehicules    TABLE       CREATE TABLE public.vehicules (
    id bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    deleted_at timestamp with time zone,
    immatriculation character varying(50) NOT NULL,
    marque character varying(100) NOT NULL,
    modele character varying(100) NOT NULL,
    date_achat text NOT NULL,
    etat character varying(50) NOT NULL,
    kilometrage bigint NOT NULL,
    date_reforme text,
    type_acquisition character varying(50),
    fournisseur_id bigint
);
    DROP TABLE public.vehicules;
       public         heap    postgres    false            �            1259    16439    vehicules_id_seq    SEQUENCE     y   CREATE SEQUENCE public.vehicules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.vehicules_id_seq;
       public          postgres    false    221            S           0    0    vehicules_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.vehicules_id_seq OWNED BY public.vehicules.id;
          public          postgres    false    220            �           2604    16460    comptabilites id    DEFAULT     t   ALTER TABLE ONLY public.comptabilites ALTER COLUMN id SET DEFAULT nextval('public.comptabilites_id_seq'::regclass);
 ?   ALTER TABLE public.comptabilites ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    16485    courriers id    DEFAULT     l   ALTER TABLE ONLY public.courriers ALTER COLUMN id SET DEFAULT nextval('public.courriers_id_seq'::regclass);
 ;   ALTER TABLE public.courriers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �           2604    16416    fournisseurs id    DEFAULT     r   ALTER TABLE ONLY public.fournisseurs ALTER COLUMN id SET DEFAULT nextval('public.fournisseurs_id_seq'::regclass);
 >   ALTER TABLE public.fournisseurs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    16426 
   marches id    DEFAULT     h   ALTER TABLE ONLY public.marches ALTER COLUMN id SET DEFAULT nextval('public.marches_id_seq'::regclass);
 9   ALTER TABLE public.marches ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16475    rapports id    DEFAULT     j   ALTER TABLE ONLY public.rapports ALTER COLUMN id SET DEFAULT nextval('public.rapports_id_seq'::regclass);
 :   ALTER TABLE public.rapports ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    16403    utilisateurs id    DEFAULT     r   ALTER TABLE ONLY public.utilisateurs ALTER COLUMN id SET DEFAULT nextval('public.utilisateurs_id_seq'::regclass);
 >   ALTER TABLE public.utilisateurs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16443    vehicules id    DEFAULT     l   ALTER TABLE ONLY public.vehicules ALTER COLUMN id SET DEFAULT nextval('public.vehicules_id_seq'::regclass);
 ;   ALTER TABLE public.vehicules ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            B          0    16457    comptabilites 
   TABLE DATA           x   COPY public.comptabilites (id, created_at, updated_at, deleted_at, montant, type_operation, fournisseur_id) FROM stdin;
    public          postgres    false    223   �S       F          0    16482 	   courriers 
   TABLE DATA           �   COPY public.courriers (id, created_at, updated_at, deleted_at, numero, objet, date_envoi, destinataire, type, fichier_joint, service, statut) FROM stdin;
    public          postgres    false    227   T       <          0    16413    fournisseurs 
   TABLE DATA           �   COPY public.fournisseurs (id, created_at, updated_at, deleted_at, nom, adresse, telephone, email, contact_interlocuteur, fax1, fax2, remarques, num_libelle, ice, rc, forme_juridique, affiliation_cnss) FROM stdin;
    public          postgres    false    217   7T       >          0    16423    marches 
   TABLE DATA           �   COPY public.marches (id, created_at, updated_at, deleted_at, numero_marche, annee_marche, objet_marche, demandeur, service, montant_marche, titulaire_marche_id) FROM stdin;
    public          postgres    false    219   &X       D          0    16472    rapports 
   TABLE DATA           c   COPY public.rapports (id, created_at, updated_at, deleted_at, type, date, description) FROM stdin;
    public          postgres    false    225   "Y       :          0    16400    utilisateurs 
   TABLE DATA           �   COPY public.utilisateurs (id, created_at, updated_at, deleted_at, nom, prenom, email, mot_de_passe, profil, etat, service, photo) FROM stdin;
    public          postgres    false    215   ?Y       @          0    16440 	   vehicules 
   TABLE DATA           �   COPY public.vehicules (id, created_at, updated_at, deleted_at, immatriculation, marque, modele, date_achat, etat, kilometrage, date_reforme, type_acquisition, fournisseur_id) FROM stdin;
    public          postgres    false    221   �Z       T           0    0    comptabilites_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.comptabilites_id_seq', 1, false);
          public          postgres    false    222            U           0    0    courriers_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.courriers_id_seq', 1, false);
          public          postgres    false    226            V           0    0    fournisseurs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.fournisseurs_id_seq', 37, true);
          public          postgres    false    216            W           0    0    marches_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.marches_id_seq', 3, true);
          public          postgres    false    218            X           0    0    rapports_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.rapports_id_seq', 1, false);
          public          postgres    false    224            Y           0    0    utilisateurs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.utilisateurs_id_seq', 10, true);
          public          postgres    false    214            Z           0    0    vehicules_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.vehicules_id_seq', 10, true);
          public          postgres    false    220            �           2606    16464     comptabilites comptabilites_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.comptabilites
    ADD CONSTRAINT comptabilites_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.comptabilites DROP CONSTRAINT comptabilites_pkey;
       public            postgres    false    223            �           2606    16489    courriers courriers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.courriers
    ADD CONSTRAINT courriers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.courriers DROP CONSTRAINT courriers_pkey;
       public            postgres    false    227            �           2606    16420    fournisseurs fournisseurs_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.fournisseurs
    ADD CONSTRAINT fournisseurs_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.fournisseurs DROP CONSTRAINT fournisseurs_pkey;
       public            postgres    false    217            �           2606    16430    marches marches_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.marches
    ADD CONSTRAINT marches_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.marches DROP CONSTRAINT marches_pkey;
       public            postgres    false    219            �           2606    16479    rapports rapports_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.rapports
    ADD CONSTRAINT rapports_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.rapports DROP CONSTRAINT rapports_pkey;
       public            postgres    false    225            �           2606    16491    courriers uni_courriers_numero 
   CONSTRAINT     [   ALTER TABLE ONLY public.courriers
    ADD CONSTRAINT uni_courriers_numero UNIQUE (numero);
 H   ALTER TABLE ONLY public.courriers DROP CONSTRAINT uni_courriers_numero;
       public            postgres    false    227            �           2606    16432 !   marches uni_marches_numero_marche 
   CONSTRAINT     e   ALTER TABLE ONLY public.marches
    ADD CONSTRAINT uni_marches_numero_marche UNIQUE (numero_marche);
 K   ALTER TABLE ONLY public.marches DROP CONSTRAINT uni_marches_numero_marche;
       public            postgres    false    219            �           2606    16410 #   utilisateurs uni_utilisateurs_email 
   CONSTRAINT     _   ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT uni_utilisateurs_email UNIQUE (email);
 M   ALTER TABLE ONLY public.utilisateurs DROP CONSTRAINT uni_utilisateurs_email;
       public            postgres    false    215            �           2606    16449 '   vehicules uni_vehicules_immatriculation 
   CONSTRAINT     m   ALTER TABLE ONLY public.vehicules
    ADD CONSTRAINT uni_vehicules_immatriculation UNIQUE (immatriculation);
 Q   ALTER TABLE ONLY public.vehicules DROP CONSTRAINT uni_vehicules_immatriculation;
       public            postgres    false    221            �           2606    16408    utilisateurs utilisateurs_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.utilisateurs DROP CONSTRAINT utilisateurs_pkey;
       public            postgres    false    215            �           2606    16447    vehicules vehicules_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.vehicules
    ADD CONSTRAINT vehicules_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.vehicules DROP CONSTRAINT vehicules_pkey;
       public            postgres    false    221            �           1259    16470    idx_comptabilites_deleted_at    INDEX     \   CREATE INDEX idx_comptabilites_deleted_at ON public.comptabilites USING btree (deleted_at);
 0   DROP INDEX public.idx_comptabilites_deleted_at;
       public            postgres    false    223            �           1259    16492    idx_courriers_deleted_at    INDEX     T   CREATE INDEX idx_courriers_deleted_at ON public.courriers USING btree (deleted_at);
 ,   DROP INDEX public.idx_courriers_deleted_at;
       public            postgres    false    227            �           1259    16421    idx_fournisseurs_deleted_at    INDEX     Z   CREATE INDEX idx_fournisseurs_deleted_at ON public.fournisseurs USING btree (deleted_at);
 /   DROP INDEX public.idx_fournisseurs_deleted_at;
       public            postgres    false    217            �           1259    16438    idx_marches_deleted_at    INDEX     P   CREATE INDEX idx_marches_deleted_at ON public.marches USING btree (deleted_at);
 *   DROP INDEX public.idx_marches_deleted_at;
       public            postgres    false    219            �           1259    16480    idx_rapports_deleted_at    INDEX     R   CREATE INDEX idx_rapports_deleted_at ON public.rapports USING btree (deleted_at);
 +   DROP INDEX public.idx_rapports_deleted_at;
       public            postgres    false    225            �           1259    16411    idx_utilisateurs_deleted_at    INDEX     Z   CREATE INDEX idx_utilisateurs_deleted_at ON public.utilisateurs USING btree (deleted_at);
 /   DROP INDEX public.idx_utilisateurs_deleted_at;
       public            postgres    false    215            �           1259    16455    idx_vehicules_deleted_at    INDEX     T   CREATE INDEX idx_vehicules_deleted_at ON public.vehicules USING btree (deleted_at);
 ,   DROP INDEX public.idx_vehicules_deleted_at;
       public            postgres    false    221            �           2606    16465 *   comptabilites fk_comptabilites_fournisseur    FK CONSTRAINT     �   ALTER TABLE ONLY public.comptabilites
    ADD CONSTRAINT fk_comptabilites_fournisseur FOREIGN KEY (fournisseur_id) REFERENCES public.fournisseurs(id);
 T   ALTER TABLE ONLY public.comptabilites DROP CONSTRAINT fk_comptabilites_fournisseur;
       public          postgres    false    223    3217    217            �           2606    16433 #   marches fk_marches_titulaire_marche    FK CONSTRAINT     �   ALTER TABLE ONLY public.marches
    ADD CONSTRAINT fk_marches_titulaire_marche FOREIGN KEY (titulaire_marche_id) REFERENCES public.fournisseurs(id);
 M   ALTER TABLE ONLY public.marches DROP CONSTRAINT fk_marches_titulaire_marche;
       public          postgres    false    217    219    3217            �           2606    16450 "   vehicules fk_vehicules_fournisseur    FK CONSTRAINT     �   ALTER TABLE ONLY public.vehicules
    ADD CONSTRAINT fk_vehicules_fournisseur FOREIGN KEY (fournisseur_id) REFERENCES public.fournisseurs(id);
 L   ALTER TABLE ONLY public.vehicules DROP CONSTRAINT fk_vehicules_fournisseur;
       public          postgres    false    221    217    3217            B      x������ � �      F      x������ � �      <   �  x��X�n�6}��B�Er�W=��m�n�-����ڍ��Œ����ȏuh{�b�}�ٖ<����P�}��;PR\H�	�k��������v�,���n��|����Ev�)��r�����:Ϧ�e��e����j�~)�2��]��y����$;z�>7�6+�E�__6e1��v|!�d7��v?:L��c6��L�>�otL&t.\�W�[�"�3+�U�x-�$��rm����?�b��l�\,)���F�a��R����w��5
�&,gM��C`���s��@��KD���G���p�{6 qPڛP
�E`�#�Zm��s�̲ߊM]�rCC ���:��o���yvW�eݼ��'`f���eZ�yY���w�%�q��׿��}m���4BACzbU984b'VL�2�F�j�c��	R��+͕����L���9+
{�J'YI��Z����\����Rk�CV��VTW��GV*���@S h�����{��q/�ٖ��+�"E�����u�N@�9X.�z�骨Cs�2)��l�����ϫ����H��\&�Wutq���2!� �_@)����ּ��2�@[
n�I��`˔L#�:�@�LJ�����mҰ]lFi�-��	�i�>G��9�-��ؐ����58�͒���.�*�6�vJ�a.D�xJy-\acJ��a���mk�.�N�ƾ/H�P�i��N�JH����1hUj���tR)�+�Bi�[��i>t~���8�M���I+A����o� U�θ���"$��X����S�4���eJG�<:��"e�52�0ͮq�r�Q����6��Vb�Vqj�4l4#KG哴j�"^j��V�m7j��ӊ��62ќ;��B}���˱�J�k���r��ë������j���p|��U���ㆂYfuQ��a�Xx��r�C����J���/�P�wc�ڞ<�ŗ_$��0�<������^����(������ k�e      >   �   x�]�Mj�0FףS�>��'q�lZ�H)4�l�;m9�������*%v	���x�p|����R�JJ���e�Y�~P�4^>Ӊ\��v|(�;�Ι�<��	F�UK	Z�,�Y��4�y
�F�]�,l�I�!9�ۘ�/&ز��d�%�.��v�[�j��&H~yY)Y�T����Z�Z6�i�";�骛�s?x�q��O�:d����^�f���p�Ƴ���3�;�jVV�X!~�l�      D      x������ � �      :   h  x����J1��g&t��;kşR���Uo�ݴM͟�}%��s2[قHa������y:}7�Y`.��#V�p%>�vJ��jp��ޭ/�n���<�������6gG�Ϻ�������^@A�$��RɊ=�̬v�oQ
_��K�\z�<7%,������I�b���#h��.���X[w�*:��Ֆ������k�>y��^��X���tm�~&��<l����K�����d�Zk���::g}��C����	��Q!#*�'����J�MqږQ�u�]QiطN����,��:��`��l����<*�8���I����U�6�խ0Lq��4�6)�ے�C�˲��y;�      @   �  x�]�IN�0��ϧ���1q��T�*(��6l��)"�X�@�#q.�E;)ɲ��������|6d\`����F��]���S����uW�o��+J駬~�OFx �)Ja��/ۙ�!k�9L#��Q�;����O��˙Oܸڌ��xY��Np���v:Y7��z�y���_�D�v��K��\�<�3'�A����Y�T#���m�PT�c�$�?�����#�4��b��LJ�c
��\����DZ���*�}��KS�2�+C���N��W���,1��
�����a֚a�*���PЋ�t`Uj�q���p���;��B�,^p��/p��n�I$p���tl`#ϻ�LK+|��$��~�L�x}���i oM7��k8�P,��.�{�A� ~�     