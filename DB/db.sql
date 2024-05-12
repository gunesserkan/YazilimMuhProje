PGDMP                         |            AirportOrganizationAutomation    15.6    15.6 S    \           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ]           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ^           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            _           1262    16859    AirportOrganizationAutomation    DATABASE     �   CREATE DATABASE "AirportOrganizationAutomation" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1254';
 /   DROP DATABASE "AirportOrganizationAutomation";
                postgres    false            �            1259    16860    account    TABLE     6  CREATE TABLE public.account (
    account_id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    e_mail character varying(50) NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    account_type integer DEFAULT 2 NOT NULL
);
    DROP TABLE public.account;
       public         heap    postgres    false            �            1259    16864    Account_account_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Account_account_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Account_account_id_seq";
       public          postgres    false    214            `           0    0    Account_account_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Account_account_id_seq" OWNED BY public.account.account_id;
          public          postgres    false    215            �            1259    16865    address    TABLE       CREATE TABLE public.address (
    address_id integer NOT NULL,
    street character varying(50),
    city character varying(50),
    state character varying(50),
    postal_code character varying(50),
    country character varying(50),
    account_id integer NOT NULL
);
    DROP TABLE public.address;
       public         heap    postgres    false            �            1259    16868    Address_address_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Address_address_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Address_address_id_seq";
       public          postgres    false    216            a           0    0    Address_address_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Address_address_id_seq" OWNED BY public.address.address_id;
          public          postgres    false    217            �            1259    16869    airlineCompany    TABLE     �   CREATE TABLE public."airlineCompany" (
    ailrline_company_id integer NOT NULL,
    name character varying(50) NOT NULL,
    country character varying(50),
    established_date date
);
 $   DROP TABLE public."airlineCompany";
       public         heap    postgres    false            �            1259    16872    AirlineCompany_ailrline_id_seq    SEQUENCE     �   CREATE SEQUENCE public."AirlineCompany_ailrline_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."AirlineCompany_ailrline_id_seq";
       public          postgres    false    218            b           0    0    AirlineCompany_ailrline_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public."AirlineCompany_ailrline_id_seq" OWNED BY public."airlineCompany".ailrline_company_id;
          public          postgres    false    219            �            1259    16873    airport    TABLE     �   CREATE TABLE public.airport (
    airport_id integer NOT NULL,
    name character varying(100) NOT NULL,
    city character varying(100),
    country character varying(50),
    code character varying(3) NOT NULL
);
    DROP TABLE public.airport;
       public         heap    postgres    false            �            1259    16876    Airport_airport_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Airport_airport_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."Airport_airport_id_seq";
       public          postgres    false    220            c           0    0    Airport_airport_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Airport_airport_id_seq" OWNED BY public.airport.airport_id;
          public          postgres    false    221            �            1259    16877    flight    TABLE       CREATE TABLE public.flight (
    flight_id integer NOT NULL,
    airline_id integer,
    departure_airport_id integer,
    destination_airport_id integer,
    departure_time timestamp with time zone,
    arrival_time timestamp with time zone,
    plane_id integer
);
    DROP TABLE public.flight;
       public         heap    postgres    false            �            1259    16880    Flight_flight_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Flight_flight_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Flight_flight_id_seq";
       public          postgres    false    222            d           0    0    Flight_flight_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Flight_flight_id_seq" OWNED BY public.flight.flight_id;
          public          postgres    false    223            �            1259    16881    personal    TABLE     �   CREATE TABLE public.personal (
    personal_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    birth_date date,
    gender "char"
);
    DROP TABLE public.personal;
       public         heap    postgres    false            �            1259    16884    Personal_personal_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Personal_personal_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Personal_personal_id_seq";
       public          postgres    false    224            e           0    0    Personal_personal_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Personal_personal_id_seq" OWNED BY public.personal.personal_id;
          public          postgres    false    225            �            1259    16888 	   planeType    TABLE     �   CREATE TABLE public."planeType" (
    plane_type_id integer NOT NULL,
    model character varying(100),
    capacity character varying(100)
);
    DROP TABLE public."planeType";
       public         heap    postgres    false            �            1259    16891    PlaneType_plane_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PlaneType_plane_type_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."PlaneType_plane_type_id_seq";
       public          postgres    false    227            f           0    0    PlaneType_plane_type_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."PlaneType_plane_type_id_seq" OWNED BY public."planeType".plane_type_id;
          public          postgres    false    228            �            1259    16885    plane    TABLE     �   CREATE TABLE public.plane (
    plane_id bigint NOT NULL,
    plane_type_id integer,
    registration_number character varying(20) NOT NULL,
    "airlineCompany_id" integer
);
    DROP TABLE public.plane;
       public         heap    postgres    false            �            1259    16892    Plane_plane_id_seq    SEQUENCE     }   CREATE SEQUENCE public."Plane_plane_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."Plane_plane_id_seq";
       public          postgres    false    226            g           0    0    Plane_plane_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Plane_plane_id_seq" OWNED BY public.plane.plane_id;
          public          postgres    false    229            �            1259    16893    ticket    TABLE     �   CREATE TABLE public.ticket (
    ticket_id integer NOT NULL,
    flight_id integer,
    account_id integer,
    seat_number character varying(10)
);
    DROP TABLE public.ticket;
       public         heap    postgres    false            �            1259    16896    Ticket_ticket_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Ticket_ticket_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public."Ticket_ticket_id_seq";
       public          postgres    false    230            h           0    0    Ticket_ticket_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Ticket_ticket_id_seq" OWNED BY public.ticket.ticket_id;
          public          postgres    false    231            �           2604    16897    account account_id    DEFAULT     z   ALTER TABLE ONLY public.account ALTER COLUMN account_id SET DEFAULT nextval('public."Account_account_id_seq"'::regclass);
 A   ALTER TABLE public.account ALTER COLUMN account_id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    16898    address address_id    DEFAULT     z   ALTER TABLE ONLY public.address ALTER COLUMN address_id SET DEFAULT nextval('public."Address_address_id_seq"'::regclass);
 A   ALTER TABLE public.address ALTER COLUMN address_id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    16899 "   airlineCompany ailrline_company_id    DEFAULT     �   ALTER TABLE ONLY public."airlineCompany" ALTER COLUMN ailrline_company_id SET DEFAULT nextval('public."AirlineCompany_ailrline_id_seq"'::regclass);
 S   ALTER TABLE public."airlineCompany" ALTER COLUMN ailrline_company_id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    16900    airport airport_id    DEFAULT     z   ALTER TABLE ONLY public.airport ALTER COLUMN airport_id SET DEFAULT nextval('public."Airport_airport_id_seq"'::regclass);
 A   ALTER TABLE public.airport ALTER COLUMN airport_id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    16901    flight flight_id    DEFAULT     v   ALTER TABLE ONLY public.flight ALTER COLUMN flight_id SET DEFAULT nextval('public."Flight_flight_id_seq"'::regclass);
 ?   ALTER TABLE public.flight ALTER COLUMN flight_id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    16902    personal personal_id    DEFAULT     ~   ALTER TABLE ONLY public.personal ALTER COLUMN personal_id SET DEFAULT nextval('public."Personal_personal_id_seq"'::regclass);
 C   ALTER TABLE public.personal ALTER COLUMN personal_id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    16903    plane plane_id    DEFAULT     r   ALTER TABLE ONLY public.plane ALTER COLUMN plane_id SET DEFAULT nextval('public."Plane_plane_id_seq"'::regclass);
 =   ALTER TABLE public.plane ALTER COLUMN plane_id DROP DEFAULT;
       public          postgres    false    229    226            �           2604    16904    planeType plane_type_id    DEFAULT     �   ALTER TABLE ONLY public."planeType" ALTER COLUMN plane_type_id SET DEFAULT nextval('public."PlaneType_plane_type_id_seq"'::regclass);
 H   ALTER TABLE public."planeType" ALTER COLUMN plane_type_id DROP DEFAULT;
       public          postgres    false    228    227            �           2604    16905    ticket ticket_id    DEFAULT     v   ALTER TABLE ONLY public.ticket ALTER COLUMN ticket_id SET DEFAULT nextval('public."Ticket_ticket_id_seq"'::regclass);
 ?   ALTER TABLE public.ticket ALTER COLUMN ticket_id DROP DEFAULT;
       public          postgres    false    231    230            H          0    16860    account 
   TABLE DATA           c   COPY public.account (account_id, username, password, e_mail, created_at, account_type) FROM stdin;
    public          postgres    false    214   qa       J          0    16865    address 
   TABLE DATA           d   COPY public.address (address_id, street, city, state, postal_code, country, account_id) FROM stdin;
    public          postgres    false    216   �a       L          0    16869    airlineCompany 
   TABLE DATA           `   COPY public."airlineCompany" (ailrline_company_id, name, country, established_date) FROM stdin;
    public          postgres    false    218   �a       N          0    16873    airport 
   TABLE DATA           H   COPY public.airport (airport_id, name, city, country, code) FROM stdin;
    public          postgres    false    220   
b       P          0    16877    flight 
   TABLE DATA           �   COPY public.flight (flight_id, airline_id, departure_airport_id, destination_airport_id, departure_time, arrival_time, plane_id) FROM stdin;
    public          postgres    false    222   'b       R          0    16881    personal 
   TABLE DATA           Z   COPY public.personal (personal_id, first_name, last_name, birth_date, gender) FROM stdin;
    public          postgres    false    224   Db       T          0    16885    plane 
   TABLE DATA           b   COPY public.plane (plane_id, plane_type_id, registration_number, "airlineCompany_id") FROM stdin;
    public          postgres    false    226   ab       U          0    16888 	   planeType 
   TABLE DATA           E   COPY public."planeType" (plane_type_id, model, capacity) FROM stdin;
    public          postgres    false    227   ~b       X          0    16893    ticket 
   TABLE DATA           O   COPY public.ticket (ticket_id, flight_id, account_id, seat_number) FROM stdin;
    public          postgres    false    230   �b       i           0    0    Account_account_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Account_account_id_seq"', 2, true);
          public          postgres    false    215            j           0    0    Address_address_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Address_address_id_seq"', 1, false);
          public          postgres    false    217            k           0    0    AirlineCompany_ailrline_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."AirlineCompany_ailrline_id_seq"', 1, false);
          public          postgres    false    219            l           0    0    Airport_airport_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Airport_airport_id_seq"', 1, false);
          public          postgres    false    221            m           0    0    Flight_flight_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Flight_flight_id_seq"', 1, false);
          public          postgres    false    223            n           0    0    Personal_personal_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."Personal_personal_id_seq"', 1, false);
          public          postgres    false    225            o           0    0    PlaneType_plane_type_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."PlaneType_plane_type_id_seq"', 1, true);
          public          postgres    false    228            p           0    0    Plane_plane_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Plane_plane_id_seq"', 1, false);
          public          postgres    false    229            q           0    0    Ticket_ticket_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Ticket_ticket_id_seq"', 1, false);
          public          postgres    false    231            �           2606    16907    account Account_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.account
    ADD CONSTRAINT "Account_pkey" PRIMARY KEY (account_id);
 @   ALTER TABLE ONLY public.account DROP CONSTRAINT "Account_pkey";
       public            postgres    false    214            �           2606    16911 "   airlineCompany AirlineCompany_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public."airlineCompany"
    ADD CONSTRAINT "AirlineCompany_pkey" PRIMARY KEY (ailrline_company_id);
 P   ALTER TABLE ONLY public."airlineCompany" DROP CONSTRAINT "AirlineCompany_pkey";
       public            postgres    false    218            �           2606    16913    airport Airport_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.airport
    ADD CONSTRAINT "Airport_pkey" PRIMARY KEY (airport_id);
 @   ALTER TABLE ONLY public.airport DROP CONSTRAINT "Airport_pkey";
       public            postgres    false    220            �           2606    16915    flight Flight_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT "Flight_pkey" PRIMARY KEY (flight_id);
 >   ALTER TABLE ONLY public.flight DROP CONSTRAINT "Flight_pkey";
       public            postgres    false    222            �           2606    16917    personal Personal_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.personal
    ADD CONSTRAINT "Personal_pkey" PRIMARY KEY (personal_id);
 B   ALTER TABLE ONLY public.personal DROP CONSTRAINT "Personal_pkey";
       public            postgres    false    224            �           2606    16919    planeType PlaneType_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public."planeType"
    ADD CONSTRAINT "PlaneType_pkey" PRIMARY KEY (plane_type_id);
 F   ALTER TABLE ONLY public."planeType" DROP CONSTRAINT "PlaneType_pkey";
       public            postgres    false    227            �           2606    16921    plane Plane_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.plane
    ADD CONSTRAINT "Plane_pkey" PRIMARY KEY (plane_id);
 <   ALTER TABLE ONLY public.plane DROP CONSTRAINT "Plane_pkey";
       public            postgres    false    226            �           2606    16923    ticket Ticket_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT "Ticket_pkey" PRIMARY KEY (ticket_id);
 >   ALTER TABLE ONLY public.ticket DROP CONSTRAINT "Ticket_pkey";
       public            postgres    false    230            �           2606    16984    address addresspk 
   CONSTRAINT     c   ALTER TABLE ONLY public.address
    ADD CONSTRAINT addresspk PRIMARY KEY (address_id, account_id);
 ;   ALTER TABLE ONLY public.address DROP CONSTRAINT addresspk;
       public            postgres    false    216    216            �           1259    16925    fki_AirlineCompanyFK    INDEX     O   CREATE INDEX "fki_AirlineCompanyFK" ON public.flight USING btree (airline_id);
 *   DROP INDEX public."fki_AirlineCompanyFK";
       public            postgres    false    222            �           1259    16926    fki_DepartureFK    INDEX     T   CREATE INDEX "fki_DepartureFK" ON public.flight USING btree (departure_airport_id);
 %   DROP INDEX public."fki_DepartureFK";
       public            postgres    false    222            �           1259    16927    fki_DestinationFK    INDEX     X   CREATE INDEX "fki_DestinationFK" ON public.flight USING btree (destination_airport_id);
 '   DROP INDEX public."fki_DestinationFK";
       public            postgres    false    222            �           1259    16928    fki_a    INDEX     @   CREATE INDEX fki_a ON public.plane USING btree (plane_type_id);
    DROP INDEX public.fki_a;
       public            postgres    false    226            �           1259    16930    fki_flightFK    INDEX     F   CREATE INDEX "fki_flightFK" ON public.ticket USING btree (flight_id);
 "   DROP INDEX public."fki_flightFK";
       public            postgres    false    230            �           1259    16931    fki_personalFK    INDEX     I   CREATE INDEX "fki_personalFK" ON public.ticket USING btree (account_id);
 $   DROP INDEX public."fki_personalFK";
       public            postgres    false    230            �           1259    16932    fki_planeFK    INDEX     D   CREATE INDEX "fki_planeFK" ON public.flight USING btree (plane_id);
 !   DROP INDEX public."fki_planeFK";
       public            postgres    false    222            �           2606    16933    flight AirlineCompanyFK    FK CONSTRAINT     �   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT "AirlineCompanyFK" FOREIGN KEY (airline_id) REFERENCES public."airlineCompany"(ailrline_company_id) NOT VALID;
 C   ALTER TABLE ONLY public.flight DROP CONSTRAINT "AirlineCompanyFK";
       public          postgres    false    3229    218    222            �           2606    16938    flight DepartureFK    FK CONSTRAINT     �   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT "DepartureFK" FOREIGN KEY (departure_airport_id) REFERENCES public.airport(airport_id) NOT VALID;
 >   ALTER TABLE ONLY public.flight DROP CONSTRAINT "DepartureFK";
       public          postgres    false    222    3231    220            �           2606    16943    flight DestinationFK    FK CONSTRAINT     �   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT "DestinationFK" FOREIGN KEY (destination_airport_id) REFERENCES public.airport(airport_id) NOT VALID;
 @   ALTER TABLE ONLY public.flight DROP CONSTRAINT "DestinationFK";
       public          postgres    false    3231    220    222            �           2606    16990    ticket account_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT "account_FK" FOREIGN KEY (account_id) REFERENCES public.account(account_id) NOT VALID;
 =   ALTER TABLE ONLY public.ticket DROP CONSTRAINT "account_FK";
       public          postgres    false    3225    230    214            �           2606    16978    address account_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT account_fk FOREIGN KEY (account_id) REFERENCES public.account(account_id) NOT VALID;
 <   ALTER TABLE ONLY public.address DROP CONSTRAINT account_fk;
       public          postgres    false    216    3225    214            �           2606    16985    plane airlineCompany_FK    FK CONSTRAINT     �   ALTER TABLE ONLY public.plane
    ADD CONSTRAINT "airlineCompany_FK" FOREIGN KEY ("airlineCompany_id") REFERENCES public."airlineCompany"(ailrline_company_id) NOT VALID;
 C   ALTER TABLE ONLY public.plane DROP CONSTRAINT "airlineCompany_FK";
       public          postgres    false    226    218    3229            �           2606    16958    ticket flightFK    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT "flightFK" FOREIGN KEY (flight_id) REFERENCES public.flight(flight_id) NOT VALID;
 ;   ALTER TABLE ONLY public.ticket DROP CONSTRAINT "flightFK";
       public          postgres    false    222    3233    230            �           2606    16968    flight planeFK    FK CONSTRAINT     �   ALTER TABLE ONLY public.flight
    ADD CONSTRAINT "planeFK" FOREIGN KEY (plane_id) REFERENCES public.plane(plane_id) NOT VALID;
 :   ALTER TABLE ONLY public.flight DROP CONSTRAINT "planeFK";
       public          postgres    false    222    226    3241            �           2606    16973    plane planeTypeFK    FK CONSTRAINT     �   ALTER TABLE ONLY public.plane
    ADD CONSTRAINT "planeTypeFK" FOREIGN KEY (plane_type_id) REFERENCES public."planeType"(plane_type_id) NOT VALID;
 =   ALTER TABLE ONLY public.plane DROP CONSTRAINT "planeTypeFK";
       public          postgres    false    3244    226    227            H   O   x�3�L/�K-�44261���s3s���s9��LtLu��H���Ӑˈ31#7���F�fh ԉ�-F��� �x�      J      x������ � �      L      x������ � �      N      x������ � �      P      x������ � �      R      x������ � �      T      x������ � �      U   )   x�3�,H,.N�KO-�445�2�LN,J��420������ �.@      X      x������ � �     