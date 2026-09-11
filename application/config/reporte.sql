CREATE SCHEMA reportedsr;


ALTER SCHEMA reportedsr OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 222 (class 1259 OID 20212)
-- Name: detallemn; Type: TABLE; Schema: reportedsr; Owner: postgres
--

CREATE TABLE reportedsr.detallemn (
    id bigint NOT NULL,
    idequipo bigint NOT NULL,
    idinstitucion bigint NOT NULL,
    cantidad bigint NOT NULL
);


ALTER TABLE reportedsr.detallemn OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 20210)
-- Name: detallemn_id_seq; Type: SEQUENCE; Schema: reportedsr; Owner: postgres
--

CREATE SEQUENCE reportedsr.detallemn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reportedsr.detallemn_id_seq OWNER TO postgres;

--
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 221
-- Name: detallemn_id_seq; Type: SEQUENCE OWNED BY; Schema: reportedsr; Owner: postgres
--

ALTER SEQUENCE reportedsr.detallemn_id_seq OWNED BY reportedsr.detallemn.id;


--
-- TOC entry 224 (class 1259 OID 20220)
-- Name: detallert; Type: TABLE; Schema: reportedsr; Owner: postgres
--

CREATE TABLE reportedsr.detallert (
    id bigint NOT NULL,
    idequipo bigint NOT NULL,
    idinstitucion bigint NOT NULL,
    tipo bigint NOT NULL,
    cantidad bigint NOT NULL
);


ALTER TABLE reportedsr.detallert OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 20218)
-- Name: detallert_id_seq; Type: SEQUENCE; Schema: reportedsr; Owner: postgres
--

CREATE SEQUENCE reportedsr.detallert_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reportedsr.detallert_id_seq OWNER TO postgres;

--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 223
-- Name: detallert_id_seq; Type: SEQUENCE OWNED BY; Schema: reportedsr; Owner: postgres
--

ALTER SEQUENCE reportedsr.detallert_id_seq OWNED BY reportedsr.detallert.id;


--
-- TOC entry 226 (class 1259 OID 20228)
-- Name: equipos; Type: TABLE; Schema: reportedsr; Owner: postgres
--

CREATE TABLE reportedsr.equipos (
    id bigint NOT NULL,
    nombre text NOT NULL,
    idservicio bigint NOT NULL,
    marca text NOT NULL,
    modelo text NOT NULL,
    serial text NOT NULL,
    idinstitucion bigint NOT NULL,
    idtipo bigint NOT NULL
);


ALTER TABLE reportedsr.equipos OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 20226)
-- Name: equipos_id_seq; Type: SEQUENCE; Schema: reportedsr; Owner: postgres
--

CREATE SEQUENCE reportedsr.equipos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reportedsr.equipos_id_seq OWNER TO postgres;

--
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 225
-- Name: equipos_id_seq; Type: SEQUENCE OWNED BY; Schema: reportedsr; Owner: postgres
--

ALTER SEQUENCE reportedsr.equipos_id_seq OWNED BY reportedsr.equipos.id;


--
-- TOC entry 214 (class 1259 OID 20156)
-- Name: estados; Type: TABLE; Schema: reportedsr; Owner: postgres
--

CREATE TABLE reportedsr.estados (
    id bigint NOT NULL,
    nombre text,
    region character(10)
);


ALTER TABLE reportedsr.estados OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 20154)
-- Name: estados_id_seq; Type: SEQUENCE; Schema: reportedsr; Owner: postgres
--

CREATE SEQUENCE reportedsr.estados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reportedsr.estados_id_seq OWNER TO postgres;

--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 213
-- Name: estados_id_seq; Type: SEQUENCE OWNED BY; Schema: reportedsr; Owner: postgres
--

ALTER SEQUENCE reportedsr.estados_id_seq OWNED BY reportedsr.estados.id;


--
-- TOC entry 206 (class 1259 OID 20079)
-- Name: institucion; Type: TABLE; Schema: reportedsr; Owner: postgres
--

CREATE TABLE reportedsr.institucion (
    id bigint NOT NULL,
    nombre text,
    rimfri text,
    estado bigint,
    municipio bigint,
    parroquia bigint,
    director text,
    telefono text,
    correo text,
    idreporte bigint,
    direccion text,
    osr text
);


ALTER TABLE reportedsr.institucion OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 20077)
-- Name: institucion_id_seq; Type: SEQUENCE; Schema: reportedsr; Owner: postgres
--

CREATE SEQUENCE reportedsr.institucion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reportedsr.institucion_id_seq OWNER TO postgres;

--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 205
-- Name: institucion_id_seq; Type: SEQUENCE OWNED BY; Schema: reportedsr; Owner: postgres
--

ALTER SEQUENCE reportedsr.institucion_id_seq OWNED BY reportedsr.institucion.id;


--
-- TOC entry 210 (class 1259 OID 20113)
-- Name: medicinanuclear; Type: TABLE; Schema: reportedsr; Owner: postgres
--

CREATE TABLE reportedsr.medicinanuclear (
    id bigint NOT NULL,
    idinstitucion bigint,
    idreporte bigint,
    equipo_portatil bigint,
    actimetro bigint,
    batas bigint,
    guantes bigint,
    pinzas bigint,
    cont_superficial bigint,
    cont_interna bigint,
    cuarto_caliente bigint,
    medicos bigint,
    fisicos bigint,
    tecnicos bigint,
    otros bigint,
    tiposervicio bigint,
    pacientes bigint,
    campana bigint,
    calibrado bigint,
    fecha_calibracion date
);


ALTER TABLE reportedsr.medicinanuclear OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 20111)
-- Name: medicinanuclear_id_seq; Type: SEQUENCE; Schema: reportedsr; Owner: postgres
--

CREATE SEQUENCE reportedsr.medicinanuclear_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reportedsr.medicinanuclear_id_seq OWNER TO postgres;

--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 209
-- Name: medicinanuclear_id_seq; Type: SEQUENCE OWNED BY; Schema: reportedsr; Owner: postgres
--

ALTER SEQUENCE reportedsr.medicinanuclear_id_seq OWNED BY reportedsr.medicinanuclear.id;


--
-- TOC entry 216 (class 1259 OID 20167)
-- Name: municipios; Type: TABLE; Schema: reportedsr; Owner: postgres
--

CREATE TABLE reportedsr.municipios (
    id bigint NOT NULL,
    nombre text,
    idestado bigint
);


ALTER TABLE reportedsr.municipios OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 20165)
-- Name: municipios_id_seq; Type: SEQUENCE; Schema: reportedsr; Owner: postgres
--

CREATE SEQUENCE reportedsr.municipios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reportedsr.municipios_id_seq OWNER TO postgres;

--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 215
-- Name: municipios_id_seq; Type: SEQUENCE OWNED BY; Schema: reportedsr; Owner: postgres
--

ALTER SEQUENCE reportedsr.municipios_id_seq OWNED BY reportedsr.municipios.id;


--
-- TOC entry 218 (class 1259 OID 20178)
-- Name: parroquias; Type: TABLE; Schema: reportedsr; Owner: postgres
--

CREATE TABLE reportedsr.parroquias (
    id bigint NOT NULL,
    nombre text,
    idmunicipio bigint,
    idestado bigint
);


ALTER TABLE reportedsr.parroquias OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 20176)
-- Name: parroquias_id_seq; Type: SEQUENCE; Schema: reportedsr; Owner: postgres
--

CREATE SEQUENCE reportedsr.parroquias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reportedsr.parroquias_id_seq OWNER TO postgres;

--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 217
-- Name: parroquias_id_seq; Type: SEQUENCE OWNED BY; Schema: reportedsr; Owner: postgres
--

ALTER SEQUENCE reportedsr.parroquias_id_seq OWNED BY reportedsr.parroquias.id;


--
-- TOC entry 208 (class 1259 OID 20095)
-- Name: radiodiagnostico; Type: TABLE; Schema: reportedsr; Owner: postgres
--

CREATE TABLE reportedsr.radiodiagnostico (
    id bigint NOT NULL,
    idinstitucion bigint,
    convencional_fijo bigint,
    convencional_movil bigint,
    fluoroscopia bigint,
    telecomandos bigint,
    tomografo bigint,
    mamografo bigint,
    hemodinamia bigint,
    densitometria_osea bigint,
    periapical bigint,
    resonancia_magnetica bigint,
    panoramico bigint,
    angiografo bigint,
    arco_en_c bigint,
    senalizacion bigint,
    blindaje bigint,
    petos bigint,
    lentes bigint,
    tiroide bigint,
    gonodas bigint,
    guantes bigint,
    medicos bigint,
    odontologos bigint,
    fisicos bigint,
    tecnicos bigint,
    asistentes bigint,
    auxiliares bigint,
    idreporte bigint
);


ALTER TABLE reportedsr.radiodiagnostico OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 20093)
-- Name: radiodiagnostico_id_seq; Type: SEQUENCE; Schema: reportedsr; Owner: postgres
--

CREATE SEQUENCE reportedsr.radiodiagnostico_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reportedsr.radiodiagnostico_id_seq OWNER TO postgres;

--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 207
-- Name: radiodiagnostico_id_seq; Type: SEQUENCE OWNED BY; Schema: reportedsr; Owner: postgres
--

ALTER SEQUENCE reportedsr.radiodiagnostico_id_seq OWNED BY reportedsr.radiodiagnostico.id;


--
-- TOC entry 212 (class 1259 OID 20131)
-- Name: radioterapia; Type: TABLE; Schema: reportedsr; Owner: postgres
--

CREATE TABLE reportedsr.radioterapia (
    id bigint NOT NULL,
    idinstitucion bigint NOT NULL,
    idreporte bigint NOT NULL,
    medicos bigint,
    fisicos bigint,
    tecnicos bigint,
    manual_procedimientos bigint,
    programa_proteccion bigint,
    programa_aseguramiento_calidad bigint,
    permiso_sanitario text,
    conformidad_sanitaria text
);


ALTER TABLE reportedsr.radioterapia OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 20129)
-- Name: radioterapia_id_seq; Type: SEQUENCE; Schema: reportedsr; Owner: postgres
--

CREATE SEQUENCE reportedsr.radioterapia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reportedsr.radioterapia_id_seq OWNER TO postgres;

--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 211
-- Name: radioterapia_id_seq; Type: SEQUENCE OWNED BY; Schema: reportedsr; Owner: postgres
--

ALTER SEQUENCE reportedsr.radioterapia_id_seq OWNED BY reportedsr.radioterapia.id;


--
-- TOC entry 204 (class 1259 OID 20068)
-- Name: reporte; Type: TABLE; Schema: reportedsr; Owner: postgres
--

CREATE TABLE reportedsr.reporte (
    id bigint NOT NULL,
    nombre text,
    tipo bigint,
    estructurales bigint,
    operativo bigint,
    evaluacion bigint,
    control bigint,
    calibracion bigint,
    fuentes bigint,
    dosimetria bigint,
    longitud double precision,
    latitud double precision,
    fecha_ult_calibracion date
);


ALTER TABLE reportedsr.reporte OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 20066)
-- Name: reporte_id_seq; Type: SEQUENCE; Schema: reportedsr; Owner: postgres
--

CREATE SEQUENCE reportedsr.reporte_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reportedsr.reporte_id_seq OWNER TO postgres;

--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 203
-- Name: reporte_id_seq; Type: SEQUENCE OWNED BY; Schema: reportedsr; Owner: postgres
--

ALTER SEQUENCE reportedsr.reporte_id_seq OWNED BY reportedsr.reporte.id;


--
-- TOC entry 228 (class 1259 OID 20239)
-- Name: tipoequipo; Type: TABLE; Schema: reportedsr; Owner: postgres
--

CREATE TABLE reportedsr.tipoequipo (
    id bigint NOT NULL,
    nombre text NOT NULL,
    hpadre bigint
);


ALTER TABLE reportedsr.tipoequipo OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 20237)
-- Name: tipoequipo_id_seq; Type: SEQUENCE; Schema: reportedsr; Owner: postgres
--

CREATE SEQUENCE reportedsr.tipoequipo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reportedsr.tipoequipo_id_seq OWNER TO postgres;

--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 227
-- Name: tipoequipo_id_seq; Type: SEQUENCE OWNED BY; Schema: reportedsr; Owner: postgres
--

ALTER SEQUENCE reportedsr.tipoequipo_id_seq OWNED BY reportedsr.tipoequipo.id;


--
-- TOC entry 220 (class 1259 OID 20200)
-- Name: usuarios; Type: TABLE; Schema: reportedsr; Owner: postgres
--

CREATE TABLE reportedsr.usuarios (
    id bigint NOT NULL,
    nombre text,
    login character(8),
    clave text,
    idsistema bigint,
    estatus bigint,
    correo text,
    telefono text
);


ALTER TABLE reportedsr.usuarios OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 20198)
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: reportedsr; Owner: postgres
--

CREATE SEQUENCE reportedsr.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE reportedsr.usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 219
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: reportedsr; Owner: postgres
--

ALTER SEQUENCE reportedsr.usuarios_id_seq OWNED BY reportedsr.usuarios.id;


--
-- TOC entry 2887 (class 2604 OID 20215)
-- Name: detallemn id; Type: DEFAULT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.detallemn ALTER COLUMN id SET DEFAULT nextval('reportedsr.detallemn_id_seq'::regclass);


--
-- TOC entry 2888 (class 2604 OID 20223)
-- Name: detallert id; Type: DEFAULT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.detallert ALTER COLUMN id SET DEFAULT nextval('reportedsr.detallert_id_seq'::regclass);


--
-- TOC entry 2889 (class 2604 OID 20231)
-- Name: equipos id; Type: DEFAULT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.equipos ALTER COLUMN id SET DEFAULT nextval('reportedsr.equipos_id_seq'::regclass);


--
-- TOC entry 2883 (class 2604 OID 20159)
-- Name: estados id; Type: DEFAULT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.estados ALTER COLUMN id SET DEFAULT nextval('reportedsr.estados_id_seq'::regclass);


--
-- TOC entry 2879 (class 2604 OID 20082)
-- Name: institucion id; Type: DEFAULT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.institucion ALTER COLUMN id SET DEFAULT nextval('reportedsr.institucion_id_seq'::regclass);


--
-- TOC entry 2881 (class 2604 OID 20116)
-- Name: medicinanuclear id; Type: DEFAULT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.medicinanuclear ALTER COLUMN id SET DEFAULT nextval('reportedsr.medicinanuclear_id_seq'::regclass);


--
-- TOC entry 2884 (class 2604 OID 20170)
-- Name: municipios id; Type: DEFAULT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.municipios ALTER COLUMN id SET DEFAULT nextval('reportedsr.municipios_id_seq'::regclass);


--
-- TOC entry 2885 (class 2604 OID 20181)
-- Name: parroquias id; Type: DEFAULT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.parroquias ALTER COLUMN id SET DEFAULT nextval('reportedsr.parroquias_id_seq'::regclass);


--
-- TOC entry 2880 (class 2604 OID 20098)
-- Name: radiodiagnostico id; Type: DEFAULT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.radiodiagnostico ALTER COLUMN id SET DEFAULT nextval('reportedsr.radiodiagnostico_id_seq'::regclass);


--
-- TOC entry 2882 (class 2604 OID 20134)
-- Name: radioterapia id; Type: DEFAULT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.radioterapia ALTER COLUMN id SET DEFAULT nextval('reportedsr.radioterapia_id_seq'::regclass);


--
-- TOC entry 2878 (class 2604 OID 20071)
-- Name: reporte id; Type: DEFAULT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.reporte ALTER COLUMN id SET DEFAULT nextval('reportedsr.reporte_id_seq'::regclass);


--
-- TOC entry 2890 (class 2604 OID 20242)
-- Name: tipoequipo id; Type: DEFAULT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.tipoequipo ALTER COLUMN id SET DEFAULT nextval('reportedsr.tipoequipo_id_seq'::regclass);


--
-- TOC entry 2886 (class 2604 OID 20203)
-- Name: usuarios id; Type: DEFAULT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.usuarios ALTER COLUMN id SET DEFAULT nextval('reportedsr.usuarios_id_seq'::regclass);


--
-- TOC entry 3071 (class 0 OID 20212)
-- Dependencies: 222
-- Data for Name: detallemn; Type: TABLE DATA; Schema: reportedsr; Owner: postgres
--



--
-- TOC entry 3073 (class 0 OID 20220)
-- Dependencies: 224
-- Data for Name: detallert; Type: TABLE DATA; Schema: reportedsr; Owner: postgres
--



--
-- TOC entry 3075 (class 0 OID 20228)
-- Dependencies: 226
-- Data for Name: equipos; Type: TABLE DATA; Schema: reportedsr; Owner: postgres
--



--
-- TOC entry 3063 (class 0 OID 20156)
-- Dependencies: 214
-- Data for Name: estados; Type: TABLE DATA; Schema: reportedsr; Owner: postgres
--

INSERT INTO reportedsr.estados VALUES (1, 'Aragua', 'I');
INSERT INTO reportedsr.estados VALUES (2, 'Carabobo', 'II');
INSERT INTO reportedsr.estados VALUES (3, 'Bolivar', 'III');
INSERT INTO reportedsr.estados VALUES (4, 'Monagas', 'IV');
INSERT INTO reportedsr.estados VALUES (5, 'Anzoategui', 'V ');
INSERT INTO reportedsr.estados VALUES (6, 'Lara', 'VI');
INSERT INTO reportedsr.estados VALUES (7, 'Portuguesa', 'VII');
INSERT INTO reportedsr.estados VALUES (8, 'Trujillo', 'VIII');
INSERT INTO reportedsr.estados VALUES (9, 'Barinas', 'IX');
INSERT INTO reportedsr.estados VALUES (10, 'Distrito Capital', 'X ');
INSERT INTO reportedsr.estados VALUES (11, 'Sucre', 'XI');
INSERT INTO reportedsr.estados VALUES (12, 'Falcon', 'XII');
INSERT INTO reportedsr.estados VALUES (13, 'Guarico', 'XIII');
INSERT INTO reportedsr.estados VALUES (14, 'Yaracuy', 'XIV');
INSERT INTO reportedsr.estados VALUES (15, 'Zulia', 'XV');
INSERT INTO reportedsr.estados VALUES (16, 'Tachira', 'XVI');
INSERT INTO reportedsr.estados VALUES (17, 'Apure', 'XVII');
INSERT INTO reportedsr.estados VALUES (18, 'Merida', 'XVIII');
INSERT INTO reportedsr.estados VALUES (19, 'Amazonas', 'XIX');
INSERT INTO reportedsr.estados VALUES (20, 'Miranda', 'XX');
INSERT INTO reportedsr.estados VALUES (21, 'Nueva Esparta', 'XXI');
INSERT INTO reportedsr.estados VALUES (22, 'Cojedes', 'XXII');
INSERT INTO reportedsr.estados VALUES (23, 'Delta Amacuro', 'XXIII');
INSERT INTO reportedsr.estados VALUES (24, 'La Guaira', 'XXIV');


--
-- TOC entry 3055 (class 0 OID 20079)
-- Dependencies: 206
-- Data for Name: institucion; Type: TABLE DATA; Schema: reportedsr; Owner: postgres
--

INSERT INTO reportedsr.institucion VALUES (1, 'Guadalupe', '212122', 1, 4, 12, 'prueba', '04125066130', 'robetorr311@gmail.com', 3, 'trtevcxx fd', NULL);


--
-- TOC entry 3059 (class 0 OID 20113)
-- Dependencies: 210
-- Data for Name: medicinanuclear; Type: TABLE DATA; Schema: reportedsr; Owner: postgres
--



--
-- TOC entry 3065 (class 0 OID 20167)
-- Dependencies: 216
-- Data for Name: municipios; Type: TABLE DATA; Schema: reportedsr; Owner: postgres
--

INSERT INTO reportedsr.municipios VALUES (1, 'Tomas Lander', 20);
INSERT INTO reportedsr.municipios VALUES (2, 'Camatagua', 1);
INSERT INTO reportedsr.municipios VALUES (3, 'Francisco L. Alcantara', 1);
INSERT INTO reportedsr.municipios VALUES (4, 'Girardot', 1);
INSERT INTO reportedsr.municipios VALUES (5, 'Jose Angel Lamas', 1);
INSERT INTO reportedsr.municipios VALUES (6, 'Jose Felix Ribas', 1);
INSERT INTO reportedsr.municipios VALUES (7, 'Bejuma', 2);
INSERT INTO reportedsr.municipios VALUES (8, 'Andres E. Blanco', 11);
INSERT INTO reportedsr.municipios VALUES (9, 'Andres Mata', 11);
INSERT INTO reportedsr.municipios VALUES (10, 'Arismendi', 11);
INSERT INTO reportedsr.municipios VALUES (11, 'Benitez', 11);
INSERT INTO reportedsr.municipios VALUES (12, 'Bermudez', 11);
INSERT INTO reportedsr.municipios VALUES (13, 'Bolivar', 11);
INSERT INTO reportedsr.municipios VALUES (14, 'Cajigal', 11);
INSERT INTO reportedsr.municipios VALUES (15, 'Cruz Salmeron A.', 11);
INSERT INTO reportedsr.municipios VALUES (16, 'Almirante Padilla', 15);
INSERT INTO reportedsr.municipios VALUES (17, 'Antolín Del Campo', 21);
INSERT INTO reportedsr.municipios VALUES (18, 'Jose R. Revenga', 1);
INSERT INTO reportedsr.municipios VALUES (19, 'Libertador', 1);
INSERT INTO reportedsr.municipios VALUES (20, 'Mario Briceño Irragorry', 1);
INSERT INTO reportedsr.municipios VALUES (21, 'Ocumare de la C. de Oro', 1);
INSERT INTO reportedsr.municipios VALUES (22, 'San Casimiro', 1);
INSERT INTO reportedsr.municipios VALUES (23, 'San Sebastian', 1);
INSERT INTO reportedsr.municipios VALUES (24, 'Santiago Mariño', 1);
INSERT INTO reportedsr.municipios VALUES (25, 'Santos Michelena', 1);
INSERT INTO reportedsr.municipios VALUES (26, 'Sucre', 1);
INSERT INTO reportedsr.municipios VALUES (28, 'Urdaneta', 1);
INSERT INTO reportedsr.municipios VALUES (29, 'Zamora', 1);
INSERT INTO reportedsr.municipios VALUES (30, 'Carlos Arvelo', 2);
INSERT INTO reportedsr.municipios VALUES (31, 'Diego Ibarra', 2);
INSERT INTO reportedsr.municipios VALUES (32, 'Guacara', 2);
INSERT INTO reportedsr.municipios VALUES (33, 'Juan Jose Mora', 2);
INSERT INTO reportedsr.municipios VALUES (34, 'Libertador', 2);
INSERT INTO reportedsr.municipios VALUES (35, 'Los Guayos', 2);
INSERT INTO reportedsr.municipios VALUES (36, 'Miranda', 2);
INSERT INTO reportedsr.municipios VALUES (37, 'Montalban', 2);
INSERT INTO reportedsr.municipios VALUES (38, 'Naguanagua', 2);
INSERT INTO reportedsr.municipios VALUES (39, 'Puerto Cabello', 2);
INSERT INTO reportedsr.municipios VALUES (40, 'San Diego', 2);
INSERT INTO reportedsr.municipios VALUES (41, 'San Joaquin', 2);
INSERT INTO reportedsr.municipios VALUES (42, 'Valencia', 2);
INSERT INTO reportedsr.municipios VALUES (43, 'Caroni', 3);
INSERT INTO reportedsr.municipios VALUES (44, 'Cedeño', 3);
INSERT INTO reportedsr.municipios VALUES (45, 'El Callao', 3);
INSERT INTO reportedsr.municipios VALUES (46, 'Gran Sabana', 3);
INSERT INTO reportedsr.municipios VALUES (47, 'Heres', 3);
INSERT INTO reportedsr.municipios VALUES (48, 'Piar', 3);
INSERT INTO reportedsr.municipios VALUES (49, 'Raul Leoni', 3);
INSERT INTO reportedsr.municipios VALUES (50, 'Roscio', 3);
INSERT INTO reportedsr.municipios VALUES (51, 'Sifontes', 3);
INSERT INTO reportedsr.municipios VALUES (52, 'Sucre', 3);
INSERT INTO reportedsr.municipios VALUES (53, 'Padre Pedro Chien', 3);
INSERT INTO reportedsr.municipios VALUES (54, 'Acosta', 4);
INSERT INTO reportedsr.municipios VALUES (55, 'Bolivar', 4);
INSERT INTO reportedsr.municipios VALUES (56, 'Caripe', 4);
INSERT INTO reportedsr.municipios VALUES (57, 'Cedeño', 4);
INSERT INTO reportedsr.municipios VALUES (58, 'Ezequiel Zamora', 4);
INSERT INTO reportedsr.municipios VALUES (59, 'Libertador', 4);
INSERT INTO reportedsr.municipios VALUES (60, 'Maturin', 4);
INSERT INTO reportedsr.municipios VALUES (61, 'Piar', 4);
INSERT INTO reportedsr.municipios VALUES (62, 'Punceres', 4);
INSERT INTO reportedsr.municipios VALUES (63, 'Santa Barbara', 4);
INSERT INTO reportedsr.municipios VALUES (64, 'Sotillo', 4);
INSERT INTO reportedsr.municipios VALUES (65, 'Uracoa', 4);
INSERT INTO reportedsr.municipios VALUES (66, 'Anaco', 5);
INSERT INTO reportedsr.municipios VALUES (67, 'Aragua', 5);
INSERT INTO reportedsr.municipios VALUES (68, 'Peñalver', 5);
INSERT INTO reportedsr.municipios VALUES (69, 'Francisco del Carmen Carv.', 5);
INSERT INTO reportedsr.municipios VALUES (70, 'Francisco de Miranda', 5);
INSERT INTO reportedsr.municipios VALUES (71, 'Guanta', 5);
INSERT INTO reportedsr.municipios VALUES (72, 'Independencia', 5);
INSERT INTO reportedsr.municipios VALUES (73, 'Sotillo', 5);
INSERT INTO reportedsr.municipios VALUES (74, 'Cajigal', 5);
INSERT INTO reportedsr.municipios VALUES (75, 'Monagas', 5);
INSERT INTO reportedsr.municipios VALUES (76, 'Libertad', 5);
INSERT INTO reportedsr.municipios VALUES (77, 'Bruzual', 5);
INSERT INTO reportedsr.municipios VALUES (78, 'Freites', 5);
INSERT INTO reportedsr.municipios VALUES (79, 'Piritu', 5);
INSERT INTO reportedsr.municipios VALUES (80, 'S. Jose de Guanipa', 5);
INSERT INTO reportedsr.municipios VALUES (81, 'S. Juan de Capistrano', 5);
INSERT INTO reportedsr.municipios VALUES (82, 'Santa Ana', 5);
INSERT INTO reportedsr.municipios VALUES (83, 'Simon Bolivar', 5);
INSERT INTO reportedsr.municipios VALUES (84, 'Simon Rodriguez', 5);
INSERT INTO reportedsr.municipios VALUES (85, 'Sir Arthur Mc Gregor', 5);
INSERT INTO reportedsr.municipios VALUES (86, 'Diego B. Urbaneja', 5);
INSERT INTO reportedsr.municipios VALUES (87, 'Andres E. Blanco', 6);
INSERT INTO reportedsr.municipios VALUES (88, 'Crespo', 6);
INSERT INTO reportedsr.municipios VALUES (89, 'Iribarren', 6);
INSERT INTO reportedsr.municipios VALUES (90, 'Jimenez', 6);
INSERT INTO reportedsr.municipios VALUES (91, 'Moran', 6);
INSERT INTO reportedsr.municipios VALUES (92, 'Palavecino', 6);
INSERT INTO reportedsr.municipios VALUES (93, 'Simon Planas', 6);
INSERT INTO reportedsr.municipios VALUES (94, 'Torres', 6);
INSERT INTO reportedsr.municipios VALUES (95, 'Urdaneta', 6);
INSERT INTO reportedsr.municipios VALUES (96, 'Agua Blanca', 7);
INSERT INTO reportedsr.municipios VALUES (97, 'Araure', 7);
INSERT INTO reportedsr.municipios VALUES (98, 'Esteller', 7);
INSERT INTO reportedsr.municipios VALUES (99, 'Guanare', 7);
INSERT INTO reportedsr.municipios VALUES (100, 'Guanarito', 7);
INSERT INTO reportedsr.municipios VALUES (101, 'Mons. Jose Vicente de Unda', 7);
INSERT INTO reportedsr.municipios VALUES (102, 'Ospino', 7);
INSERT INTO reportedsr.municipios VALUES (103, 'Paez', 7);
INSERT INTO reportedsr.municipios VALUES (104, 'Papelon', 7);
INSERT INTO reportedsr.municipios VALUES (105, 'Sn Genaro De Boconito', 7);
INSERT INTO reportedsr.municipios VALUES (106, 'Sn Rafael De Onoto', 7);
INSERT INTO reportedsr.municipios VALUES (107, 'Sucre', 7);
INSERT INTO reportedsr.municipios VALUES (108, 'Turen', 7);
INSERT INTO reportedsr.municipios VALUES (109, 'Sta Rosalia', 7);
INSERT INTO reportedsr.municipios VALUES (110, 'Andres Bello', 8);
INSERT INTO reportedsr.municipios VALUES (111, 'Bocono', 8);
INSERT INTO reportedsr.municipios VALUES (112, 'Bolivar', 8);
INSERT INTO reportedsr.municipios VALUES (113, 'Candelaria', 8);
INSERT INTO reportedsr.municipios VALUES (114, 'Carache', 8);
INSERT INTO reportedsr.municipios VALUES (115, 'Escuque', 8);
INSERT INTO reportedsr.municipios VALUES (116, 'Jose Felipe Marquez C.', 8);
INSERT INTO reportedsr.municipios VALUES (117, 'Juan Vicente Campo E.', 8);
INSERT INTO reportedsr.municipios VALUES (118, 'La Ceiba', 8);
INSERT INTO reportedsr.municipios VALUES (119, 'Miranda', 8);
INSERT INTO reportedsr.municipios VALUES (120, 'Monte Carmelo', 8);
INSERT INTO reportedsr.municipios VALUES (121, 'Motatan', 8);
INSERT INTO reportedsr.municipios VALUES (122, 'Pampan', 8);
INSERT INTO reportedsr.municipios VALUES (123, 'Pampanito', 8);
INSERT INTO reportedsr.municipios VALUES (124, 'Rafael Rangel', 8);
INSERT INTO reportedsr.municipios VALUES (125, 'San Rafael de Carvajal', 8);
INSERT INTO reportedsr.municipios VALUES (126, 'Sucre', 8);
INSERT INTO reportedsr.municipios VALUES (127, 'Trujillo', 8);
INSERT INTO reportedsr.municipios VALUES (128, 'Urdaneta', 8);
INSERT INTO reportedsr.municipios VALUES (129, 'Valera', 8);
INSERT INTO reportedsr.municipios VALUES (131, 'Alberto Arvelo Torr.', 9);
INSERT INTO reportedsr.municipios VALUES (132, 'Antonio J. de Sucre', 9);
INSERT INTO reportedsr.municipios VALUES (133, 'Arismendi', 9);
INSERT INTO reportedsr.municipios VALUES (134, 'Barinas', 9);
INSERT INTO reportedsr.municipios VALUES (135, 'Bolivar', 9);
INSERT INTO reportedsr.municipios VALUES (136, 'Cruz Paredes', 9);
INSERT INTO reportedsr.municipios VALUES (137, 'Ezequiel Zamora', 9);
INSERT INTO reportedsr.municipios VALUES (138, 'Obispos', 9);
INSERT INTO reportedsr.municipios VALUES (139, 'Pedraza', 9);
INSERT INTO reportedsr.municipios VALUES (140, 'Rojas', 9);
INSERT INTO reportedsr.municipios VALUES (141, 'Sosa', 9);
INSERT INTO reportedsr.municipios VALUES (142, 'Andres E. Blanco', 9);
INSERT INTO reportedsr.municipios VALUES (143, 'Libertador', 10);
INSERT INTO reportedsr.municipios VALUES (144, 'Libertador', 11);
INSERT INTO reportedsr.municipios VALUES (145, 'Mariño', 11);
INSERT INTO reportedsr.municipios VALUES (146, 'Mejia', 11);
INSERT INTO reportedsr.municipios VALUES (147, 'Montes', 11);
INSERT INTO reportedsr.municipios VALUES (148, 'Ribero', 11);
INSERT INTO reportedsr.municipios VALUES (149, 'Sucre', 11);
INSERT INTO reportedsr.municipios VALUES (150, 'Valdez', 11);
INSERT INTO reportedsr.municipios VALUES (151, 'Acosta', 12);
INSERT INTO reportedsr.municipios VALUES (152, 'Bolivar', 12);
INSERT INTO reportedsr.municipios VALUES (153, 'Buchivacoa', 12);
INSERT INTO reportedsr.municipios VALUES (154, 'Cacique Manaure', 12);
INSERT INTO reportedsr.municipios VALUES (155, 'Carirubana', 12);
INSERT INTO reportedsr.municipios VALUES (156, 'Colina', 12);
INSERT INTO reportedsr.municipios VALUES (157, 'Dabajuro', 12);
INSERT INTO reportedsr.municipios VALUES (158, 'Democracia', 12);
INSERT INTO reportedsr.municipios VALUES (159, 'Falcon', 12);
INSERT INTO reportedsr.municipios VALUES (160, 'Federación', 12);
INSERT INTO reportedsr.municipios VALUES (161, 'Jacura', 12);
INSERT INTO reportedsr.municipios VALUES (162, 'Los Taques', 12);
INSERT INTO reportedsr.municipios VALUES (163, 'Mauroa', 12);
INSERT INTO reportedsr.municipios VALUES (164, 'Miranda', 12);
INSERT INTO reportedsr.municipios VALUES (165, 'Monseñor Iturriza', 12);
INSERT INTO reportedsr.municipios VALUES (166, 'Palmasola', 12);
INSERT INTO reportedsr.municipios VALUES (167, 'Petit', 12);
INSERT INTO reportedsr.municipios VALUES (168, 'Piritu', 12);
INSERT INTO reportedsr.municipios VALUES (169, 'Sn Francisco', 12);
INSERT INTO reportedsr.municipios VALUES (170, 'Silva', 12);
INSERT INTO reportedsr.municipios VALUES (171, 'Sucre', 12);
INSERT INTO reportedsr.municipios VALUES (172, 'Tocopero', 12);
INSERT INTO reportedsr.municipios VALUES (173, 'Union', 12);
INSERT INTO reportedsr.municipios VALUES (174, 'Urumaco', 12);
INSERT INTO reportedsr.municipios VALUES (175, 'Zamora', 12);
INSERT INTO reportedsr.municipios VALUES (176, 'Camaguan', 13);
INSERT INTO reportedsr.municipios VALUES (177, 'Chaguaramas', 13);
INSERT INTO reportedsr.municipios VALUES (178, 'El Socorro', 13);
INSERT INTO reportedsr.municipios VALUES (179, 'Sn Geronimo de Guayabal', 13);
INSERT INTO reportedsr.municipios VALUES (180, 'Leonardo Infante', 13);
INSERT INTO reportedsr.municipios VALUES (181, 'Las Mercedes', 13);
INSERT INTO reportedsr.municipios VALUES (182, 'Julian Mellado', 13);
INSERT INTO reportedsr.municipios VALUES (183, 'Fco de Miranda', 13);
INSERT INTO reportedsr.municipios VALUES (184, 'Jose Tadeo Monagas', 13);
INSERT INTO reportedsr.municipios VALUES (185, 'Ortiz', 13);
INSERT INTO reportedsr.municipios VALUES (186, 'Jose Felix Ribas', 13);
INSERT INTO reportedsr.municipios VALUES (187, 'Juan German Roscio', 13);
INSERT INTO reportedsr.municipios VALUES (188, 'San Jose de Guaribe', 13);
INSERT INTO reportedsr.municipios VALUES (189, 'Santa Maria de Ipire', 13);
INSERT INTO reportedsr.municipios VALUES (190, 'Pedro Zaraza', 13);
INSERT INTO reportedsr.municipios VALUES (191, 'Aristides Bastidas', 14);
INSERT INTO reportedsr.municipios VALUES (192, 'Bolivar', 14);
INSERT INTO reportedsr.municipios VALUES (193, 'Bruzual', 14);
INSERT INTO reportedsr.municipios VALUES (194, 'Cocorote', 14);
INSERT INTO reportedsr.municipios VALUES (195, 'Independencia', 14);
INSERT INTO reportedsr.municipios VALUES (196, 'Jose Antonio Paez', 14);
INSERT INTO reportedsr.municipios VALUES (197, 'La Trinidad', 14);
INSERT INTO reportedsr.municipios VALUES (198, 'Manuel Monge', 14);
INSERT INTO reportedsr.municipios VALUES (199, 'Nirgua', 14);
INSERT INTO reportedsr.municipios VALUES (200, 'Peña', 14);
INSERT INTO reportedsr.municipios VALUES (201, 'San Felipe', 14);
INSERT INTO reportedsr.municipios VALUES (202, 'Sucre', 14);
INSERT INTO reportedsr.municipios VALUES (203, 'Urariche', 14);
INSERT INTO reportedsr.municipios VALUES (204, 'Veroes', 14);
INSERT INTO reportedsr.municipios VALUES (205, 'Baralt', 15);
INSERT INTO reportedsr.municipios VALUES (206, 'Cabimas', 15);
INSERT INTO reportedsr.municipios VALUES (207, 'Catatumbo', 15);
INSERT INTO reportedsr.municipios VALUES (208, 'Colon', 15);
INSERT INTO reportedsr.municipios VALUES (209, 'Francisco Javier Pulgar', 15);
INSERT INTO reportedsr.municipios VALUES (210, 'Jesus Enrique Lossada', 15);
INSERT INTO reportedsr.municipios VALUES (211, 'Jesus Maria Semprum', 15);
INSERT INTO reportedsr.municipios VALUES (212, 'La Cañada de Urdaneta', 15);
INSERT INTO reportedsr.municipios VALUES (213, 'Lagunillas', 15);
INSERT INTO reportedsr.municipios VALUES (214, 'Machiques de Perija', 15);
INSERT INTO reportedsr.municipios VALUES (215, 'Mara', 15);
INSERT INTO reportedsr.municipios VALUES (216, 'Maracaibo', 15);
INSERT INTO reportedsr.municipios VALUES (217, 'Miranda', 15);
INSERT INTO reportedsr.municipios VALUES (218, 'Paez', 15);
INSERT INTO reportedsr.municipios VALUES (219, 'Rosario de Perija', 15);
INSERT INTO reportedsr.municipios VALUES (220, 'San Francisco', 15);
INSERT INTO reportedsr.municipios VALUES (221, 'Santa Rita', 15);
INSERT INTO reportedsr.municipios VALUES (222, 'Simon Bolivar', 15);
INSERT INTO reportedsr.municipios VALUES (223, 'Sucre', 15);
INSERT INTO reportedsr.municipios VALUES (224, 'Valmore Rodriguez', 15);
INSERT INTO reportedsr.municipios VALUES (225, 'Andres Bello', 16);
INSERT INTO reportedsr.municipios VALUES (226, 'Antonio Romulo Costa', 16);
INSERT INTO reportedsr.municipios VALUES (227, 'Ayacucho', 16);
INSERT INTO reportedsr.municipios VALUES (228, 'Bolivar', 16);
INSERT INTO reportedsr.municipios VALUES (229, 'Cardenas', 16);
INSERT INTO reportedsr.municipios VALUES (230, 'Cordoba', 16);
INSERT INTO reportedsr.municipios VALUES (231, 'Fernandez Feo', 16);
INSERT INTO reportedsr.municipios VALUES (232, 'Fco de Miranda', 16);
INSERT INTO reportedsr.municipios VALUES (233, 'Garcia De Hevia', 16);
INSERT INTO reportedsr.municipios VALUES (234, 'Guasimos', 16);
INSERT INTO reportedsr.municipios VALUES (235, 'Independencia', 16);
INSERT INTO reportedsr.municipios VALUES (236, 'Jauregui', 16);
INSERT INTO reportedsr.municipios VALUES (237, 'Jose Maria Vargas', 16);
INSERT INTO reportedsr.municipios VALUES (238, 'Junin', 16);
INSERT INTO reportedsr.municipios VALUES (239, 'Libertad', 16);
INSERT INTO reportedsr.municipios VALUES (240, 'Libertador', 16);
INSERT INTO reportedsr.municipios VALUES (241, 'Lobatera', 16);
INSERT INTO reportedsr.municipios VALUES (242, 'Michelena', 16);
INSERT INTO reportedsr.municipios VALUES (243, 'Panamericano', 16);
INSERT INTO reportedsr.municipios VALUES (244, 'Pedro Maria Ureña', 16);
INSERT INTO reportedsr.municipios VALUES (245, 'Rafael Urdaneta', 16);
INSERT INTO reportedsr.municipios VALUES (246, 'Samuel Dario Maldonado', 16);
INSERT INTO reportedsr.municipios VALUES (247, 'San Cristobal', 16);
INSERT INTO reportedsr.municipios VALUES (248, 'Seboruco', 16);
INSERT INTO reportedsr.municipios VALUES (249, 'Simon Rodriguez', 16);
INSERT INTO reportedsr.municipios VALUES (250, 'Sucre', 16);
INSERT INTO reportedsr.municipios VALUES (251, 'Torbes', 16);
INSERT INTO reportedsr.municipios VALUES (252, 'Uribante', 16);
INSERT INTO reportedsr.municipios VALUES (253, 'Achaguas', 17);
INSERT INTO reportedsr.municipios VALUES (254, 'Biruaca', 17);
INSERT INTO reportedsr.municipios VALUES (255, 'Muñoz', 17);
INSERT INTO reportedsr.municipios VALUES (256, 'Paez', 17);
INSERT INTO reportedsr.municipios VALUES (257, 'Pedro Camejo', 17);
INSERT INTO reportedsr.municipios VALUES (258, 'Romulo Gallegos', 17);
INSERT INTO reportedsr.municipios VALUES (259, 'Sn Fernando', 17);
INSERT INTO reportedsr.municipios VALUES (260, 'Alberto Adrani', 18);
INSERT INTO reportedsr.municipios VALUES (261, 'Andres Bello', 18);
INSERT INTO reportedsr.municipios VALUES (262, 'Antonio Pinto Salinas', 18);
INSERT INTO reportedsr.municipios VALUES (263, 'Aricagua', 18);
INSERT INTO reportedsr.municipios VALUES (264, 'Arzobispo Chacon', 18);
INSERT INTO reportedsr.municipios VALUES (265, 'Campo Elias', 18);
INSERT INTO reportedsr.municipios VALUES (266, 'Caracciolo Parra Olmedo', 18);
INSERT INTO reportedsr.municipios VALUES (267, 'Cardenal Quintero', 18);
INSERT INTO reportedsr.municipios VALUES (268, 'Guaraque', 18);
INSERT INTO reportedsr.municipios VALUES (269, 'Julio Cesar Salas', 18);
INSERT INTO reportedsr.municipios VALUES (270, 'Justo Briceño', 18);
INSERT INTO reportedsr.municipios VALUES (271, 'Libertador', 18);
INSERT INTO reportedsr.municipios VALUES (272, 'Miranda', 18);
INSERT INTO reportedsr.municipios VALUES (273, 'Obispo Ramos de Lora', 18);
INSERT INTO reportedsr.municipios VALUES (274, 'Padre Noguera', 18);
INSERT INTO reportedsr.municipios VALUES (275, 'Pueblo Llano', 18);
INSERT INTO reportedsr.municipios VALUES (276, 'Rangel', 18);
INSERT INTO reportedsr.municipios VALUES (277, 'Rivas Davila', 18);
INSERT INTO reportedsr.municipios VALUES (278, 'Santos Marquina', 18);
INSERT INTO reportedsr.municipios VALUES (279, 'Sucre', 18);
INSERT INTO reportedsr.municipios VALUES (280, 'Tovar', 18);
INSERT INTO reportedsr.municipios VALUES (281, 'Tulio Febres Cordero', 18);
INSERT INTO reportedsr.municipios VALUES (282, 'Zea', 18);
INSERT INTO reportedsr.municipios VALUES (283, 'Alto Orinoco', 19);
INSERT INTO reportedsr.municipios VALUES (284, 'Atabapo', 19);
INSERT INTO reportedsr.municipios VALUES (285, 'Atures', 19);
INSERT INTO reportedsr.municipios VALUES (286, 'Autana', 19);
INSERT INTO reportedsr.municipios VALUES (287, 'Maroa', 19);
INSERT INTO reportedsr.municipios VALUES (288, 'Manapiare', 19);
INSERT INTO reportedsr.municipios VALUES (289, 'Rio Negro', 19);
INSERT INTO reportedsr.municipios VALUES (290, 'Acevedo', 20);
INSERT INTO reportedsr.municipios VALUES (291, 'Andres Bello', 20);
INSERT INTO reportedsr.municipios VALUES (292, 'Baruta', 20);
INSERT INTO reportedsr.municipios VALUES (293, 'Brion', 20);
INSERT INTO reportedsr.municipios VALUES (294, 'Buroz', 20);
INSERT INTO reportedsr.municipios VALUES (295, 'Carrizal', 20);
INSERT INTO reportedsr.municipios VALUES (296, 'Chacao', 20);
INSERT INTO reportedsr.municipios VALUES (297, 'Cristobal Rojas', 20);
INSERT INTO reportedsr.municipios VALUES (298, 'El Hatillo', 20);
INSERT INTO reportedsr.municipios VALUES (299, 'Guaicaipuro', 20);
INSERT INTO reportedsr.municipios VALUES (300, 'Independencia', 20);
INSERT INTO reportedsr.municipios VALUES (301, 'Lander', 20);
INSERT INTO reportedsr.municipios VALUES (302, 'Los Salias', 20);
INSERT INTO reportedsr.municipios VALUES (303, 'Paez', 20);
INSERT INTO reportedsr.municipios VALUES (304, 'Paz Castillo', 20);
INSERT INTO reportedsr.municipios VALUES (305, 'Pedro Gual', 20);
INSERT INTO reportedsr.municipios VALUES (306, 'Plaza', 20);
INSERT INTO reportedsr.municipios VALUES (307, 'Simon Bolivar', 20);
INSERT INTO reportedsr.municipios VALUES (308, 'Sucre', 20);
INSERT INTO reportedsr.municipios VALUES (309, 'Urdaneta', 20);
INSERT INTO reportedsr.municipios VALUES (310, 'Zamora', 20);
INSERT INTO reportedsr.municipios VALUES (311, 'Arismendi', 21);
INSERT INTO reportedsr.municipios VALUES (312, 'Diaz', 21);
INSERT INTO reportedsr.municipios VALUES (313, 'Garcia', 21);
INSERT INTO reportedsr.municipios VALUES (314, 'Gomez', 21);
INSERT INTO reportedsr.municipios VALUES (315, 'Maneiro', 21);
INSERT INTO reportedsr.municipios VALUES (316, 'Marcano', 21);
INSERT INTO reportedsr.municipios VALUES (317, 'Mariño', 21);
INSERT INTO reportedsr.municipios VALUES (318, 'Peninsula de Macanao', 21);
INSERT INTO reportedsr.municipios VALUES (319, 'Tubores', 21);
INSERT INTO reportedsr.municipios VALUES (320, 'Villalba', 21);
INSERT INTO reportedsr.municipios VALUES (324, 'Anzoategui', 22);
INSERT INTO reportedsr.municipios VALUES (325, 'Falcon', 22);
INSERT INTO reportedsr.municipios VALUES (326, 'Girardot', 22);
INSERT INTO reportedsr.municipios VALUES (327, 'Lima Blanco', 22);
INSERT INTO reportedsr.municipios VALUES (328, 'Pao de Sn Juan Bautista', 22);
INSERT INTO reportedsr.municipios VALUES (329, 'Ricaurte', 22);
INSERT INTO reportedsr.municipios VALUES (330, 'Romulo Gallegos', 22);
INSERT INTO reportedsr.municipios VALUES (331, 'San Carlos', 22);
INSERT INTO reportedsr.municipios VALUES (332, 'Tinaco', 22);
INSERT INTO reportedsr.municipios VALUES (333, 'Antonio Diaz', 23);
INSERT INTO reportedsr.municipios VALUES (334, 'Casacoima', 23);
INSERT INTO reportedsr.municipios VALUES (335, 'Pedernales', 23);
INSERT INTO reportedsr.municipios VALUES (336, 'Tucupita', 23);
INSERT INTO reportedsr.municipios VALUES (337, 'Vargas', 24);
INSERT INTO reportedsr.municipios VALUES (338, 'Monagas', 13);
INSERT INTO reportedsr.municipios VALUES (339, 'Roscio', 13);
INSERT INTO reportedsr.municipios VALUES (340, 'INFANTE', 13);
INSERT INTO reportedsr.municipios VALUES (341, 'Zaraza', 13);
INSERT INTO reportedsr.municipios VALUES (342, 'Las Mercedes', 13);
INSERT INTO reportedsr.municipios VALUES (343, 'Caracacciolo Parra y Olmedo', 25);
INSERT INTO reportedsr.municipios VALUES (344, 'Tovar', 25);
INSERT INTO reportedsr.municipios VALUES (345, 'Campo Elias', 25);
INSERT INTO reportedsr.municipios VALUES (346, 'Libertador', 25);
INSERT INTO reportedsr.municipios VALUES (347, 'Alberto Adriani', 25);
INSERT INTO reportedsr.municipios VALUES (348, 'Rangel', 25);
INSERT INTO reportedsr.municipios VALUES (349, 'Campo Elias', 25);
INSERT INTO reportedsr.municipios VALUES (350, 'Rangel', 25);
INSERT INTO reportedsr.municipios VALUES (351, 'RAFAEL URDANETA', 20);
INSERT INTO reportedsr.municipios VALUES (352, 'CAUCAGUA', 20);


--
-- TOC entry 3067 (class 0 OID 20178)
-- Dependencies: 218
-- Data for Name: parroquias; Type: TABLE DATA; Schema: reportedsr; Owner: postgres
--

INSERT INTO reportedsr.parroquias VALUES (1, 'Bolivar', 1, 1);
INSERT INTO reportedsr.parroquias VALUES (2, 'Santa Rita', 3, 1);
INSERT INTO reportedsr.parroquias VALUES (3, 'Jose Angel Lamas', 5, 1);
INSERT INTO reportedsr.parroquias VALUES (4, 'San Jose de Aerocuar', 9, 11);
INSERT INTO reportedsr.parroquias VALUES (5, 'Tavera Acosta', 9, 11);
INSERT INTO reportedsr.parroquias VALUES (7, 'Isla de Toas', 16, 15);
INSERT INTO reportedsr.parroquias VALUES (8, 'Camatagua', 2, 1);
INSERT INTO reportedsr.parroquias VALUES (9, 'Carmen de Cura', 2, 1);
INSERT INTO reportedsr.parroquias VALUES (10, 'Francisco de Miranda', 3, 1);
INSERT INTO reportedsr.parroquias VALUES (11, 'Moneñor Feliciano Gonzalez', 3, 1);
INSERT INTO reportedsr.parroquias VALUES (12, 'Girardot', 4, 1);
INSERT INTO reportedsr.parroquias VALUES (13, 'Choroni', 4, 1);
INSERT INTO reportedsr.parroquias VALUES (14, 'Las Delicias', 4, 1);
INSERT INTO reportedsr.parroquias VALUES (15, 'Madre Maria de San Jose', 4, 1);
INSERT INTO reportedsr.parroquias VALUES (16, 'Joaquin Crespo', 4, 1);
INSERT INTO reportedsr.parroquias VALUES (17, 'Pedro Jose Ovalles', 4, 1);
INSERT INTO reportedsr.parroquias VALUES (18, 'Jose Casanova Godoy', 4, 1);
INSERT INTO reportedsr.parroquias VALUES (19, 'Andres Eloy Blanco', 4, 1);
INSERT INTO reportedsr.parroquias VALUES (20, 'Los Tacariguas', 4, 1);
INSERT INTO reportedsr.parroquias VALUES (21, 'Jose Felix Ribas', 6, 1);
INSERT INTO reportedsr.parroquias VALUES (22, 'La Victoria', 6, 1);
INSERT INTO reportedsr.parroquias VALUES (23, 'Catos Nieves Rios', 6, 1);
INSERT INTO reportedsr.parroquias VALUES (24, 'Las Guacamayas', 6, 1);
INSERT INTO reportedsr.parroquias VALUES (25, 'Pao de Zarate', 6, 1);
INSERT INTO reportedsr.parroquias VALUES (26, 'Zuata', 6, 1);
INSERT INTO reportedsr.parroquias VALUES (27, 'Jose Rafael Revenga', 18, 1);
INSERT INTO reportedsr.parroquias VALUES (28, 'Libertador', 19, 1);
INSERT INTO reportedsr.parroquias VALUES (29, 'Palo Negro', 19, 1);
INSERT INTO reportedsr.parroquias VALUES (30, 'San Martin de Porres', 19, 1);
INSERT INTO reportedsr.parroquias VALUES (31, 'Mario Briceño Irragorry', 20, 1);
INSERT INTO reportedsr.parroquias VALUES (32, 'Caña de Azucar', 20, 1);
INSERT INTO reportedsr.parroquias VALUES (33, 'Ocumare de la Costa de Oro', 21, 1);
INSERT INTO reportedsr.parroquias VALUES (34, 'San Casimiro', 22, 1);
INSERT INTO reportedsr.parroquias VALUES (35, 'Guiripa', 22, 1);
INSERT INTO reportedsr.parroquias VALUES (36, 'Ollas de Caramacate', 22, 1);
INSERT INTO reportedsr.parroquias VALUES (37, 'Valle Morin', 22, 1);
INSERT INTO reportedsr.parroquias VALUES (38, 'San Sebastian', 23, 1);
INSERT INTO reportedsr.parroquias VALUES (39, 'Turmero', 24, 1);
INSERT INTO reportedsr.parroquias VALUES (40, 'Arevalo Aponte', 24, 1);
INSERT INTO reportedsr.parroquias VALUES (41, 'Chuao', 24, 1);
INSERT INTO reportedsr.parroquias VALUES (42, 'Saman de Guere', 24, 1);
INSERT INTO reportedsr.parroquias VALUES (43, 'Alfredo Pacheco Miranda', 24, 1);
INSERT INTO reportedsr.parroquias VALUES (44, 'Santos Michelena', 25, 1);
INSERT INTO reportedsr.parroquias VALUES (45, 'Tiara', 25, 1);
INSERT INTO reportedsr.parroquias VALUES (46, 'Sucre', 26, 1);
INSERT INTO reportedsr.parroquias VALUES (47, 'Bella Vista', 26, 1);
INSERT INTO reportedsr.parroquias VALUES (49, 'Barbacoas', 28, 1);
INSERT INTO reportedsr.parroquias VALUES (50, 'Las Peñitas', 28, 1);
INSERT INTO reportedsr.parroquias VALUES (51, 'San Francisco de Cara', 28, 1);
INSERT INTO reportedsr.parroquias VALUES (52, 'Taguay', 28, 1);
INSERT INTO reportedsr.parroquias VALUES (53, 'Villa de Cura', 29, 1);
INSERT INTO reportedsr.parroquias VALUES (54, 'Magdaleno', 29, 1);
INSERT INTO reportedsr.parroquias VALUES (55, 'San Francisco de Asis', 29, 1);
INSERT INTO reportedsr.parroquias VALUES (56, 'Augusto Mijares', 29, 1);
INSERT INTO reportedsr.parroquias VALUES (57, 'Valles de Tucutunemo', 29, 1);
INSERT INTO reportedsr.parroquias VALUES (58, 'Bejuma', 7, 2);
INSERT INTO reportedsr.parroquias VALUES (59, 'Canoabo', 7, 2);
INSERT INTO reportedsr.parroquias VALUES (60, 'Simon Bolivar', 7, 2);
INSERT INTO reportedsr.parroquias VALUES (61, 'Carlos Arvelo', 30, 2);
INSERT INTO reportedsr.parroquias VALUES (62, 'Belen', 30, 2);
INSERT INTO reportedsr.parroquias VALUES (63, 'Tacarigua', 30, 2);
INSERT INTO reportedsr.parroquias VALUES (64, 'Aguas Calientes', 31, 2);
INSERT INTO reportedsr.parroquias VALUES (65, 'Mariara', 31, 2);
INSERT INTO reportedsr.parroquias VALUES (66, 'Ciudad Alianza', 32, 2);
INSERT INTO reportedsr.parroquias VALUES (67, 'Guacara', 32, 2);
INSERT INTO reportedsr.parroquias VALUES (68, 'Yagua', 32, 2);
INSERT INTO reportedsr.parroquias VALUES (69, 'Moron', 33, 2);
INSERT INTO reportedsr.parroquias VALUES (70, 'Urama', 33, 2);
INSERT INTO reportedsr.parroquias VALUES (71, 'Tocuyito', 34, 2);
INSERT INTO reportedsr.parroquias VALUES (72, 'Independencia', 34, 2);
INSERT INTO reportedsr.parroquias VALUES (73, 'Los Guayos', 35, 2);
INSERT INTO reportedsr.parroquias VALUES (74, 'Miranda', 36, 2);
INSERT INTO reportedsr.parroquias VALUES (75, 'Montalban', 37, 2);
INSERT INTO reportedsr.parroquias VALUES (76, 'Naguanagua', 38, 2);
INSERT INTO reportedsr.parroquias VALUES (77, 'Bartolome Salom', 39, 2);
INSERT INTO reportedsr.parroquias VALUES (78, 'Democracia', 39, 2);
INSERT INTO reportedsr.parroquias VALUES (79, 'Fraternidad', 39, 2);
INSERT INTO reportedsr.parroquias VALUES (80, 'Goaigoaza', 39, 2);
INSERT INTO reportedsr.parroquias VALUES (81, 'Juan Jose Flores', 39, 2);
INSERT INTO reportedsr.parroquias VALUES (82, 'Union', 39, 2);
INSERT INTO reportedsr.parroquias VALUES (83, 'Borburata', 39, 2);
INSERT INTO reportedsr.parroquias VALUES (84, 'Patanemo', 39, 2);
INSERT INTO reportedsr.parroquias VALUES (85, 'San Diego', 40, 2);
INSERT INTO reportedsr.parroquias VALUES (86, 'San Joaquin', 41, 2);
INSERT INTO reportedsr.parroquias VALUES (87, 'Candelaria', 42, 2);
INSERT INTO reportedsr.parroquias VALUES (88, 'Catedral', 42, 2);
INSERT INTO reportedsr.parroquias VALUES (89, 'El Socorro', 42, 2);
INSERT INTO reportedsr.parroquias VALUES (90, 'Cachamay', 43, 3);
INSERT INTO reportedsr.parroquias VALUES (91, 'Chirica', 43, 3);
INSERT INTO reportedsr.parroquias VALUES (92, 'Dalla Costa', 43, 3);
INSERT INTO reportedsr.parroquias VALUES (93, '11 de Abril', 43, 3);
INSERT INTO reportedsr.parroquias VALUES (94, 'Simon Bolivar', 43, 3);
INSERT INTO reportedsr.parroquias VALUES (95, 'Unare', 43, 3);
INSERT INTO reportedsr.parroquias VALUES (96, 'Universidad', 43, 3);
INSERT INTO reportedsr.parroquias VALUES (97, 'Vista al Sol', 43, 3);
INSERT INTO reportedsr.parroquias VALUES (98, 'Pozo Verde', 43, 3);
INSERT INTO reportedsr.parroquias VALUES (99, 'Yocoima', 43, 3);
INSERT INTO reportedsr.parroquias VALUES (100, 'Cedeño', 44, 3);
INSERT INTO reportedsr.parroquias VALUES (101, 'Altagracia', 44, 3);
INSERT INTO reportedsr.parroquias VALUES (102, 'Ascencion Farreras', 44, 3);
INSERT INTO reportedsr.parroquias VALUES (103, 'Guaniamo', 44, 3);
INSERT INTO reportedsr.parroquias VALUES (104, 'La Urbana', 44, 3);
INSERT INTO reportedsr.parroquias VALUES (105, 'Pijiguaos', 44, 3);
INSERT INTO reportedsr.parroquias VALUES (106, 'El Callao', 45, 3);
INSERT INTO reportedsr.parroquias VALUES (107, 'Gran Sabana', 46, 3);
INSERT INTO reportedsr.parroquias VALUES (108, 'Ikabaru', 46, 3);
INSERT INTO reportedsr.parroquias VALUES (109, 'Agua Salada', 47, 3);
INSERT INTO reportedsr.parroquias VALUES (110, 'Catedral', 47, 3);
INSERT INTO reportedsr.parroquias VALUES (111, 'Jose Antonio Paez', 47, 3);
INSERT INTO reportedsr.parroquias VALUES (112, 'La Sabanita', 47, 3);
INSERT INTO reportedsr.parroquias VALUES (113, 'Marhuanta', 47, 3);
INSERT INTO reportedsr.parroquias VALUES (114, 'Vista Hermosa', 47, 3);
INSERT INTO reportedsr.parroquias VALUES (115, 'Orinoco', 47, 3);
INSERT INTO reportedsr.parroquias VALUES (116, 'Panapana', 47, 3);
INSERT INTO reportedsr.parroquias VALUES (117, 'Zea', 47, 3);
INSERT INTO reportedsr.parroquias VALUES (118, 'Piar', 48, 3);
INSERT INTO reportedsr.parroquias VALUES (119, 'Andres Eloy Blanco', 48, 3);
INSERT INTO reportedsr.parroquias VALUES (120, 'Pedro Cova', 48, 3);
INSERT INTO reportedsr.parroquias VALUES (121, 'Raul Leoni', 49, 3);
INSERT INTO reportedsr.parroquias VALUES (122, 'Barceloneta', 49, 3);
INSERT INTO reportedsr.parroquias VALUES (123, 'San Francisco', 49, 3);
INSERT INTO reportedsr.parroquias VALUES (124, 'Santa Barbara', 49, 3);
INSERT INTO reportedsr.parroquias VALUES (125, 'Roscio', 50, 3);
INSERT INTO reportedsr.parroquias VALUES (126, 'Salom', 50, 3);
INSERT INTO reportedsr.parroquias VALUES (127, 'Sifontes', 51, 3);
INSERT INTO reportedsr.parroquias VALUES (128, 'Dalla Costa', 51, 3);
INSERT INTO reportedsr.parroquias VALUES (129, 'San Isidro', 51, 3);
INSERT INTO reportedsr.parroquias VALUES (130, 'Sucre', 52, 3);
INSERT INTO reportedsr.parroquias VALUES (131, 'Aripao', 52, 3);
INSERT INTO reportedsr.parroquias VALUES (132, 'Guarataro', 52, 3);
INSERT INTO reportedsr.parroquias VALUES (133, 'Las Majadas', 52, 3);
INSERT INTO reportedsr.parroquias VALUES (134, 'Moitaco', 52, 3);
INSERT INTO reportedsr.parroquias VALUES (135, 'Padre Pedro Chien', 53, 3);
INSERT INTO reportedsr.parroquias VALUES (136, 'San Francisco', 54, 4);
INSERT INTO reportedsr.parroquias VALUES (137, 'Aguasay', 54, 4);
INSERT INTO reportedsr.parroquias VALUES (138, 'Bolivar', 55, 4);
INSERT INTO reportedsr.parroquias VALUES (139, 'El Guacharo', 56, 4);
INSERT INTO reportedsr.parroquias VALUES (140, 'La Guanota', 56, 4);
INSERT INTO reportedsr.parroquias VALUES (141, 'Sabana de Piedra', 56, 4);
INSERT INTO reportedsr.parroquias VALUES (142, 'San Agustin', 56, 4);
INSERT INTO reportedsr.parroquias VALUES (143, 'Teresen', 56, 4);
INSERT INTO reportedsr.parroquias VALUES (144, 'Caripe', 56, 4);
INSERT INTO reportedsr.parroquias VALUES (145, 'Areo', 57, 4);
INSERT INTO reportedsr.parroquias VALUES (146, 'San Felix', 57, 4);
INSERT INTO reportedsr.parroquias VALUES (147, 'Viento Fresco', 57, 4);
INSERT INTO reportedsr.parroquias VALUES (148, 'Cedeño', 57, 4);
INSERT INTO reportedsr.parroquias VALUES (149, 'Ezequel Zamora', 58, 4);
INSERT INTO reportedsr.parroquias VALUES (150, 'El Tejero', 58, 4);
INSERT INTO reportedsr.parroquias VALUES (151, 'Libertador', 59, 4);
INSERT INTO reportedsr.parroquias VALUES (152, 'Chaguaramas', 59, 4);
INSERT INTO reportedsr.parroquias VALUES (153, 'Las Alhuacas', 59, 4);
INSERT INTO reportedsr.parroquias VALUES (154, 'Tabasca', 59, 4);
INSERT INTO reportedsr.parroquias VALUES (155, 'Maturin', 60, 4);
INSERT INTO reportedsr.parroquias VALUES (156, 'Alto de los Godoy', 60, 4);
INSERT INTO reportedsr.parroquias VALUES (157, 'Boqueron', 60, 4);
INSERT INTO reportedsr.parroquias VALUES (158, 'Las Cocuizas', 60, 4);
INSERT INTO reportedsr.parroquias VALUES (159, 'San Simon', 60, 4);
INSERT INTO reportedsr.parroquias VALUES (160, 'Santa Cruz', 60, 4);
INSERT INTO reportedsr.parroquias VALUES (161, 'El Corozo', 60, 4);
INSERT INTO reportedsr.parroquias VALUES (162, 'El Furrial', 60, 4);
INSERT INTO reportedsr.parroquias VALUES (163, 'Jusepin', 60, 4);
INSERT INTO reportedsr.parroquias VALUES (164, 'La Pica', 60, 4);
INSERT INTO reportedsr.parroquias VALUES (165, 'San Vicente', 60, 4);
INSERT INTO reportedsr.parroquias VALUES (166, 'Piar', 61, 4);
INSERT INTO reportedsr.parroquias VALUES (167, 'Aparicio', 61, 4);
INSERT INTO reportedsr.parroquias VALUES (168, 'Chaguaramal', 61, 4);
INSERT INTO reportedsr.parroquias VALUES (169, 'El Pinto', 61, 4);
INSERT INTO reportedsr.parroquias VALUES (170, 'Guanaguana', 61, 4);
INSERT INTO reportedsr.parroquias VALUES (171, 'La Toscana', 61, 4);
INSERT INTO reportedsr.parroquias VALUES (172, 'Taguaya', 61, 4);
INSERT INTO reportedsr.parroquias VALUES (173, 'Punceres', 62, 4);
INSERT INTO reportedsr.parroquias VALUES (174, 'Cachipo', 62, 4);
INSERT INTO reportedsr.parroquias VALUES (175, 'Santa Barbara', 63, 4);
INSERT INTO reportedsr.parroquias VALUES (176, 'Sotillo', 64, 4);
INSERT INTO reportedsr.parroquias VALUES (177, 'Los Barrancos de Fajardo', 64, 4);
INSERT INTO reportedsr.parroquias VALUES (178, 'Uracoa', 65, 4);
INSERT INTO reportedsr.parroquias VALUES (179, 'Anaco', 66, 5);
INSERT INTO reportedsr.parroquias VALUES (180, 'San Joaquin', 66, 5);
INSERT INTO reportedsr.parroquias VALUES (181, 'Aragua', 67, 5);
INSERT INTO reportedsr.parroquias VALUES (182, 'Cachipo', 67, 5);
INSERT INTO reportedsr.parroquias VALUES (183, 'Fernando De Peñalver', 68, 5);
INSERT INTO reportedsr.parroquias VALUES (184, 'San Miguel', 68, 5);
INSERT INTO reportedsr.parroquias VALUES (185, 'Sucre', 68, 5);
INSERT INTO reportedsr.parroquias VALUES (186, 'Francisco del Carmen Carvajal', 69, 5);
INSERT INTO reportedsr.parroquias VALUES (187, 'Valle de Guanape', 69, 5);
INSERT INTO reportedsr.parroquias VALUES (188, 'Santa Barbara', 69, 5);
INSERT INTO reportedsr.parroquias VALUES (189, 'Francisco de Miranda', 0, 5);
INSERT INTO reportedsr.parroquias VALUES (190, 'Atapirire', 0, 5);
INSERT INTO reportedsr.parroquias VALUES (191, 'Boca del Pao', 0, 5);
INSERT INTO reportedsr.parroquias VALUES (192, 'El Pao', 0, 5);
INSERT INTO reportedsr.parroquias VALUES (193, 'Mucura', 0, 5);
INSERT INTO reportedsr.parroquias VALUES (194, 'Guanta', 1, 5);
INSERT INTO reportedsr.parroquias VALUES (195, 'Chorreon', 1, 5);
INSERT INTO reportedsr.parroquias VALUES (196, 'Independencia', 2, 5);
INSERT INTO reportedsr.parroquias VALUES (197, 'Mamo', 2, 5);
INSERT INTO reportedsr.parroquias VALUES (198, 'Puerto la Cruz', 3, 5);
INSERT INTO reportedsr.parroquias VALUES (199, 'Pozuelos', 3, 5);
INSERT INTO reportedsr.parroquias VALUES (200, 'Onoto', 4, 5);
INSERT INTO reportedsr.parroquias VALUES (201, 'San Pablo', 4, 5);
INSERT INTO reportedsr.parroquias VALUES (202, 'Jose Gregorio Monagas', 5, 5);
INSERT INTO reportedsr.parroquias VALUES (203, 'Piar', 5, 5);
INSERT INTO reportedsr.parroquias VALUES (204, 'San Diego de Cabrutica', 5, 5);
INSERT INTO reportedsr.parroquias VALUES (205, 'Santa Clara', 5, 5);
INSERT INTO reportedsr.parroquias VALUES (206, 'Uverito', 5, 5);
INSERT INTO reportedsr.parroquias VALUES (207, 'Zuata', 5, 5);
INSERT INTO reportedsr.parroquias VALUES (208, 'Libertad', 6, 5);
INSERT INTO reportedsr.parroquias VALUES (209, 'El Carito', 6, 5);
INSERT INTO reportedsr.parroquias VALUES (210, 'Santa Ines', 6, 5);
INSERT INTO reportedsr.parroquias VALUES (211, 'Clarines', 7, 5);
INSERT INTO reportedsr.parroquias VALUES (212, 'Guanape', 7, 5);
INSERT INTO reportedsr.parroquias VALUES (213, 'Sabana de Uchire', 7, 5);
INSERT INTO reportedsr.parroquias VALUES (214, 'Pedro Maria Freites', 8, 5);
INSERT INTO reportedsr.parroquias VALUES (215, 'Libertador', 8, 5);
INSERT INTO reportedsr.parroquias VALUES (216, 'Santa Rosa', 8, 5);
INSERT INTO reportedsr.parroquias VALUES (217, 'Urica', 8, 5);
INSERT INTO reportedsr.parroquias VALUES (218, 'Piritu', 9, 5);
INSERT INTO reportedsr.parroquias VALUES (219, 'San Francisco', 9, 5);
INSERT INTO reportedsr.parroquias VALUES (220, 'San Jose de Guanipa', 0, 5);
INSERT INTO reportedsr.parroquias VALUES (221, 'Boca de Uchire', 1, 5);
INSERT INTO reportedsr.parroquias VALUES (222, 'Boca de Chavez', 1, 5);
INSERT INTO reportedsr.parroquias VALUES (223, 'Santa Ana', 2, 5);
INSERT INTO reportedsr.parroquias VALUES (224, 'Pueblo Nuevo', 2, 5);
INSERT INTO reportedsr.parroquias VALUES (225, 'El Carmen', 3, 5);
INSERT INTO reportedsr.parroquias VALUES (226, 'San Cristobal', 3, 5);
INSERT INTO reportedsr.parroquias VALUES (227, 'Bergantin', 3, 5);
INSERT INTO reportedsr.parroquias VALUES (228, 'Caigua', 3, 5);
INSERT INTO reportedsr.parroquias VALUES (229, 'El Pilar', 3, 5);
INSERT INTO reportedsr.parroquias VALUES (230, 'Naricual', 3, 5);
INSERT INTO reportedsr.parroquias VALUES (231, 'Edmundo Barrios', 4, 5);
INSERT INTO reportedsr.parroquias VALUES (232, 'Miguel Otero Silva', 4, 5);
INSERT INTO reportedsr.parroquias VALUES (233, 'El Chaparro', 5, 5);
INSERT INTO reportedsr.parroquias VALUES (234, 'Tomas Alfaro Calatrava', 5, 5);
INSERT INTO reportedsr.parroquias VALUES (235, 'Lecherias', 6, 5);
INSERT INTO reportedsr.parroquias VALUES (236, 'El Morro', 6, 5);
INSERT INTO reportedsr.parroquias VALUES (237, 'Pio Tamayo', 7, 6);
INSERT INTO reportedsr.parroquias VALUES (238, 'Qubrada Honda de Guache', 7, 6);
INSERT INTO reportedsr.parroquias VALUES (239, 'Yacambu', 7, 6);
INSERT INTO reportedsr.parroquias VALUES (240, 'Freitez', 8, 6);
INSERT INTO reportedsr.parroquias VALUES (241, 'Jose Maria Blanco', 8, 6);
INSERT INTO reportedsr.parroquias VALUES (242, 'Catedral', 9, 6);
INSERT INTO reportedsr.parroquias VALUES (243, 'Concepcion', 9, 6);
INSERT INTO reportedsr.parroquias VALUES (244, 'El Cuji', 9, 6);
INSERT INTO reportedsr.parroquias VALUES (245, 'Juan de Villegas', 9, 6);
INSERT INTO reportedsr.parroquias VALUES (246, 'Santa Rosa', 9, 6);
INSERT INTO reportedsr.parroquias VALUES (247, 'Tamaca', 9, 6);
INSERT INTO reportedsr.parroquias VALUES (248, 'Union', 9, 6);
INSERT INTO reportedsr.parroquias VALUES (249, 'Aguedo Felipe Alvarado', 9, 6);
INSERT INTO reportedsr.parroquias VALUES (250, 'Buena Vista', 9, 6);
INSERT INTO reportedsr.parroquias VALUES (251, 'Juarez', 9, 6);
INSERT INTO reportedsr.parroquias VALUES (252, 'Juan Bautista Rodriguez', 90, 6);
INSERT INTO reportedsr.parroquias VALUES (253, 'Cuara', 90, 6);
INSERT INTO reportedsr.parroquias VALUES (254, 'Diego de Lozada', 90, 6);
INSERT INTO reportedsr.parroquias VALUES (255, 'Paraiso de San Jose', 90, 6);
INSERT INTO reportedsr.parroquias VALUES (256, 'San Miguel', 90, 6);
INSERT INTO reportedsr.parroquias VALUES (257, 'Tintorero', 90, 6);
INSERT INTO reportedsr.parroquias VALUES (258, 'Jose Bernardo Dorante', 90, 6);
INSERT INTO reportedsr.parroquias VALUES (259, 'Coronel Mariano Peraza', 90, 6);
INSERT INTO reportedsr.parroquias VALUES (260, 'Bolivar', 91, 6);
INSERT INTO reportedsr.parroquias VALUES (261, 'Anzoategui', 91, 6);
INSERT INTO reportedsr.parroquias VALUES (262, 'Guarico', 91, 6);
INSERT INTO reportedsr.parroquias VALUES (263, 'Hilario Luna y Luna', 91, 6);
INSERT INTO reportedsr.parroquias VALUES (264, 'Humocaro Alto', 91, 6);
INSERT INTO reportedsr.parroquias VALUES (265, 'Humocaro Bajo', 91, 6);
INSERT INTO reportedsr.parroquias VALUES (266, 'La Candelaria', 91, 6);
INSERT INTO reportedsr.parroquias VALUES (267, 'Moran', 91, 6);
INSERT INTO reportedsr.parroquias VALUES (268, 'Cabudare', 92, 6);
INSERT INTO reportedsr.parroquias VALUES (269, 'Jose Gregorio Bastidas', 92, 6);
INSERT INTO reportedsr.parroquias VALUES (270, 'Agua Viva', 92, 6);
INSERT INTO reportedsr.parroquias VALUES (271, 'Sarare', 93, 6);
INSERT INTO reportedsr.parroquias VALUES (272, 'Buria', 93, 6);
INSERT INTO reportedsr.parroquias VALUES (273, 'Gustavo Vegas Leon', 93, 6);
INSERT INTO reportedsr.parroquias VALUES (274, 'Trinidad Samuel', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (275, 'Antonio Diaz', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (276, 'Camacaro', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (277, 'Castañeda', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (278, 'Cecilio Zubillaga', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (279, 'Chiquinquira', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (280, 'El Blanco', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (281, 'Espinoza de los Monteros', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (282, 'Lara', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (283, 'Las Mercedes', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (284, 'Manuel Morillo', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (285, 'Montaña Verde', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (286, 'Montes de oca', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (287, 'Torres', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (288, 'Heriberto Arroyo', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (289, 'Reyes Vargas', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (290, 'Altagracia', 94, 6);
INSERT INTO reportedsr.parroquias VALUES (291, 'Siquisique', 95, 6);
INSERT INTO reportedsr.parroquias VALUES (292, 'Moroturo', 95, 6);
INSERT INTO reportedsr.parroquias VALUES (293, 'San Miguel', 95, 6);
INSERT INTO reportedsr.parroquias VALUES (294, 'Xaguas', 95, 6);
INSERT INTO reportedsr.parroquias VALUES (295, 'Agua Blanca', 96, 7);
INSERT INTO reportedsr.parroquias VALUES (296, 'Araure', 97, 7);
INSERT INTO reportedsr.parroquias VALUES (297, 'Rio Acarigua', 97, 7);
INSERT INTO reportedsr.parroquias VALUES (298, 'Esteller', 98, 7);
INSERT INTO reportedsr.parroquias VALUES (299, 'Uveral', 98, 7);
INSERT INTO reportedsr.parroquias VALUES (300, 'Guanare', 99, 7);
INSERT INTO reportedsr.parroquias VALUES (301, 'Cordoba (VII)', 99, 7);
INSERT INTO reportedsr.parroquias VALUES (302, 'San jose de la Montaña', 99, 7);
INSERT INTO reportedsr.parroquias VALUES (303, 'San Juan de Guanaguanare', 99, 7);
INSERT INTO reportedsr.parroquias VALUES (304, 'Virgen de la Coromoto', 99, 7);
INSERT INTO reportedsr.parroquias VALUES (305, 'Guanarito', 100, 7);
INSERT INTO reportedsr.parroquias VALUES (306, 'Trinidad de la Capilla', 100, 7);
INSERT INTO reportedsr.parroquias VALUES (307, 'Divina Pastora', 100, 7);
INSERT INTO reportedsr.parroquias VALUES (308, 'Monseñor Jose Vicente De Unda', 101, 7);
INSERT INTO reportedsr.parroquias VALUES (309, 'Peña Blanca', 101, 7);
INSERT INTO reportedsr.parroquias VALUES (310, 'Ospino', 102, 7);
INSERT INTO reportedsr.parroquias VALUES (311, 'Aparicion', 102, 7);
INSERT INTO reportedsr.parroquias VALUES (312, 'La Estacion', 102, 7);
INSERT INTO reportedsr.parroquias VALUES (313, 'Paez', 103, 7);
INSERT INTO reportedsr.parroquias VALUES (314, 'Payara', 103, 7);
INSERT INTO reportedsr.parroquias VALUES (315, 'Pimpinela', 103, 7);
INSERT INTO reportedsr.parroquias VALUES (316, 'Ramon Peraza', 103, 7);
INSERT INTO reportedsr.parroquias VALUES (317, 'Papelon', 104, 7);
INSERT INTO reportedsr.parroquias VALUES (318, 'Caño Delgadito', 104, 7);
INSERT INTO reportedsr.parroquias VALUES (319, 'San Genaro De Boconito', 105, 7);
INSERT INTO reportedsr.parroquias VALUES (320, 'Antolin Tovar', 105, 7);
INSERT INTO reportedsr.parroquias VALUES (321, 'San Rafael De Onoto', 106, 7);
INSERT INTO reportedsr.parroquias VALUES (322, 'Santa Fe', 106, 7);
INSERT INTO reportedsr.parroquias VALUES (323, 'Thermo Morales', 106, 7);
INSERT INTO reportedsr.parroquias VALUES (324, 'Sucre', 107, 7);
INSERT INTO reportedsr.parroquias VALUES (325, 'Concepcion', 107, 7);
INSERT INTO reportedsr.parroquias VALUES (326, 'San Rafael de Palo Alzado', 107, 7);
INSERT INTO reportedsr.parroquias VALUES (327, 'San Jose de Saguaz', 107, 7);
INSERT INTO reportedsr.parroquias VALUES (328, 'Uvencio Antonio Velasquez', 107, 7);
INSERT INTO reportedsr.parroquias VALUES (329, 'Villa Rosa', 107, 7);
INSERT INTO reportedsr.parroquias VALUES (330, 'Turen', 108, 7);
INSERT INTO reportedsr.parroquias VALUES (331, 'Santa Cruz', 108, 7);
INSERT INTO reportedsr.parroquias VALUES (332, 'San Isidro Labrador', 108, 7);
INSERT INTO reportedsr.parroquias VALUES (333, 'Canelones', 108, 7);
INSERT INTO reportedsr.parroquias VALUES (334, 'Santa Rosalia', 109, 7);
INSERT INTO reportedsr.parroquias VALUES (335, 'Florida', 109, 7);
INSERT INTO reportedsr.parroquias VALUES (336, 'Santa Isabel', 110, 8);
INSERT INTO reportedsr.parroquias VALUES (337, 'Araguaney', 110, 8);
INSERT INTO reportedsr.parroquias VALUES (338, 'El Jaguito', 110, 8);
INSERT INTO reportedsr.parroquias VALUES (339, 'La Esperanza', 110, 8);
INSERT INTO reportedsr.parroquias VALUES (340, 'Bocono', 111, 8);
INSERT INTO reportedsr.parroquias VALUES (341, 'El Carmen', 111, 8);
INSERT INTO reportedsr.parroquias VALUES (342, 'Mosquey', 111, 8);
INSERT INTO reportedsr.parroquias VALUES (343, 'Ayacucho', 111, 8);
INSERT INTO reportedsr.parroquias VALUES (344, 'Burbusay', 111, 8);
INSERT INTO reportedsr.parroquias VALUES (345, 'General Rivas', 111, 8);
INSERT INTO reportedsr.parroquias VALUES (346, 'Guaramacal', 111, 8);
INSERT INTO reportedsr.parroquias VALUES (347, 'Vega de Guaramacal', 111, 8);
INSERT INTO reportedsr.parroquias VALUES (348, 'Monseñor Jauregui', 111, 8);
INSERT INTO reportedsr.parroquias VALUES (349, 'Rafael Rangel', 111, 8);
INSERT INTO reportedsr.parroquias VALUES (350, 'San Miguel', 111, 8);
INSERT INTO reportedsr.parroquias VALUES (351, 'San Jose', 111, 8);
INSERT INTO reportedsr.parroquias VALUES (352, 'Sabana Grande', 112, 8);
INSERT INTO reportedsr.parroquias VALUES (353, 'Cheregue', 112, 8);
INSERT INTO reportedsr.parroquias VALUES (354, 'Granados', 112, 8);
INSERT INTO reportedsr.parroquias VALUES (355, 'Chejende', 113, 8);
INSERT INTO reportedsr.parroquias VALUES (356, 'Arnoldo Gabaldon', 113, 8);
INSERT INTO reportedsr.parroquias VALUES (357, 'Bolivia', 113, 8);
INSERT INTO reportedsr.parroquias VALUES (358, 'Carrillo', 113, 8);
INSERT INTO reportedsr.parroquias VALUES (359, 'Cegarra', 113, 8);
INSERT INTO reportedsr.parroquias VALUES (360, 'Manuel Salvador Ulloa', 113, 8);
INSERT INTO reportedsr.parroquias VALUES (361, 'San Jose', 113, 8);
INSERT INTO reportedsr.parroquias VALUES (362, 'Carache', 114, 8);
INSERT INTO reportedsr.parroquias VALUES (363, 'Cuicas', 114, 8);
INSERT INTO reportedsr.parroquias VALUES (364, 'La Concepcion', 114, 8);
INSERT INTO reportedsr.parroquias VALUES (365, 'Panamericana', 114, 8);
INSERT INTO reportedsr.parroquias VALUES (366, 'Santa Cruz', 114, 8);
INSERT INTO reportedsr.parroquias VALUES (367, 'Escuque', 115, 8);
INSERT INTO reportedsr.parroquias VALUES (368, 'La Union', 115, 8);
INSERT INTO reportedsr.parroquias VALUES (369, 'Sabana Libre', 115, 8);
INSERT INTO reportedsr.parroquias VALUES (370, 'Santa Rita', 115, 8);
INSERT INTO reportedsr.parroquias VALUES (371, 'El Socorro', 116, 8);
INSERT INTO reportedsr.parroquias VALUES (372, 'Antonio Jose de Sucre', 116, 8);
INSERT INTO reportedsr.parroquias VALUES (373, 'Los Caprichos', 116, 8);
INSERT INTO reportedsr.parroquias VALUES (374, 'Campo Elias', 117, 8);
INSERT INTO reportedsr.parroquias VALUES (375, 'Arnoldo Gabaldon', 117, 8);
INSERT INTO reportedsr.parroquias VALUES (376, 'Santa Apolonia', 118, 8);
INSERT INTO reportedsr.parroquias VALUES (377, 'El Progreso', 118, 8);
INSERT INTO reportedsr.parroquias VALUES (378, 'La Caiba', 118, 8);
INSERT INTO reportedsr.parroquias VALUES (379, '3 de Febrero', 118, 8);
INSERT INTO reportedsr.parroquias VALUES (380, 'El Dividive', 119, 8);
INSERT INTO reportedsr.parroquias VALUES (381, 'Agua Santa', 119, 8);
INSERT INTO reportedsr.parroquias VALUES (382, 'Agua Caliente', 119, 8);
INSERT INTO reportedsr.parroquias VALUES (383, 'El Cenizo', 119, 8);
INSERT INTO reportedsr.parroquias VALUES (384, 'Valerita', 119, 8);
INSERT INTO reportedsr.parroquias VALUES (385, 'Monte Carmelo', 120, 8);
INSERT INTO reportedsr.parroquias VALUES (386, 'Buena Vista', 120, 8);
INSERT INTO reportedsr.parroquias VALUES (387, 'Santa Maria del Horcon', 120, 8);
INSERT INTO reportedsr.parroquias VALUES (388, 'Motatan', 121, 8);
INSERT INTO reportedsr.parroquias VALUES (389, 'El Baño', 121, 8);
INSERT INTO reportedsr.parroquias VALUES (390, 'Jalisco', 121, 8);
INSERT INTO reportedsr.parroquias VALUES (391, 'Pampan', 122, 8);
INSERT INTO reportedsr.parroquias VALUES (392, 'Flor de Patria', 122, 8);
INSERT INTO reportedsr.parroquias VALUES (393, 'La Paz', 122, 8);
INSERT INTO reportedsr.parroquias VALUES (394, 'Santa Ana', 122, 8);
INSERT INTO reportedsr.parroquias VALUES (395, 'Pampanito', 123, 8);
INSERT INTO reportedsr.parroquias VALUES (396, 'La Concepcion', 123, 8);
INSERT INTO reportedsr.parroquias VALUES (398, 'Betijoque', 124, 8);
INSERT INTO reportedsr.parroquias VALUES (399, 'La Pueblita', 124, 8);
INSERT INTO reportedsr.parroquias VALUES (400, 'Los Cedros', 124, 8);
INSERT INTO reportedsr.parroquias VALUES (401, 'Jose Gregorio Hernandez', 124, 8);
INSERT INTO reportedsr.parroquias VALUES (402, 'Carvajal', 125, 8);
INSERT INTO reportedsr.parroquias VALUES (403, 'Antonio Nicolas Briceño', 125, 8);
INSERT INTO reportedsr.parroquias VALUES (404, 'Campo Alegre', 125, 8);
INSERT INTO reportedsr.parroquias VALUES (405, 'Jose Leonardo Suarez', 125, 8);
INSERT INTO reportedsr.parroquias VALUES (406, 'Sabana de Mendoza', 126, 8);
INSERT INTO reportedsr.parroquias VALUES (407, 'El Paraiso', 126, 8);
INSERT INTO reportedsr.parroquias VALUES (408, 'Junin', 126, 8);
INSERT INTO reportedsr.parroquias VALUES (409, 'Valmore Rodriguez', 126, 8);
INSERT INTO reportedsr.parroquias VALUES (410, 'Trujillo', 127, 8);
INSERT INTO reportedsr.parroquias VALUES (411, 'Andres Linares', 127, 8);
INSERT INTO reportedsr.parroquias VALUES (412, 'Chiquinquira', 127, 8);
INSERT INTO reportedsr.parroquias VALUES (413, 'Cristobal Mendoza', 127, 8);
INSERT INTO reportedsr.parroquias VALUES (414, 'Cruz Carrillo', 127, 8);
INSERT INTO reportedsr.parroquias VALUES (415, 'Matriz', 127, 8);
INSERT INTO reportedsr.parroquias VALUES (416, 'Monseñor Carriillo', 127, 8);
INSERT INTO reportedsr.parroquias VALUES (417, 'Tres Esquinas', 127, 8);
INSERT INTO reportedsr.parroquias VALUES (418, 'La Quebrada', 128, 8);
INSERT INTO reportedsr.parroquias VALUES (419, 'Cabimbu', 128, 8);
INSERT INTO reportedsr.parroquias VALUES (420, 'Jajo', 128, 8);
INSERT INTO reportedsr.parroquias VALUES (421, 'La Mesa', 128, 8);
INSERT INTO reportedsr.parroquias VALUES (422, 'Santiago', 128, 8);
INSERT INTO reportedsr.parroquias VALUES (423, 'Tuñame', 128, 8);
INSERT INTO reportedsr.parroquias VALUES (424, 'Valera', 129, 8);
INSERT INTO reportedsr.parroquias VALUES (425, 'Juan Ignacio Montilla', 129, 8);
INSERT INTO reportedsr.parroquias VALUES (426, 'La Beztriz', 129, 8);
INSERT INTO reportedsr.parroquias VALUES (427, 'Mercedes Diaz', 129, 8);
INSERT INTO reportedsr.parroquias VALUES (428, 'San Luis', 129, 8);
INSERT INTO reportedsr.parroquias VALUES (429, 'La Puerta', 129, 8);
INSERT INTO reportedsr.parroquias VALUES (430, 'Mendoza', 129, 8);
INSERT INTO reportedsr.parroquias VALUES (431, 'Sabaneta', 131, 9);
INSERT INTO reportedsr.parroquias VALUES (432, 'Rodriguez Dominguez', 131, 9);
INSERT INTO reportedsr.parroquias VALUES (433, 'Ticoporo', 132, 9);
INSERT INTO reportedsr.parroquias VALUES (434, 'Andres Bello', 132, 9);
INSERT INTO reportedsr.parroquias VALUES (435, 'Nicolas Pulido', 132, 9);
INSERT INTO reportedsr.parroquias VALUES (436, 'Arismendi', 133, 9);
INSERT INTO reportedsr.parroquias VALUES (437, 'Guadarrama', 133, 9);
INSERT INTO reportedsr.parroquias VALUES (438, 'La Union', 133, 9);
INSERT INTO reportedsr.parroquias VALUES (439, 'San Antonio', 133, 9);
INSERT INTO reportedsr.parroquias VALUES (440, 'Barinas', 134, 9);
INSERT INTO reportedsr.parroquias VALUES (441, 'Alfredo Arvelo Larriva', 134, 9);
INSERT INTO reportedsr.parroquias VALUES (442, 'San Silvestre', 134, 9);
INSERT INTO reportedsr.parroquias VALUES (443, 'Santa Ines', 134, 9);
INSERT INTO reportedsr.parroquias VALUES (444, 'Santa Lucia', 134, 9);
INSERT INTO reportedsr.parroquias VALUES (445, 'Torunos', 134, 9);
INSERT INTO reportedsr.parroquias VALUES (446, 'El Carmen', 134, 9);
INSERT INTO reportedsr.parroquias VALUES (447, 'Romulo Betancourt', 134, 9);
INSERT INTO reportedsr.parroquias VALUES (448, 'Corazon de Jesus', 134, 9);
INSERT INTO reportedsr.parroquias VALUES (449, 'Ramon Ignacio Mendez', 134, 9);
INSERT INTO reportedsr.parroquias VALUES (450, 'Alto Barinas', 134, 9);
INSERT INTO reportedsr.parroquias VALUES (451, 'Manual Palacio Fajardo', 134, 9);
INSERT INTO reportedsr.parroquias VALUES (452, 'Juan Antonio Rodriguez Dominguez', 134, 9);
INSERT INTO reportedsr.parroquias VALUES (453, 'Dominga Ortiz de Paez', 134, 9);
INSERT INTO reportedsr.parroquias VALUES (454, 'Barinitas', 135, 9);
INSERT INTO reportedsr.parroquias VALUES (455, 'Altamira', 135, 9);
INSERT INTO reportedsr.parroquias VALUES (456, 'Calderas', 135, 9);
INSERT INTO reportedsr.parroquias VALUES (457, 'Barrancas', 136, 9);
INSERT INTO reportedsr.parroquias VALUES (458, 'El Socorro', 136, 9);
INSERT INTO reportedsr.parroquias VALUES (459, 'Masparrito', 136, 9);
INSERT INTO reportedsr.parroquias VALUES (460, 'Santa Barbara', 137, 9);
INSERT INTO reportedsr.parroquias VALUES (461, 'Jose Ignacio del Pumar', 137, 9);
INSERT INTO reportedsr.parroquias VALUES (462, 'Pedro Briceño Mendez', 137, 9);
INSERT INTO reportedsr.parroquias VALUES (463, 'Ramon Ignacio Mendez', 137, 9);
INSERT INTO reportedsr.parroquias VALUES (464, 'Obispos', 138, 9);
INSERT INTO reportedsr.parroquias VALUES (465, 'El Real', 138, 9);
INSERT INTO reportedsr.parroquias VALUES (466, 'La Luz', 138, 9);
INSERT INTO reportedsr.parroquias VALUES (467, 'Los Guasmitos', 138, 9);
INSERT INTO reportedsr.parroquias VALUES (468, 'Ciudad Bolivar', 139, 9);
INSERT INTO reportedsr.parroquias VALUES (469, 'Ignacio Briceño', 139, 9);
INSERT INTO reportedsr.parroquias VALUES (470, 'Jose Felix Ribas', 139, 9);
INSERT INTO reportedsr.parroquias VALUES (471, 'Paez', 139, 9);
INSERT INTO reportedsr.parroquias VALUES (472, 'Libertad', 140, 9);
INSERT INTO reportedsr.parroquias VALUES (473, 'Dolores', 140, 9);
INSERT INTO reportedsr.parroquias VALUES (474, 'Palacios Fajardo', 140, 9);
INSERT INTO reportedsr.parroquias VALUES (475, 'Santa Rosa', 140, 9);
INSERT INTO reportedsr.parroquias VALUES (476, 'Ciudad de Nutrias', 141, 9);
INSERT INTO reportedsr.parroquias VALUES (477, 'El Regalo', 141, 9);
INSERT INTO reportedsr.parroquias VALUES (478, 'Puerto de Nutrias', 141, 9);
INSERT INTO reportedsr.parroquias VALUES (479, 'Santa Catalina', 141, 9);
INSERT INTO reportedsr.parroquias VALUES (480, 'El Canton', 142, 9);
INSERT INTO reportedsr.parroquias VALUES (481, 'Santa Cruz de Guacas', 142, 9);
INSERT INTO reportedsr.parroquias VALUES (482, 'Puerto Vivas', 142, 9);
INSERT INTO reportedsr.parroquias VALUES (483, 'Altagracia', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (484, 'Antimano', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (485, 'Candelaria', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (486, 'Caricuao', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (487, 'Catedral', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (488, 'Coche', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (489, 'El Junquito', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (490, 'El Paraiso', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (491, 'El Recreo', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (492, 'El Valle', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (493, 'La Pastora', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (494, 'La Vega', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (495, 'Macarao', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (496, 'San Agustin', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (497, 'San Bernardino', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (498, 'San Jose', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (499, 'San Juan', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (500, 'San Pedro', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (501, 'Santa Rosalia', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (502, 'Santa Teresa', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (503, 'Sucre', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (504, '23 de Enero', 143, 10);
INSERT INTO reportedsr.parroquias VALUES (505, 'Andres Eloy Blanco', 8, 11);
INSERT INTO reportedsr.parroquias VALUES (506, 'Romulo Gallegos', 8, 11);
INSERT INTO reportedsr.parroquias VALUES (507, 'Rio Caribe', 10, 11);
INSERT INTO reportedsr.parroquias VALUES (508, 'Antonio Jose de Sucre', 10, 11);
INSERT INTO reportedsr.parroquias VALUES (509, 'El Morro de Puerto Santo', 10, 11);
INSERT INTO reportedsr.parroquias VALUES (510, 'Puerto Santo', 10, 11);
INSERT INTO reportedsr.parroquias VALUES (511, 'San Juan de las Galdonas', 10, 11);
INSERT INTO reportedsr.parroquias VALUES (512, 'El Pilar', 11, 11);
INSERT INTO reportedsr.parroquias VALUES (513, 'El Rincon', 11, 11);
INSERT INTO reportedsr.parroquias VALUES (514, 'General Francisco Antonio Vasquez', 11, 11);
INSERT INTO reportedsr.parroquias VALUES (515, 'Guaraunos', 11, 11);
INSERT INTO reportedsr.parroquias VALUES (516, 'Tanapuicito', 11, 11);
INSERT INTO reportedsr.parroquias VALUES (517, 'Union', 11, 11);
INSERT INTO reportedsr.parroquias VALUES (518, 'Bolivar', 12, 11);
INSERT INTO reportedsr.parroquias VALUES (520, 'Santa Catalina', 12, 11);
INSERT INTO reportedsr.parroquias VALUES (521, 'Santa Rosa', 12, 11);
INSERT INTO reportedsr.parroquias VALUES (522, 'Santa Teresa', 12, 11);
INSERT INTO reportedsr.parroquias VALUES (523, 'Marigüitar', 13, 11);
INSERT INTO reportedsr.parroquias VALUES (524, 'Yaguaraparo', 14, 11);
INSERT INTO reportedsr.parroquias VALUES (525, 'El Paujil', 14, 11);
INSERT INTO reportedsr.parroquias VALUES (526, 'Libertad', 14, 11);
INSERT INTO reportedsr.parroquias VALUES (527, 'Araya', 15, 11);
INSERT INTO reportedsr.parroquias VALUES (528, 'Chacopata', 15, 11);
INSERT INTO reportedsr.parroquias VALUES (529, 'Manicuare', 15, 11);
INSERT INTO reportedsr.parroquias VALUES (530, 'Tunapuy', 144, 11);
INSERT INTO reportedsr.parroquias VALUES (531, 'Campo Elias', 144, 11);
INSERT INTO reportedsr.parroquias VALUES (532, 'Irapa', 145, 11);
INSERT INTO reportedsr.parroquias VALUES (533, 'Campo Claro', 145, 11);
INSERT INTO reportedsr.parroquias VALUES (534, 'Marabal', 145, 11);
INSERT INTO reportedsr.parroquias VALUES (535, 'San Antonio de Irapa', 145, 11);
INSERT INTO reportedsr.parroquias VALUES (536, 'Soro', 145, 11);
INSERT INTO reportedsr.parroquias VALUES (537, 'San Antonio del Golfo', 146, 11);
INSERT INTO reportedsr.parroquias VALUES (538, 'Cumanacoa', 147, 11);
INSERT INTO reportedsr.parroquias VALUES (539, 'Arenas', 147, 11);
INSERT INTO reportedsr.parroquias VALUES (540, 'Aricagua', 147, 11);
INSERT INTO reportedsr.parroquias VALUES (541, 'Cocollar', 147, 11);
INSERT INTO reportedsr.parroquias VALUES (542, 'San Fernando', 147, 11);
INSERT INTO reportedsr.parroquias VALUES (543, 'San Lorenzo', 147, 11);
INSERT INTO reportedsr.parroquias VALUES (544, 'Cariaco', 148, 11);
INSERT INTO reportedsr.parroquias VALUES (545, 'Catuaro', 148, 11);
INSERT INTO reportedsr.parroquias VALUES (546, 'Rendon', 148, 11);
INSERT INTO reportedsr.parroquias VALUES (547, 'Santa Cruz', 148, 11);
INSERT INTO reportedsr.parroquias VALUES (548, 'Santa Maria', 148, 11);
INSERT INTO reportedsr.parroquias VALUES (549, 'Altagracia', 149, 11);
INSERT INTO reportedsr.parroquias VALUES (550, 'Ayacucho', 149, 11);
INSERT INTO reportedsr.parroquias VALUES (551, 'Santa Ines', 149, 11);
INSERT INTO reportedsr.parroquias VALUES (552, 'Valentin Valiente', 149, 11);
INSERT INTO reportedsr.parroquias VALUES (553, 'San Juan', 149, 11);
INSERT INTO reportedsr.parroquias VALUES (554, 'Raul Leoni', 149, 11);
INSERT INTO reportedsr.parroquias VALUES (555, 'Santa Fe', 149, 11);
INSERT INTO reportedsr.parroquias VALUES (556, 'Guiria', 150, 11);
INSERT INTO reportedsr.parroquias VALUES (557, 'Bideau', 150, 11);
INSERT INTO reportedsr.parroquias VALUES (558, 'Cristobal Colon', 150, 11);
INSERT INTO reportedsr.parroquias VALUES (559, 'Punta de Piedras', 150, 11);
INSERT INTO reportedsr.parroquias VALUES (560, 'San Juan de los Cayos', 151, 12);
INSERT INTO reportedsr.parroquias VALUES (561, 'Capadare', 151, 12);
INSERT INTO reportedsr.parroquias VALUES (562, 'La Pastora', 151, 12);
INSERT INTO reportedsr.parroquias VALUES (563, 'Libertador', 151, 12);
INSERT INTO reportedsr.parroquias VALUES (564, 'San Luis', 152, 12);
INSERT INTO reportedsr.parroquias VALUES (565, 'Aracua', 152, 12);
INSERT INTO reportedsr.parroquias VALUES (566, 'La Paña', 152, 12);
INSERT INTO reportedsr.parroquias VALUES (567, 'Capatarida', 153, 12);
INSERT INTO reportedsr.parroquias VALUES (568, 'Bariro', 153, 12);
INSERT INTO reportedsr.parroquias VALUES (569, 'Borojo', 153, 12);
INSERT INTO reportedsr.parroquias VALUES (570, 'Guajiro', 153, 12);
INSERT INTO reportedsr.parroquias VALUES (571, 'Seque', 153, 12);
INSERT INTO reportedsr.parroquias VALUES (572, 'Zazarida', 153, 12);
INSERT INTO reportedsr.parroquias VALUES (573, 'Cacique Manaure', 154, 12);
INSERT INTO reportedsr.parroquias VALUES (574, 'Carirubana', 155, 12);
INSERT INTO reportedsr.parroquias VALUES (575, 'Norte', 155, 12);
INSERT INTO reportedsr.parroquias VALUES (576, 'Punta Cardon', 155, 12);
INSERT INTO reportedsr.parroquias VALUES (577, 'Santa Ana', 155, 12);
INSERT INTO reportedsr.parroquias VALUES (578, 'La Vela de Coro', 156, 12);
INSERT INTO reportedsr.parroquias VALUES (579, 'Acurigua', 156, 12);
INSERT INTO reportedsr.parroquias VALUES (580, 'Guaibacoa', 156, 12);
INSERT INTO reportedsr.parroquias VALUES (581, 'Las Calderas', 156, 12);
INSERT INTO reportedsr.parroquias VALUES (582, 'Macoruca', 156, 12);
INSERT INTO reportedsr.parroquias VALUES (583, 'Dabajuro', 157, 12);
INSERT INTO reportedsr.parroquias VALUES (584, 'Pedregal', 158, 12);
INSERT INTO reportedsr.parroquias VALUES (585, 'Agua Clara', 158, 12);
INSERT INTO reportedsr.parroquias VALUES (586, 'Avaria', 158, 12);
INSERT INTO reportedsr.parroquias VALUES (587, 'Piedra Grande', 158, 12);
INSERT INTO reportedsr.parroquias VALUES (588, 'Purureche', 158, 12);
INSERT INTO reportedsr.parroquias VALUES (589, 'Pueblo Nuevo', 159, 12);
INSERT INTO reportedsr.parroquias VALUES (590, 'Adicora', 159, 12);
INSERT INTO reportedsr.parroquias VALUES (591, 'Baraivedi', 159, 12);
INSERT INTO reportedsr.parroquias VALUES (592, 'Buena Vista', 159, 12);
INSERT INTO reportedsr.parroquias VALUES (593, 'Jadacaquiva', 159, 12);
INSERT INTO reportedsr.parroquias VALUES (594, 'Moruy', 159, 12);
INSERT INTO reportedsr.parroquias VALUES (595, 'Adare', 159, 12);
INSERT INTO reportedsr.parroquias VALUES (596, 'El Hato', 159, 12);
INSERT INTO reportedsr.parroquias VALUES (597, 'El Vinculo', 159, 12);
INSERT INTO reportedsr.parroquias VALUES (598, 'Churuguara', 160, 12);
INSERT INTO reportedsr.parroquias VALUES (599, 'Agua Larga', 160, 12);
INSERT INTO reportedsr.parroquias VALUES (600, 'Pauji', 160, 12);
INSERT INTO reportedsr.parroquias VALUES (601, 'Independencia', 160, 12);
INSERT INTO reportedsr.parroquias VALUES (602, 'Maparari', 160, 12);
INSERT INTO reportedsr.parroquias VALUES (603, 'Jacura', 161, 12);
INSERT INTO reportedsr.parroquias VALUES (604, 'Agua Linda', 161, 12);
INSERT INTO reportedsr.parroquias VALUES (605, 'Araurima', 161, 12);
INSERT INTO reportedsr.parroquias VALUES (606, 'Los Taques', 162, 12);
INSERT INTO reportedsr.parroquias VALUES (607, 'Judibana', 162, 12);
INSERT INTO reportedsr.parroquias VALUES (608, 'Mene de Mauroa', 163, 12);
INSERT INTO reportedsr.parroquias VALUES (609, 'Casigua', 163, 12);
INSERT INTO reportedsr.parroquias VALUES (610, 'San Felix', 163, 12);
INSERT INTO reportedsr.parroquias VALUES (611, 'San Antonio', 164, 12);
INSERT INTO reportedsr.parroquias VALUES (612, 'San Gabriel', 164, 12);
INSERT INTO reportedsr.parroquias VALUES (613, 'Santa Ana', 164, 12);
INSERT INTO reportedsr.parroquias VALUES (614, 'Guzman Guillermo', 164, 12);
INSERT INTO reportedsr.parroquias VALUES (615, 'Mitare', 164, 12);
INSERT INTO reportedsr.parroquias VALUES (616, 'Rio Seco', 164, 12);
INSERT INTO reportedsr.parroquias VALUES (617, 'Sabaneta', 164, 12);
INSERT INTO reportedsr.parroquias VALUES (619, 'Chichiriviche', 165, 12);
INSERT INTO reportedsr.parroquias VALUES (620, 'Boca de Tocuyo', 165, 12);
INSERT INTO reportedsr.parroquias VALUES (621, 'Tocuyo de la Costa', 165, 12);
INSERT INTO reportedsr.parroquias VALUES (622, 'Palmasola', 166, 12);
INSERT INTO reportedsr.parroquias VALUES (623, 'Cabure', 167, 12);
INSERT INTO reportedsr.parroquias VALUES (624, 'Colina', 167, 12);
INSERT INTO reportedsr.parroquias VALUES (625, 'Curimagua', 167, 12);
INSERT INTO reportedsr.parroquias VALUES (626, 'Piritu', 168, 12);
INSERT INTO reportedsr.parroquias VALUES (627, 'San Jose de la Costa', 168, 12);
INSERT INTO reportedsr.parroquias VALUES (628, 'San Francisco', 169, 12);
INSERT INTO reportedsr.parroquias VALUES (629, 'Tucacas', 170, 12);
INSERT INTO reportedsr.parroquias VALUES (630, 'Boca de Aroa', 170, 12);
INSERT INTO reportedsr.parroquias VALUES (631, 'San Francisco', 171, 12);
INSERT INTO reportedsr.parroquias VALUES (632, 'Pecaya', 171, 12);
INSERT INTO reportedsr.parroquias VALUES (633, 'Tocopero', 172, 12);
INSERT INTO reportedsr.parroquias VALUES (634, 'Santa Cruz de Buacaral', 173, 12);
INSERT INTO reportedsr.parroquias VALUES (635, 'El Charal', 173, 12);
INSERT INTO reportedsr.parroquias VALUES (636, 'Las Vegas del Tuy', 173, 12);
INSERT INTO reportedsr.parroquias VALUES (637, 'Urumaco', 174, 12);
INSERT INTO reportedsr.parroquias VALUES (638, 'Bruzual', 174, 12);
INSERT INTO reportedsr.parroquias VALUES (639, 'Puerto Cumarebo', 175, 12);
INSERT INTO reportedsr.parroquias VALUES (640, 'La Cienaga', 175, 12);
INSERT INTO reportedsr.parroquias VALUES (641, 'La Soledad', 175, 12);
INSERT INTO reportedsr.parroquias VALUES (642, 'Pueblo Cumarebo', 175, 12);
INSERT INTO reportedsr.parroquias VALUES (643, 'Zazarida', 175, 12);
INSERT INTO reportedsr.parroquias VALUES (644, 'Camaguan', 176, 13);
INSERT INTO reportedsr.parroquias VALUES (645, 'Puerto Miranda', 176, 13);
INSERT INTO reportedsr.parroquias VALUES (646, 'Uverito', 176, 13);
INSERT INTO reportedsr.parroquias VALUES (647, 'Chaguaramas', 177, 13);
INSERT INTO reportedsr.parroquias VALUES (648, 'El Socorro', 178, 13);
INSERT INTO reportedsr.parroquias VALUES (649, 'Cazorla', 179, 13);
INSERT INTO reportedsr.parroquias VALUES (650, 'Valle de la Pascua', 180, 13);
INSERT INTO reportedsr.parroquias VALUES (651, 'Espino', 180, 13);
INSERT INTO reportedsr.parroquias VALUES (652, 'Las Mercedes', 181, 13);
INSERT INTO reportedsr.parroquias VALUES (653, 'Cabruta', 181, 13);
INSERT INTO reportedsr.parroquias VALUES (654, 'Santa Rita de Manapire', 181, 13);
INSERT INTO reportedsr.parroquias VALUES (655, 'El Sombrero', 182, 13);
INSERT INTO reportedsr.parroquias VALUES (656, 'Sosa', 182, 13);
INSERT INTO reportedsr.parroquias VALUES (657, 'Calabozo', 183, 13);
INSERT INTO reportedsr.parroquias VALUES (658, 'El Calvario', 183, 13);
INSERT INTO reportedsr.parroquias VALUES (659, 'El Rastro', 183, 13);
INSERT INTO reportedsr.parroquias VALUES (660, 'Guardatinajas', 183, 13);
INSERT INTO reportedsr.parroquias VALUES (661, 'Altagracia de Orituco', 184, 13);
INSERT INTO reportedsr.parroquias VALUES (662, 'Lezama', 184, 13);
INSERT INTO reportedsr.parroquias VALUES (663, 'Libertad de Orituco', 184, 13);
INSERT INTO reportedsr.parroquias VALUES (664, 'Paso Real de Maicara', 184, 13);
INSERT INTO reportedsr.parroquias VALUES (665, 'San Francisco de Maicara', 184, 13);
INSERT INTO reportedsr.parroquias VALUES (666, 'San Rafarel de Orituco', 184, 13);
INSERT INTO reportedsr.parroquias VALUES (667, 'Soublette', 184, 13);
INSERT INTO reportedsr.parroquias VALUES (668, 'Ortiz', 185, 13);
INSERT INTO reportedsr.parroquias VALUES (669, 'San Francisco de Tiznados', 185, 13);
INSERT INTO reportedsr.parroquias VALUES (670, 'San Jose de Tiznados', 185, 13);
INSERT INTO reportedsr.parroquias VALUES (671, 'San Lorenzo de Tiznados', 185, 13);
INSERT INTO reportedsr.parroquias VALUES (672, 'Tucupido', 186, 13);
INSERT INTO reportedsr.parroquias VALUES (673, 'San Rafael de Laya', 186, 13);
INSERT INTO reportedsr.parroquias VALUES (674, 'San Juan de los Morros', 187, 13);
INSERT INTO reportedsr.parroquias VALUES (675, 'Cantagallo', 187, 13);
INSERT INTO reportedsr.parroquias VALUES (676, 'Parapara', 187, 13);
INSERT INTO reportedsr.parroquias VALUES (677, 'San Jose De Guaribe', 188, 13);
INSERT INTO reportedsr.parroquias VALUES (678, 'Santa Maria De Ipire', 189, 13);
INSERT INTO reportedsr.parroquias VALUES (679, 'Altamira', 189, 13);
INSERT INTO reportedsr.parroquias VALUES (680, 'Zaraza', 190, 13);
INSERT INTO reportedsr.parroquias VALUES (681, 'San Jose de Unare', 190, 13);
INSERT INTO reportedsr.parroquias VALUES (682, 'Aristides Bastidas', 191, 14);
INSERT INTO reportedsr.parroquias VALUES (683, 'Bolivar', 192, 14);
INSERT INTO reportedsr.parroquias VALUES (684, 'Bruzual', 193, 14);
INSERT INTO reportedsr.parroquias VALUES (685, 'Campo Elias', 193, 14);
INSERT INTO reportedsr.parroquias VALUES (686, 'Cocorote', 194, 14);
INSERT INTO reportedsr.parroquias VALUES (687, 'Independencia', 195, 14);
INSERT INTO reportedsr.parroquias VALUES (688, 'Jose Antonio Paez', 196, 14);
INSERT INTO reportedsr.parroquias VALUES (689, 'La Trinidad', 197, 14);
INSERT INTO reportedsr.parroquias VALUES (690, 'Manuel Monge', 198, 14);
INSERT INTO reportedsr.parroquias VALUES (691, 'Nirgua', 199, 14);
INSERT INTO reportedsr.parroquias VALUES (692, 'Salom', 199, 14);
INSERT INTO reportedsr.parroquias VALUES (693, 'Temerla', 199, 14);
INSERT INTO reportedsr.parroquias VALUES (695, 'San Andres', 200, 14);
INSERT INTO reportedsr.parroquias VALUES (696, 'San Felipe', 201, 14);
INSERT INTO reportedsr.parroquias VALUES (697, 'Albarico', 201, 14);
INSERT INTO reportedsr.parroquias VALUES (698, 'San Javier', 201, 14);
INSERT INTO reportedsr.parroquias VALUES (699, 'Sucre', 202, 14);
INSERT INTO reportedsr.parroquias VALUES (700, 'Urariche', 203, 14);
INSERT INTO reportedsr.parroquias VALUES (701, 'Veroes', 204, 14);
INSERT INTO reportedsr.parroquias VALUES (702, 'El Guayabo', 204, 14);
INSERT INTO reportedsr.parroquias VALUES (703, 'Monagas', 16, 15);
INSERT INTO reportedsr.parroquias VALUES (704, 'San Timoteo', 205, 15);
INSERT INTO reportedsr.parroquias VALUES (705, 'General Urdaneta', 205, 15);
INSERT INTO reportedsr.parroquias VALUES (706, 'Libertador', 205, 15);
INSERT INTO reportedsr.parroquias VALUES (707, 'Manuel Guanioa Matos', 205, 15);
INSERT INTO reportedsr.parroquias VALUES (708, 'Marcelino Briceño', 205, 15);
INSERT INTO reportedsr.parroquias VALUES (709, 'Pueblo Nuevo', 205, 15);
INSERT INTO reportedsr.parroquias VALUES (710, 'Ambrosio', 206, 15);
INSERT INTO reportedsr.parroquias VALUES (711, 'Carmen Herrera', 206, 15);
INSERT INTO reportedsr.parroquias VALUES (712, 'German Rios Linares', 206, 15);
INSERT INTO reportedsr.parroquias VALUES (713, 'La Rosa', 206, 15);
INSERT INTO reportedsr.parroquias VALUES (714, 'Jorge Hernandez', 206, 15);
INSERT INTO reportedsr.parroquias VALUES (715, 'Romulo Betancourt', 206, 15);
INSERT INTO reportedsr.parroquias VALUES (716, 'San Benito', 206, 15);
INSERT INTO reportedsr.parroquias VALUES (717, 'Aristides Calvani', 206, 15);
INSERT INTO reportedsr.parroquias VALUES (718, 'Punta Gorda', 206, 15);
INSERT INTO reportedsr.parroquias VALUES (719, 'Encontrados', 207, 15);
INSERT INTO reportedsr.parroquias VALUES (720, 'Udon Perez', 207, 15);
INSERT INTO reportedsr.parroquias VALUES (722, 'Moralito', 208, 15);
INSERT INTO reportedsr.parroquias VALUES (723, 'Santa Barbara', 208, 15);
INSERT INTO reportedsr.parroquias VALUES (724, 'Santa Cruz del Zulia', 208, 15);
INSERT INTO reportedsr.parroquias VALUES (725, 'Urribarri', 208, 15);
INSERT INTO reportedsr.parroquias VALUES (726, 'Simon Rodriguez', 209, 15);
INSERT INTO reportedsr.parroquias VALUES (727, 'Carlos Quevedo', 209, 15);
INSERT INTO reportedsr.parroquias VALUES (728, 'Francisco Javier Pulgar', 209, 15);
INSERT INTO reportedsr.parroquias VALUES (729, 'La Concepcion', 210, 15);
INSERT INTO reportedsr.parroquias VALUES (730, 'Jose Ramon Yepes', 210, 15);
INSERT INTO reportedsr.parroquias VALUES (731, 'Mariano Parra Leon', 210, 15);
INSERT INTO reportedsr.parroquias VALUES (732, 'San Jose', 210, 15);
INSERT INTO reportedsr.parroquias VALUES (733, 'Jesus Maria Semprum', 211, 15);
INSERT INTO reportedsr.parroquias VALUES (734, 'Bari', 211, 15);
INSERT INTO reportedsr.parroquias VALUES (735, 'Concepcion', 212, 15);
INSERT INTO reportedsr.parroquias VALUES (736, 'Andres Bello', 212, 15);
INSERT INTO reportedsr.parroquias VALUES (737, 'Chiquinquira', 212, 15);
INSERT INTO reportedsr.parroquias VALUES (738, 'El Carmelo', 212, 15);
INSERT INTO reportedsr.parroquias VALUES (739, 'Potreritos', 212, 15);
INSERT INTO reportedsr.parroquias VALUES (740, 'Alonso de Ojeda', 213, 15);
INSERT INTO reportedsr.parroquias VALUES (741, 'Libertad', 213, 15);
INSERT INTO reportedsr.parroquias VALUES (742, 'Campo Lara', 213, 15);
INSERT INTO reportedsr.parroquias VALUES (743, 'Eleazar Lopez Contreras', 213, 15);
INSERT INTO reportedsr.parroquias VALUES (744, 'Venezuela', 213, 15);
INSERT INTO reportedsr.parroquias VALUES (745, 'Libertad', 214, 15);
INSERT INTO reportedsr.parroquias VALUES (746, 'Bartolome de las Casas', 214, 15);
INSERT INTO reportedsr.parroquias VALUES (747, 'Rio Negro', 214, 15);
INSERT INTO reportedsr.parroquias VALUES (748, 'San Jose de Perija', 214, 15);
INSERT INTO reportedsr.parroquias VALUES (749, 'San Rafael', 215, 15);
INSERT INTO reportedsr.parroquias VALUES (750, 'La Sierrita', 215, 15);
INSERT INTO reportedsr.parroquias VALUES (751, 'Las Parcelas', 215, 15);
INSERT INTO reportedsr.parroquias VALUES (752, 'Luis de Vicente', 215, 15);
INSERT INTO reportedsr.parroquias VALUES (753, 'Monseñor Marcos Sergio Godoy', 215, 15);
INSERT INTO reportedsr.parroquias VALUES (754, 'Ricaurte', 215, 15);
INSERT INTO reportedsr.parroquias VALUES (755, 'Tamare', 215, 15);
INSERT INTO reportedsr.parroquias VALUES (756, 'Antonio Borjas Romero', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (757, 'Bolivar', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (758, 'Cacique Mara', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (759, 'Caracciolo Parra Perez', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (760, 'Cecilio Acosta', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (761, 'Cristo De Aranza', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (762, 'Coquivacoa', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (763, 'Chiquinquira', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (764, 'Francisco E. Bustamante', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (765, 'Idelfonso Vasquez', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (766, 'Juana de Avila', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (767, 'Luis Hurtado Higuera', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (768, 'Manuel Dagnino', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (769, 'Olegario Villalobos', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (770, 'Raul Leoni', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (771, 'Santa Lucia', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (772, 'Venancio Pulgar', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (773, 'San Isidro', 216, 15);
INSERT INTO reportedsr.parroquias VALUES (774, 'Altagracia', 217, 15);
INSERT INTO reportedsr.parroquias VALUES (775, 'Ana Maria Campos', 217, 15);
INSERT INTO reportedsr.parroquias VALUES (776, 'Faria', 217, 15);
INSERT INTO reportedsr.parroquias VALUES (777, 'San Antonio', 217, 15);
INSERT INTO reportedsr.parroquias VALUES (778, 'San Jose', 217, 15);
INSERT INTO reportedsr.parroquias VALUES (779, 'Sinamaica', 218, 15);
INSERT INTO reportedsr.parroquias VALUES (780, 'Alta Guajira', 218, 15);
INSERT INTO reportedsr.parroquias VALUES (781, 'Alias Sanchez Rubio', 218, 15);
INSERT INTO reportedsr.parroquias VALUES (782, 'Guajira', 218, 15);
INSERT INTO reportedsr.parroquias VALUES (783, 'El Rosario', 219, 15);
INSERT INTO reportedsr.parroquias VALUES (784, 'Donaldo Garcia', 219, 15);
INSERT INTO reportedsr.parroquias VALUES (785, 'Sixto Zambrano', 219, 15);
INSERT INTO reportedsr.parroquias VALUES (786, 'San Francisco', 220, 15);
INSERT INTO reportedsr.parroquias VALUES (787, 'El Bajo', 220, 15);
INSERT INTO reportedsr.parroquias VALUES (788, 'Domitila Flores', 220, 15);
INSERT INTO reportedsr.parroquias VALUES (789, 'Francisco Ochoa', 220, 15);
INSERT INTO reportedsr.parroquias VALUES (790, 'Los Cortijos', 220, 15);
INSERT INTO reportedsr.parroquias VALUES (791, 'Marcial Hernandez', 220, 15);
INSERT INTO reportedsr.parroquias VALUES (792, 'Santa Rita', 221, 15);
INSERT INTO reportedsr.parroquias VALUES (793, 'El Mene', 221, 15);
INSERT INTO reportedsr.parroquias VALUES (794, 'Jose Cenoivo Urribarri', 221, 15);
INSERT INTO reportedsr.parroquias VALUES (795, 'Pedro Licas Urribarri', 221, 15);
INSERT INTO reportedsr.parroquias VALUES (796, 'Manuel Manrique', 222, 15);
INSERT INTO reportedsr.parroquias VALUES (797, 'Rafael Maria Baralt', 222, 15);
INSERT INTO reportedsr.parroquias VALUES (798, 'Rafael Urdaneta', 222, 15);
INSERT INTO reportedsr.parroquias VALUES (799, 'Bobures', 223, 15);
INSERT INTO reportedsr.parroquias VALUES (800, 'El Batey', 223, 15);
INSERT INTO reportedsr.parroquias VALUES (801, 'Gibrartar', 223, 15);
INSERT INTO reportedsr.parroquias VALUES (802, 'Heras', 223, 15);
INSERT INTO reportedsr.parroquias VALUES (803, 'Monseñor Arturo Celestino Alvarez', 223, 15);
INSERT INTO reportedsr.parroquias VALUES (804, 'Romulo Gallegos', 223, 15);
INSERT INTO reportedsr.parroquias VALUES (805, 'La Victoria', 224, 15);
INSERT INTO reportedsr.parroquias VALUES (806, 'Rafael Urdaneta', 224, 15);
INSERT INTO reportedsr.parroquias VALUES (807, 'Raul Cuenca', 224, 15);
INSERT INTO reportedsr.parroquias VALUES (808, 'Andres Bello', 225, 16);
INSERT INTO reportedsr.parroquias VALUES (809, 'Antonio Romulo Costa', 226, 16);
INSERT INTO reportedsr.parroquias VALUES (810, 'Ayacucho', 227, 16);
INSERT INTO reportedsr.parroquias VALUES (811, 'Rivas Berti', 227, 16);
INSERT INTO reportedsr.parroquias VALUES (812, 'San Pedro del Rio', 227, 16);
INSERT INTO reportedsr.parroquias VALUES (813, 'Bolivar', 228, 16);
INSERT INTO reportedsr.parroquias VALUES (814, 'Palotal', 228, 16);
INSERT INTO reportedsr.parroquias VALUES (815, 'Juan Vicente Gomez', 228, 16);
INSERT INTO reportedsr.parroquias VALUES (816, 'Isaias Medina Angarita', 228, 16);
INSERT INTO reportedsr.parroquias VALUES (817, 'Cardenas', 229, 16);
INSERT INTO reportedsr.parroquias VALUES (818, 'Amenodoro Rangel Lamus', 229, 16);
INSERT INTO reportedsr.parroquias VALUES (819, 'La Florida', 229, 16);
INSERT INTO reportedsr.parroquias VALUES (820, 'Cordoba', 230, 16);
INSERT INTO reportedsr.parroquias VALUES (821, 'Cordoba', 231, 16);
INSERT INTO reportedsr.parroquias VALUES (822, 'Alberto Adriani', 231, 16);
INSERT INTO reportedsr.parroquias VALUES (823, 'Santo Domingo', 231, 16);
INSERT INTO reportedsr.parroquias VALUES (824, 'Francisco de Miranda', 232, 16);
INSERT INTO reportedsr.parroquias VALUES (825, 'Garcia De Hevia', 233, 16);
INSERT INTO reportedsr.parroquias VALUES (826, 'Boca de Grita', 233, 16);
INSERT INTO reportedsr.parroquias VALUES (827, 'Jose Antonio Paez', 233, 16);
INSERT INTO reportedsr.parroquias VALUES (828, 'Los Guasimos', 234, 16);
INSERT INTO reportedsr.parroquias VALUES (829, 'Independencia', 235, 16);
INSERT INTO reportedsr.parroquias VALUES (830, 'Juan German Roscio', 235, 16);
INSERT INTO reportedsr.parroquias VALUES (831, 'Roman Cardenas', 235, 16);
INSERT INTO reportedsr.parroquias VALUES (832, 'Jauregui', 236, 16);
INSERT INTO reportedsr.parroquias VALUES (833, 'Emilio Constantino Guerrero', 236, 16);
INSERT INTO reportedsr.parroquias VALUES (834, 'Monseñor Miguel Antonio Salas', 236, 16);
INSERT INTO reportedsr.parroquias VALUES (835, 'Jose Maria Vargas', 237, 16);
INSERT INTO reportedsr.parroquias VALUES (836, 'Junin', 238, 16);
INSERT INTO reportedsr.parroquias VALUES (837, 'La Petrolera', 238, 16);
INSERT INTO reportedsr.parroquias VALUES (838, 'Quinimari', 238, 16);
INSERT INTO reportedsr.parroquias VALUES (839, 'Bramon', 238, 16);
INSERT INTO reportedsr.parroquias VALUES (840, 'Libertad', 239, 16);
INSERT INTO reportedsr.parroquias VALUES (841, 'Cipriano Castro', 239, 16);
INSERT INTO reportedsr.parroquias VALUES (842, 'Manuel Felipe Rugeles', 239, 16);
INSERT INTO reportedsr.parroquias VALUES (843, 'Libertador', 240, 16);
INSERT INTO reportedsr.parroquias VALUES (844, 'Emeterio Ochoa', 240, 16);
INSERT INTO reportedsr.parroquias VALUES (845, 'Doradas', 240, 16);
INSERT INTO reportedsr.parroquias VALUES (846, 'San Joaquin de Navay', 240, 16);
INSERT INTO reportedsr.parroquias VALUES (847, 'Lobatera', 241, 16);
INSERT INTO reportedsr.parroquias VALUES (848, 'Constitucion', 241, 16);
INSERT INTO reportedsr.parroquias VALUES (849, 'Michelena', 242, 16);
INSERT INTO reportedsr.parroquias VALUES (850, 'Panamericano', 243, 16);
INSERT INTO reportedsr.parroquias VALUES (851, 'La Palmita', 243, 16);
INSERT INTO reportedsr.parroquias VALUES (852, 'Pedro Maria Ureña', 244, 16);
INSERT INTO reportedsr.parroquias VALUES (853, 'Nueva Arcadia', 244, 16);
INSERT INTO reportedsr.parroquias VALUES (854, 'Rafael Urdaneta', 245, 16);
INSERT INTO reportedsr.parroquias VALUES (855, 'Samuel Dario Maldonado', 246, 16);
INSERT INTO reportedsr.parroquias VALUES (856, 'Bocono', 246, 16);
INSERT INTO reportedsr.parroquias VALUES (857, 'Hernandez', 246, 16);
INSERT INTO reportedsr.parroquias VALUES (858, 'La Concordia', 247, 16);
INSERT INTO reportedsr.parroquias VALUES (859, 'Pedro Maria Morantes', 247, 16);
INSERT INTO reportedsr.parroquias VALUES (860, 'San Juan Bautista', 247, 16);
INSERT INTO reportedsr.parroquias VALUES (861, 'San Sebastian', 247, 16);
INSERT INTO reportedsr.parroquias VALUES (862, 'Dr. Francisco Romero Lobo', 247, 16);
INSERT INTO reportedsr.parroquias VALUES (863, 'Seboruco', 248, 16);
INSERT INTO reportedsr.parroquias VALUES (864, 'Simon Rodriguez', 249, 16);
INSERT INTO reportedsr.parroquias VALUES (865, 'Sucre', 250, 16);
INSERT INTO reportedsr.parroquias VALUES (866, 'Eleazar Lopez Contreras', 250, 16);
INSERT INTO reportedsr.parroquias VALUES (867, 'San Pablo', 250, 16);
INSERT INTO reportedsr.parroquias VALUES (868, 'Torbes', 251, 16);
INSERT INTO reportedsr.parroquias VALUES (869, 'Uribante', 252, 16);
INSERT INTO reportedsr.parroquias VALUES (870, 'Cardenas', 252, 16);
INSERT INTO reportedsr.parroquias VALUES (871, 'Juan Pablo Peñaloza', 252, 16);
INSERT INTO reportedsr.parroquias VALUES (872, 'Potosi', 252, 16);
INSERT INTO reportedsr.parroquias VALUES (873, 'San Judas Tadeo', 252, 16);
INSERT INTO reportedsr.parroquias VALUES (880, 'Achaguas', 253, 17);
INSERT INTO reportedsr.parroquias VALUES (881, 'Apurito', 253, 17);
INSERT INTO reportedsr.parroquias VALUES (882, 'El Yagual', 253, 17);
INSERT INTO reportedsr.parroquias VALUES (883, 'Guachara', 253, 17);
INSERT INTO reportedsr.parroquias VALUES (884, 'Mucuritas', 253, 17);
INSERT INTO reportedsr.parroquias VALUES (885, 'Queseras del Medio', 253, 17);
INSERT INTO reportedsr.parroquias VALUES (886, 'Biruaca', 254, 17);
INSERT INTO reportedsr.parroquias VALUES (887, 'Bruzual', 255, 17);
INSERT INTO reportedsr.parroquias VALUES (888, 'Mantecal', 255, 17);
INSERT INTO reportedsr.parroquias VALUES (889, 'Quintero', 255, 17);
INSERT INTO reportedsr.parroquias VALUES (890, 'Rincon Hondo', 255, 17);
INSERT INTO reportedsr.parroquias VALUES (891, 'San Vicente', 255, 17);
INSERT INTO reportedsr.parroquias VALUES (892, 'Guasdualito', 256, 17);
INSERT INTO reportedsr.parroquias VALUES (893, 'Aramendi', 256, 17);
INSERT INTO reportedsr.parroquias VALUES (894, 'El Amparo', 256, 17);
INSERT INTO reportedsr.parroquias VALUES (895, 'San Camilo', 256, 17);
INSERT INTO reportedsr.parroquias VALUES (896, 'Urdaneta', 256, 17);
INSERT INTO reportedsr.parroquias VALUES (897, 'San Juan de Payara', 257, 17);
INSERT INTO reportedsr.parroquias VALUES (898, 'Codazzi', 257, 17);
INSERT INTO reportedsr.parroquias VALUES (899, 'Cunaviche', 257, 17);
INSERT INTO reportedsr.parroquias VALUES (900, 'Elorza', 258, 17);
INSERT INTO reportedsr.parroquias VALUES (901, 'La Trinidad', 258, 17);
INSERT INTO reportedsr.parroquias VALUES (902, 'San Fernando', 259, 17);
INSERT INTO reportedsr.parroquias VALUES (903, 'El Recreo', 259, 17);
INSERT INTO reportedsr.parroquias VALUES (904, 'Peñalver', 259, 17);
INSERT INTO reportedsr.parroquias VALUES (905, 'San Rafael de Atamaica', 259, 17);
INSERT INTO reportedsr.parroquias VALUES (906, 'Presidente Betancourt', 260, 18);
INSERT INTO reportedsr.parroquias VALUES (907, 'Presidente Paez', 260, 18);
INSERT INTO reportedsr.parroquias VALUES (908, 'Presidente Romulo Gallegos', 260, 18);
INSERT INTO reportedsr.parroquias VALUES (909, 'Gabriel Picon Gonzalez', 260, 18);
INSERT INTO reportedsr.parroquias VALUES (910, 'Hector Amable Mora', 260, 18);
INSERT INTO reportedsr.parroquias VALUES (911, 'Jose Nucete Sardi', 260, 18);
INSERT INTO reportedsr.parroquias VALUES (912, 'Pulido Mendez', 260, 18);
INSERT INTO reportedsr.parroquias VALUES (913, 'Andres Bello', 261, 18);
INSERT INTO reportedsr.parroquias VALUES (914, 'Antonio Pinto Salinas', 262, 18);
INSERT INTO reportedsr.parroquias VALUES (915, 'Mesa Bolivar', 262, 18);
INSERT INTO reportedsr.parroquias VALUES (916, 'Mesa de las Palmas', 262, 18);
INSERT INTO reportedsr.parroquias VALUES (917, 'Aricagua', 263, 18);
INSERT INTO reportedsr.parroquias VALUES (918, 'San Antonio', 263, 18);
INSERT INTO reportedsr.parroquias VALUES (919, 'Arzobispo Chacon', 264, 18);
INSERT INTO reportedsr.parroquias VALUES (920, 'Capuri', 264, 18);
INSERT INTO reportedsr.parroquias VALUES (921, 'Chacanta', 264, 18);
INSERT INTO reportedsr.parroquias VALUES (922, 'El Molino', 264, 18);
INSERT INTO reportedsr.parroquias VALUES (923, 'Guaimaral', 264, 18);
INSERT INTO reportedsr.parroquias VALUES (924, 'Mucutuy', 264, 18);
INSERT INTO reportedsr.parroquias VALUES (925, 'Mucuchachi', 264, 18);
INSERT INTO reportedsr.parroquias VALUES (926, 'Fernandez Peña', 265, 18);
INSERT INTO reportedsr.parroquias VALUES (927, 'Matriz', 265, 18);
INSERT INTO reportedsr.parroquias VALUES (928, 'Montalban', 265, 18);
INSERT INTO reportedsr.parroquias VALUES (929, 'Acequias', 265, 18);
INSERT INTO reportedsr.parroquias VALUES (930, 'Jaji', 265, 18);
INSERT INTO reportedsr.parroquias VALUES (931, 'La Mesa', 265, 18);
INSERT INTO reportedsr.parroquias VALUES (932, 'San Jose del Sur', 265, 18);
INSERT INTO reportedsr.parroquias VALUES (933, 'Caracciolo Quintero', 266, 18);
INSERT INTO reportedsr.parroquias VALUES (934, 'Florencio Ramirez', 266, 18);
INSERT INTO reportedsr.parroquias VALUES (935, 'Cardenal Quintero', 267, 18);
INSERT INTO reportedsr.parroquias VALUES (936, 'Las Piedras', 267, 18);
INSERT INTO reportedsr.parroquias VALUES (937, 'Guaraque', 268, 18);
INSERT INTO reportedsr.parroquias VALUES (938, 'Mesa de Quintero', 268, 18);
INSERT INTO reportedsr.parroquias VALUES (939, 'Rio Negro', 268, 18);
INSERT INTO reportedsr.parroquias VALUES (940, 'Julio Cesar Salas', 269, 18);
INSERT INTO reportedsr.parroquias VALUES (941, 'Palmira', 269, 18);
INSERT INTO reportedsr.parroquias VALUES (942, 'San Cristobal de Torondoy', 270, 18);
INSERT INTO reportedsr.parroquias VALUES (943, 'Antonio SpinettiI Dini', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (944, 'Arias', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (945, 'Caracciolo Parra Perez', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (946, 'Domingo Peña', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (947, 'El Llano', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (948, 'Gonzalo Picon Febres', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (949, 'Jacinto Plaza', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (950, 'Juan Rodriguez Suarez', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (951, 'Lasso de la Vega', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (952, 'Mariano Picon Salas', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (953, 'Milla', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (954, 'Osuna Rodriguez', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (955, 'Sagrario', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (956, 'El Morro', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (957, 'Los Nevados', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (958, 'Andres Eloy Blanco', 272, 18);
INSERT INTO reportedsr.parroquias VALUES (959, 'La Venta', 272, 18);
INSERT INTO reportedsr.parroquias VALUES (960, 'Piñango', 272, 18);
INSERT INTO reportedsr.parroquias VALUES (961, 'Obispo Ramos De Lora', 273, 18);
INSERT INTO reportedsr.parroquias VALUES (962, 'Eloy Paredes', 273, 18);
INSERT INTO reportedsr.parroquias VALUES (963, 'San Rafael de Alcazar', 273, 18);
INSERT INTO reportedsr.parroquias VALUES (964, 'Padre Noguera', 274, 18);
INSERT INTO reportedsr.parroquias VALUES (965, 'Pueblo Llano', 275, 18);
INSERT INTO reportedsr.parroquias VALUES (966, 'Rangel', 276, 18);
INSERT INTO reportedsr.parroquias VALUES (967, 'Cacute', 276, 18);
INSERT INTO reportedsr.parroquias VALUES (968, 'La Toma', 276, 18);
INSERT INTO reportedsr.parroquias VALUES (969, 'Mucuruba', 276, 18);
INSERT INTO reportedsr.parroquias VALUES (970, 'San Rafael', 276, 18);
INSERT INTO reportedsr.parroquias VALUES (971, 'Rivas Davila', 277, 18);
INSERT INTO reportedsr.parroquias VALUES (972, 'Geronimo Maldonado', 277, 18);
INSERT INTO reportedsr.parroquias VALUES (973, 'Santos Marquina', 278, 18);
INSERT INTO reportedsr.parroquias VALUES (974, 'Sucre', 279, 18);
INSERT INTO reportedsr.parroquias VALUES (975, 'Chiguara', 279, 18);
INSERT INTO reportedsr.parroquias VALUES (976, 'Estanquez', 279, 18);
INSERT INTO reportedsr.parroquias VALUES (977, 'La Trampa', 279, 18);
INSERT INTO reportedsr.parroquias VALUES (978, 'Pueblo Nuevo del Sur', 279, 18);
INSERT INTO reportedsr.parroquias VALUES (979, 'San Juan', 279, 18);
INSERT INTO reportedsr.parroquias VALUES (980, 'El Amparo', 280, 18);
INSERT INTO reportedsr.parroquias VALUES (981, 'El Llano', 280, 18);
INSERT INTO reportedsr.parroquias VALUES (982, 'San Francisco', 280, 18);
INSERT INTO reportedsr.parroquias VALUES (983, 'Tovar', 280, 18);
INSERT INTO reportedsr.parroquias VALUES (984, 'Independencia', 281, 18);
INSERT INTO reportedsr.parroquias VALUES (985, 'Maria de la Concepcion Palacios Blanco', 281, 18);
INSERT INTO reportedsr.parroquias VALUES (986, 'Santa Apolonia', 281, 18);
INSERT INTO reportedsr.parroquias VALUES (987, 'Zea', 282, 18);
INSERT INTO reportedsr.parroquias VALUES (988, 'Caño el Tigre', 282, 18);
INSERT INTO reportedsr.parroquias VALUES (989, 'Alto Orinoco', 283, 19);
INSERT INTO reportedsr.parroquias VALUES (990, 'Huachamacare', 283, 19);
INSERT INTO reportedsr.parroquias VALUES (991, 'Marawaka', 283, 19);
INSERT INTO reportedsr.parroquias VALUES (992, 'Mavaca', 283, 19);
INSERT INTO reportedsr.parroquias VALUES (993, 'Sierra Parima', 283, 19);
INSERT INTO reportedsr.parroquias VALUES (994, 'Atabapo', 284, 19);
INSERT INTO reportedsr.parroquias VALUES (995, 'Ucata', 284, 19);
INSERT INTO reportedsr.parroquias VALUES (996, 'Yapacana', 284, 19);
INSERT INTO reportedsr.parroquias VALUES (997, 'Caname', 284, 19);
INSERT INTO reportedsr.parroquias VALUES (998, 'Atures', 285, 19);
INSERT INTO reportedsr.parroquias VALUES (999, 'Fernando Giron Tovar', 285, 19);
INSERT INTO reportedsr.parroquias VALUES (1000, 'Luis Alberto Gomez', 285, 19);
INSERT INTO reportedsr.parroquias VALUES (1001, 'Parhueña', 285, 19);
INSERT INTO reportedsr.parroquias VALUES (1002, 'Platanillal', 285, 19);
INSERT INTO reportedsr.parroquias VALUES (1003, 'Autana', 286, 19);
INSERT INTO reportedsr.parroquias VALUES (1004, 'Samariapo', 286, 19);
INSERT INTO reportedsr.parroquias VALUES (1005, 'Sipapo', 286, 19);
INSERT INTO reportedsr.parroquias VALUES (1006, 'Munduapo', 286, 19);
INSERT INTO reportedsr.parroquias VALUES (1007, 'Guayapo', 286, 19);
INSERT INTO reportedsr.parroquias VALUES (1008, 'Maroa', 287, 19);
INSERT INTO reportedsr.parroquias VALUES (1009, 'Victorino', 287, 19);
INSERT INTO reportedsr.parroquias VALUES (1010, 'Comunidad', 287, 19);
INSERT INTO reportedsr.parroquias VALUES (1011, 'Manapiare', 288, 19);
INSERT INTO reportedsr.parroquias VALUES (1012, 'Alto Ventuari', 288, 19);
INSERT INTO reportedsr.parroquias VALUES (1013, 'Medio Ventuari', 288, 19);
INSERT INTO reportedsr.parroquias VALUES (1014, 'Bajo Ventuari', 288, 19);
INSERT INTO reportedsr.parroquias VALUES (1015, 'Rio Negro', 289, 19);
INSERT INTO reportedsr.parroquias VALUES (1016, 'Solano', 289, 19);
INSERT INTO reportedsr.parroquias VALUES (1017, 'Casiquiare', 289, 19);
INSERT INTO reportedsr.parroquias VALUES (1018, 'Cocuy', 289, 19);
INSERT INTO reportedsr.parroquias VALUES (1019, 'Caucagua', 290, 20);
INSERT INTO reportedsr.parroquias VALUES (1020, 'Araguita', 290, 20);
INSERT INTO reportedsr.parroquias VALUES (1021, 'Arevalo Gonzalez', 290, 20);
INSERT INTO reportedsr.parroquias VALUES (1022, 'Capaya', 290, 20);
INSERT INTO reportedsr.parroquias VALUES (1023, 'El Café', 290, 20);
INSERT INTO reportedsr.parroquias VALUES (1024, 'Marizapa', 290, 20);
INSERT INTO reportedsr.parroquias VALUES (1025, 'Panaquire', 290, 20);
INSERT INTO reportedsr.parroquias VALUES (1026, 'Ribas', 290, 20);
INSERT INTO reportedsr.parroquias VALUES (1027, 'San Jose de Barlovento', 291, 20);
INSERT INTO reportedsr.parroquias VALUES (1028, 'Cumbo', 291, 20);
INSERT INTO reportedsr.parroquias VALUES (1029, 'Baruta', 292, 20);
INSERT INTO reportedsr.parroquias VALUES (1030, 'El Cafetal', 292, 20);
INSERT INTO reportedsr.parroquias VALUES (1031, 'Las Minas de Baruta', 292, 20);
INSERT INTO reportedsr.parroquias VALUES (1032, 'Higuerote', 293, 20);
INSERT INTO reportedsr.parroquias VALUES (1033, 'Curiepe', 293, 20);
INSERT INTO reportedsr.parroquias VALUES (1034, 'Tacarigua', 293, 20);
INSERT INTO reportedsr.parroquias VALUES (1035, 'Mamporal', 294, 20);
INSERT INTO reportedsr.parroquias VALUES (1036, 'Carrizal', 295, 20);
INSERT INTO reportedsr.parroquias VALUES (1037, 'Chacao', 296, 20);
INSERT INTO reportedsr.parroquias VALUES (1038, 'Charallave', 297, 20);
INSERT INTO reportedsr.parroquias VALUES (1039, 'Las Brisas', 297, 20);
INSERT INTO reportedsr.parroquias VALUES (1040, 'El Hatillo', 298, 20);
INSERT INTO reportedsr.parroquias VALUES (1041, 'Los Teques', 299, 20);
INSERT INTO reportedsr.parroquias VALUES (1042, 'Altagracia de la Montaña', 299, 20);
INSERT INTO reportedsr.parroquias VALUES (1043, 'Cecilio Acosta', 299, 20);
INSERT INTO reportedsr.parroquias VALUES (1044, 'El Jarillo', 299, 20);
INSERT INTO reportedsr.parroquias VALUES (1045, 'Paracotos', 299, 20);
INSERT INTO reportedsr.parroquias VALUES (1046, 'San Pedro', 299, 20);
INSERT INTO reportedsr.parroquias VALUES (1047, 'Tacata', 299, 20);
INSERT INTO reportedsr.parroquias VALUES (1048, 'Santa Teresa del Tuy', 300, 20);
INSERT INTO reportedsr.parroquias VALUES (1049, 'El Cartanal', 300, 20);
INSERT INTO reportedsr.parroquias VALUES (1050, 'Ocumare del Tuy', 301, 20);
INSERT INTO reportedsr.parroquias VALUES (1051, 'La Democracia', 301, 20);
INSERT INTO reportedsr.parroquias VALUES (1052, 'Santa Barbara', 301, 20);
INSERT INTO reportedsr.parroquias VALUES (1053, 'San Antonio de los Altos', 302, 20);
INSERT INTO reportedsr.parroquias VALUES (1054, 'Rio Chico', 303, 20);
INSERT INTO reportedsr.parroquias VALUES (1055, 'El Guapo', 303, 20);
INSERT INTO reportedsr.parroquias VALUES (1056, 'Tacarigua de Laguna', 303, 20);
INSERT INTO reportedsr.parroquias VALUES (1057, 'Paparo', 303, 20);
INSERT INTO reportedsr.parroquias VALUES (1058, 'San Fernando del Guapo', 303, 20);
INSERT INTO reportedsr.parroquias VALUES (1059, 'Santa Lucia', 304, 20);
INSERT INTO reportedsr.parroquias VALUES (1060, 'Cupira', 305, 20);
INSERT INTO reportedsr.parroquias VALUES (1061, 'Machurucuto', 305, 20);
INSERT INTO reportedsr.parroquias VALUES (1062, 'Guarenas', 306, 20);
INSERT INTO reportedsr.parroquias VALUES (1063, 'San Francisco de Yare', 307, 20);
INSERT INTO reportedsr.parroquias VALUES (1064, 'San Antonio de Yare', 307, 20);
INSERT INTO reportedsr.parroquias VALUES (1065, 'Petare', 308, 20);
INSERT INTO reportedsr.parroquias VALUES (1066, 'Caucaguita', 308, 20);
INSERT INTO reportedsr.parroquias VALUES (1067, 'Fila de Mariche', 308, 20);
INSERT INTO reportedsr.parroquias VALUES (1068, 'La Dolorita', 308, 20);
INSERT INTO reportedsr.parroquias VALUES (1069, 'Leoncio Martinez', 308, 20);
INSERT INTO reportedsr.parroquias VALUES (1070, 'Cua', 309, 20);
INSERT INTO reportedsr.parroquias VALUES (1071, 'Nueva Cua', 309, 20);
INSERT INTO reportedsr.parroquias VALUES (1072, 'Guatire', 310, 20);
INSERT INTO reportedsr.parroquias VALUES (1073, 'Bolivar', 310, 20);
INSERT INTO reportedsr.parroquias VALUES (1074, 'Arismendi', 311, 21);
INSERT INTO reportedsr.parroquias VALUES (1075, 'Antolín del Campo', 17, 21);
INSERT INTO reportedsr.parroquias VALUES (1076, 'Diaz', 312, 21);
INSERT INTO reportedsr.parroquias VALUES (1077, 'Zabala', 312, 21);
INSERT INTO reportedsr.parroquias VALUES (1078, 'Garcia', 313, 21);
INSERT INTO reportedsr.parroquias VALUES (1079, 'Francisco Fajardo', 313, 21);
INSERT INTO reportedsr.parroquias VALUES (1080, 'Gomez', 314, 21);
INSERT INTO reportedsr.parroquias VALUES (1081, 'Bolivar', 314, 21);
INSERT INTO reportedsr.parroquias VALUES (1082, 'Guevara', 314, 21);
INSERT INTO reportedsr.parroquias VALUES (1083, 'Matasiete', 314, 21);
INSERT INTO reportedsr.parroquias VALUES (1084, 'Sucre', 314, 21);
INSERT INTO reportedsr.parroquias VALUES (1085, 'Maneiro', 315, 21);
INSERT INTO reportedsr.parroquias VALUES (1086, 'Aguirre', 315, 21);
INSERT INTO reportedsr.parroquias VALUES (1087, 'Marcano', 316, 21);
INSERT INTO reportedsr.parroquias VALUES (1088, 'Adrian', 316, 21);
INSERT INTO reportedsr.parroquias VALUES (1089, 'Mariño', 317, 21);
INSERT INTO reportedsr.parroquias VALUES (1090, 'Peninsula De Macanao', 318, 21);
INSERT INTO reportedsr.parroquias VALUES (1091, 'San Francisco', 318, 21);
INSERT INTO reportedsr.parroquias VALUES (1092, 'Tubores', 319, 21);
INSERT INTO reportedsr.parroquias VALUES (1093, 'Los Barales', 319, 21);
INSERT INTO reportedsr.parroquias VALUES (1094, 'Villalba', 320, 21);
INSERT INTO reportedsr.parroquias VALUES (1095, 'Vicente Fuente', 320, 21);
INSERT INTO reportedsr.parroquias VALUES (1096, 'Cojedes', 324, 22);
INSERT INTO reportedsr.parroquias VALUES (1097, 'Juan de Mata Suarez', 324, 22);
INSERT INTO reportedsr.parroquias VALUES (1098, 'Tinaquillo', 325, 22);
INSERT INTO reportedsr.parroquias VALUES (1099, 'El Baul', 326, 22);
INSERT INTO reportedsr.parroquias VALUES (1100, 'Sucre', 326, 22);
INSERT INTO reportedsr.parroquias VALUES (1101, 'Macapo', 327, 22);
INSERT INTO reportedsr.parroquias VALUES (1102, 'La Aguadita', 327, 22);
INSERT INTO reportedsr.parroquias VALUES (1103, 'El Pao', 328, 22);
INSERT INTO reportedsr.parroquias VALUES (1104, 'Libertad de Cojedes', 329, 22);
INSERT INTO reportedsr.parroquias VALUES (1105, 'El Amparo', 329, 22);
INSERT INTO reportedsr.parroquias VALUES (1106, 'Romulo Gallegos', 330, 22);
INSERT INTO reportedsr.parroquias VALUES (1107, 'San Carlos de Austria', 331, 22);
INSERT INTO reportedsr.parroquias VALUES (1108, 'Juan Angel Bravo', 331, 22);
INSERT INTO reportedsr.parroquias VALUES (1109, 'Manuel Manrique', 331, 22);
INSERT INTO reportedsr.parroquias VALUES (1110, 'General en Jefe Jose Laurencio Silva', 332, 22);
INSERT INTO reportedsr.parroquias VALUES (1111, 'Curiapo', 333, 23);
INSERT INTO reportedsr.parroquias VALUES (1112, 'Almirante Luis Brion', 333, 23);
INSERT INTO reportedsr.parroquias VALUES (1113, 'Francisco Aniceto Lugo', 333, 23);
INSERT INTO reportedsr.parroquias VALUES (1114, 'Manuel Renaud', 333, 23);
INSERT INTO reportedsr.parroquias VALUES (1115, 'Padre Barral', 333, 23);
INSERT INTO reportedsr.parroquias VALUES (1116, 'Santos De Abelgas', 333, 23);
INSERT INTO reportedsr.parroquias VALUES (1117, 'Imataca', 334, 23);
INSERT INTO reportedsr.parroquias VALUES (1118, 'Cinco De Julio', 334, 23);
INSERT INTO reportedsr.parroquias VALUES (1119, 'Juan Bautisa Arismendi', 334, 23);
INSERT INTO reportedsr.parroquias VALUES (1120, 'Manuel Piar', 334, 23);
INSERT INTO reportedsr.parroquias VALUES (1121, 'Romulo Gallegos', 334, 23);
INSERT INTO reportedsr.parroquias VALUES (1122, 'Pedernales', 335, 23);
INSERT INTO reportedsr.parroquias VALUES (1123, 'Luis Beltran Prieto Figueroa', 335, 23);
INSERT INTO reportedsr.parroquias VALUES (1124, 'San Jose', 336, 23);
INSERT INTO reportedsr.parroquias VALUES (1125, 'Jose Vidal Marcano', 336, 23);
INSERT INTO reportedsr.parroquias VALUES (1126, 'Juan Millan', 336, 23);
INSERT INTO reportedsr.parroquias VALUES (1127, 'Leonardo Ruiz Pineda', 336, 23);
INSERT INTO reportedsr.parroquias VALUES (1128, 'Mariscal Antonio Jose De Sucre', 336, 23);
INSERT INTO reportedsr.parroquias VALUES (1129, 'Monseñor Argimiro Garcia', 336, 23);
INSERT INTO reportedsr.parroquias VALUES (1130, 'San Rafael', 336, 23);
INSERT INTO reportedsr.parroquias VALUES (1131, 'Virgen Del Valle', 336, 23);
INSERT INTO reportedsr.parroquias VALUES (1132, 'Caraballeda', 337, 24);
INSERT INTO reportedsr.parroquias VALUES (1133, 'Carayaca', 337, 24);
INSERT INTO reportedsr.parroquias VALUES (1134, 'Caruao', 337, 24);
INSERT INTO reportedsr.parroquias VALUES (1135, 'Catia La Mar', 337, 24);
INSERT INTO reportedsr.parroquias VALUES (1136, 'El Junko', 337, 24);
INSERT INTO reportedsr.parroquias VALUES (1137, 'La Guaira', 337, 24);
INSERT INTO reportedsr.parroquias VALUES (1138, 'Macuto', 337, 24);
INSERT INTO reportedsr.parroquias VALUES (1139, 'Maiquetia', 337, 24);
INSERT INTO reportedsr.parroquias VALUES (1140, 'Naiguata', 337, 24);
INSERT INTO reportedsr.parroquias VALUES (1141, 'Raul Leoni', 337, 24);
INSERT INTO reportedsr.parroquias VALUES (1142, 'Carlos Soublette', 337, 24);
INSERT INTO reportedsr.parroquias VALUES (1143, 'Zamora', 29, 1);
INSERT INTO reportedsr.parroquias VALUES (1144, 'Urdaneta', 28, 1);
INSERT INTO reportedsr.parroquias VALUES (1145, 'El Consejo', 6, 1);
INSERT INTO reportedsr.parroquias VALUES (1146, 'Tovar', 19, 1);
INSERT INTO reportedsr.parroquias VALUES (1147, 'Independencia', 42, 2);
INSERT INTO reportedsr.parroquias VALUES (1149, 'Miguel Peña', 42, 2);
INSERT INTO reportedsr.parroquias VALUES (1151, 'Rafael Urdaneta', 42, 2);
INSERT INTO reportedsr.parroquias VALUES (1152, 'San Blas', 42, 2);
INSERT INTO reportedsr.parroquias VALUES (1154, 'San Jose', 42, 2);
INSERT INTO reportedsr.parroquias VALUES (1155, 'Santa Rosa', 42, 2);
INSERT INTO reportedsr.parroquias VALUES (1156, 'Tocuyito', 42, 2);
INSERT INTO reportedsr.parroquias VALUES (1157, 'Negro Primero', 42, 2);
INSERT INTO reportedsr.parroquias VALUES (1158, 'Las Bonitas', 44, 3);
INSERT INTO reportedsr.parroquias VALUES (1159, 'Heres', 47, 3);
INSERT INTO reportedsr.parroquias VALUES (1160, 'El Palmar', 48, 3);
INSERT INTO reportedsr.parroquias VALUES (1161, 'Tumeremo', 51, 3);
INSERT INTO reportedsr.parroquias VALUES (1165, 'Casanay', 8, 11);
INSERT INTO reportedsr.parroquias VALUES (1166, 'Rio Casanay', 9, 11);
INSERT INTO reportedsr.parroquias VALUES (1168, 'San Carlos del Zulia', 208, 15);
INSERT INTO reportedsr.parroquias VALUES (1169, 'Carlos Quevedo', 208, 15);
INSERT INTO reportedsr.parroquias VALUES (1171, 'Guasipati', 50, 3);
INSERT INTO reportedsr.parroquias VALUES (1172, 'Pampatar', 315, 21);
INSERT INTO reportedsr.parroquias VALUES (1175, 'Romulo Gallegos', 258, 17);
INSERT INTO reportedsr.parroquias VALUES (1176, 'Pedro Camejo', 257, 17);
INSERT INTO reportedsr.parroquias VALUES (1179, 'Paez', 256, 17);
INSERT INTO reportedsr.parroquias VALUES (1180, 'Miranda', 164, 12);
INSERT INTO reportedsr.parroquias VALUES (1181, 'Juan José Mora', 33, 2);
INSERT INTO reportedsr.parroquias VALUES (1182, 'Fernandez Feo', 231, 16);
INSERT INTO reportedsr.parroquias VALUES (1183, 'Betijoque', 127, 8);
INSERT INTO reportedsr.parroquias VALUES (1184, 'La Paz', 127, 8);
INSERT INTO reportedsr.parroquias VALUES (1185, 'Altagracia de orituco', 338, 13);
INSERT INTO reportedsr.parroquias VALUES (1186, 'Cagua', 26, 1);
INSERT INTO reportedsr.parroquias VALUES (1188, 'San Juan de los Morros', 339, 13);
INSERT INTO reportedsr.parroquias VALUES (1189, 'Valle de la Pascua', 340, 13);
INSERT INTO reportedsr.parroquias VALUES (1190, 'Zaraza', 341, 13);
INSERT INTO reportedsr.parroquias VALUES (1191, 'Cabruta', 342, 13);
INSERT INTO reportedsr.parroquias VALUES (1192, 'Caracacciolo Parra y Olmedo', 343, 25);
INSERT INTO reportedsr.parroquias VALUES (1193, 'El Llano', 344, 25);
INSERT INTO reportedsr.parroquias VALUES (1194, 'Montalban', 345, 25);
INSERT INTO reportedsr.parroquias VALUES (1195, 'Domingo Peña', 346, 25);
INSERT INTO reportedsr.parroquias VALUES (1196, 'J.J Osuna Rodriguez', 346, 25);
INSERT INTO reportedsr.parroquias VALUES (1197, 'Mariano Picón Salas', 346, 25);
INSERT INTO reportedsr.parroquias VALUES (1198, 'El vigia', 347, 25);
INSERT INTO reportedsr.parroquias VALUES (1199, 'Belen', 346, 25);
INSERT INTO reportedsr.parroquias VALUES (1200, 'Matriz', 345, 25);
INSERT INTO reportedsr.parroquias VALUES (1201, 'Domingo Peña', 348, 25);
INSERT INTO reportedsr.parroquias VALUES (1202, 'Domingo Peña', 276, 18);
INSERT INTO reportedsr.parroquias VALUES (1203, 'Mariano Picon Salas', 271, 18);
INSERT INTO reportedsr.parroquias VALUES (1204, 'Ocumare del Tuy', 1, 20);
INSERT INTO reportedsr.parroquias VALUES (1205, 'Caucagua', 352, 20);
INSERT INTO reportedsr.parroquias VALUES (1206, 'Tinaco', 332, 22);


--
-- TOC entry 3057 (class 0 OID 20095)
-- Dependencies: 208
-- Data for Name: radiodiagnostico; Type: TABLE DATA; Schema: reportedsr; Owner: postgres
--



--
-- TOC entry 3061 (class 0 OID 20131)
-- Dependencies: 212
-- Data for Name: radioterapia; Type: TABLE DATA; Schema: reportedsr; Owner: postgres
--



--
-- TOC entry 3053 (class 0 OID 20068)
-- Dependencies: 204
-- Data for Name: reporte; Type: TABLE DATA; Schema: reportedsr; Owner: postgres
--

INSERT INTO reportedsr.reporte VALUES (1, 'hcm', 1, 0, 1, 1, 1, 1, 0, 1, -67.589296102524, 10.274684653354);
INSERT INTO reportedsr.reporte VALUES (2, 'Maternidad', 2, 0, 1, 1, 1, 1, 0, 0, -67.587821558118, 10.268212616364);
INSERT INTO reportedsr.reporte VALUES (3, 'Guadalupe', 2, 0, 1, 0, 1, 0, 1, 0, -67.598182931542, 10.255404072096);
INSERT INTO reportedsr.reporte VALUES (4, 'Ambulatorio Palo Negro', 1, 0, 1, 0, 0, 0, 0, 1, -67.557860612869, 10.167111221002);


--
-- TOC entry 3077 (class 0 OID 20239)
-- Dependencies: 228
-- Data for Name: tipoequipo; Type: TABLE DATA; Schema: reportedsr; Owner: postgres
--

INSERT INTO reportedsr.tipoequipo VALUES (1, 'Acelerador', NULL);
INSERT INTO reportedsr.tipoequipo VALUES (2, 'Braquiterapia', NULL);
INSERT INTO reportedsr.tipoequipo VALUES (3, 'Iridio-192', 2);
INSERT INTO reportedsr.tipoequipo VALUES (4, 'Cobalto-60', 2);
INSERT INTO reportedsr.tipoequipo VALUES (5, 'Yodo-125', 2);
INSERT INTO reportedsr.tipoequipo VALUES (6, 'Paladio-103', 2);
INSERT INTO reportedsr.tipoequipo VALUES (7, 'Rutenio-106', 2);
INSERT INTO reportedsr.tipoequipo VALUES (8, 'Medicina Nuclear', NULL);
INSERT INTO reportedsr.tipoequipo VALUES (9, 'Radio farmacos', NULL);
INSERT INTO reportedsr.tipoequipo VALUES (10, 'Gamma Camara', 8);
INSERT INTO reportedsr.tipoequipo VALUES (11, 'Gamma Camara (Doble Cabezal)', 8);
INSERT INTO reportedsr.tipoequipo VALUES (14, 'Spect', 8);
INSERT INTO reportedsr.tipoequipo VALUES (15, 'PET/CT', 8);
INSERT INTO reportedsr.tipoequipo VALUES (16, 'Tecnecio-99', 9);
INSERT INTO reportedsr.tipoequipo VALUES (18, 'Lutecio-177', 9);
INSERT INTO reportedsr.tipoequipo VALUES (19, 'Fluor-118', 9);
INSERT INTO reportedsr.tipoequipo VALUES (20, 'Galio-68', 9);
INSERT INTO reportedsr.tipoequipo VALUES (17, 'Yodo-131 (liquido)', 9);
INSERT INTO reportedsr.tipoequipo VALUES (21, 'Yodo-131 (Capsulas)', 9);


--
-- TOC entry 3069 (class 0 OID 20200)
-- Dependencies: 220
-- Data for Name: usuarios; Type: TABLE DATA; Schema: reportedsr; Owner: postgres
--

INSERT INTO reportedsr.usuarios VALUES (1, 'Administrador', 'Admin   ', '7fd84de4130072556f96b68b036f06b2', 1, 25, 'robetorr311@gmail.com', '584125066130');
INSERT INTO reportedsr.usuarios VALUES (2, 'Robert Torres', 'robetorr', 'db73de3c3da209e113d3023183da14e1', 1, 25, 'robetorr311@gmail.com', '584125066130');


--
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 221
-- Name: detallemn_id_seq; Type: SEQUENCE SET; Schema: reportedsr; Owner: postgres
--

SELECT pg_catalog.setval('reportedsr.detallemn_id_seq', 1, false);


--
-- TOC entry 3097 (class 0 OID 0)
-- Dependencies: 223
-- Name: detallert_id_seq; Type: SEQUENCE SET; Schema: reportedsr; Owner: postgres
--

SELECT pg_catalog.setval('reportedsr.detallert_id_seq', 1, false);


--
-- TOC entry 3098 (class 0 OID 0)
-- Dependencies: 225
-- Name: equipos_id_seq; Type: SEQUENCE SET; Schema: reportedsr; Owner: postgres
--

SELECT pg_catalog.setval('reportedsr.equipos_id_seq', 1, false);


--
-- TOC entry 3099 (class 0 OID 0)
-- Dependencies: 213
-- Name: estados_id_seq; Type: SEQUENCE SET; Schema: reportedsr; Owner: postgres
--

SELECT pg_catalog.setval('reportedsr.estados_id_seq', 1, false);


--
-- TOC entry 3100 (class 0 OID 0)
-- Dependencies: 205
-- Name: institucion_id_seq; Type: SEQUENCE SET; Schema: reportedsr; Owner: postgres
--

SELECT pg_catalog.setval('reportedsr.institucion_id_seq', 1, true);


--
-- TOC entry 3101 (class 0 OID 0)
-- Dependencies: 209
-- Name: medicinanuclear_id_seq; Type: SEQUENCE SET; Schema: reportedsr; Owner: postgres
--

SELECT pg_catalog.setval('reportedsr.medicinanuclear_id_seq', 1, false);


--
-- TOC entry 3102 (class 0 OID 0)
-- Dependencies: 215
-- Name: municipios_id_seq; Type: SEQUENCE SET; Schema: reportedsr; Owner: postgres
--

SELECT pg_catalog.setval('reportedsr.municipios_id_seq', 1, false);


--
-- TOC entry 3103 (class 0 OID 0)
-- Dependencies: 217
-- Name: parroquias_id_seq; Type: SEQUENCE SET; Schema: reportedsr; Owner: postgres
--

SELECT pg_catalog.setval('reportedsr.parroquias_id_seq', 1, false);


--
-- TOC entry 3104 (class 0 OID 0)
-- Dependencies: 207
-- Name: radiodiagnostico_id_seq; Type: SEQUENCE SET; Schema: reportedsr; Owner: postgres
--

SELECT pg_catalog.setval('reportedsr.radiodiagnostico_id_seq', 1, false);


--
-- TOC entry 3105 (class 0 OID 0)
-- Dependencies: 211
-- Name: radioterapia_id_seq; Type: SEQUENCE SET; Schema: reportedsr; Owner: postgres
--

SELECT pg_catalog.setval('reportedsr.radioterapia_id_seq', 1, false);


--
-- TOC entry 3106 (class 0 OID 0)
-- Dependencies: 203
-- Name: reporte_id_seq; Type: SEQUENCE SET; Schema: reportedsr; Owner: postgres
--

SELECT pg_catalog.setval('reportedsr.reporte_id_seq', 4, true);


--
-- TOC entry 3107 (class 0 OID 0)
-- Dependencies: 227
-- Name: tipoequipo_id_seq; Type: SEQUENCE SET; Schema: reportedsr; Owner: postgres
--

SELECT pg_catalog.setval('reportedsr.tipoequipo_id_seq', 21, true);


--
-- TOC entry 3108 (class 0 OID 0)
-- Dependencies: 219
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: reportedsr; Owner: postgres
--

SELECT pg_catalog.setval('reportedsr.usuarios_id_seq', 1, false);


--
-- TOC entry 2912 (class 2606 OID 20217)
-- Name: detallemn detallemn_pkey; Type: CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.detallemn
    ADD CONSTRAINT detallemn_pkey PRIMARY KEY (id, idequipo, idinstitucion);


--
-- TOC entry 2914 (class 2606 OID 20225)
-- Name: detallert detallert_pkey; Type: CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.detallert
    ADD CONSTRAINT detallert_pkey PRIMARY KEY (id, idequipo, idinstitucion);


--
-- TOC entry 2916 (class 2606 OID 20236)
-- Name: equipos equipos_pkey; Type: CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.equipos
    ADD CONSTRAINT equipos_pkey PRIMARY KEY (id, idinstitucion, idtipo);


--
-- TOC entry 2904 (class 2606 OID 20164)
-- Name: estados estados_pkey; Type: CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.estados
    ADD CONSTRAINT estados_pkey PRIMARY KEY (id);


--
-- TOC entry 2898 (class 2606 OID 20118)
-- Name: medicinanuclear medicinanuclear_pkey; Type: CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.medicinanuclear
    ADD CONSTRAINT medicinanuclear_pkey PRIMARY KEY (id);


--
-- TOC entry 2906 (class 2606 OID 20175)
-- Name: municipios municipio_pkey; Type: CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.municipios
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (id);


--
-- TOC entry 2908 (class 2606 OID 20186)
-- Name: parroquias parroquias_pkey; Type: CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.parroquias
    ADD CONSTRAINT parroquias_pkey PRIMARY KEY (id);


--
-- TOC entry 2894 (class 2606 OID 20087)
-- Name: institucion pkidinstitucion; Type: CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.institucion
    ADD CONSTRAINT pkidinstitucion PRIMARY KEY (id);


--
-- TOC entry 2896 (class 2606 OID 20100)
-- Name: radiodiagnostico pkradiodiagnostico; Type: CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.radiodiagnostico
    ADD CONSTRAINT pkradiodiagnostico PRIMARY KEY (id);


--
-- TOC entry 2902 (class 2606 OID 20141)
-- Name: radioterapia pkradiot; Type: CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.radioterapia
    ADD CONSTRAINT pkradiot UNIQUE (id);


--
-- TOC entry 2892 (class 2606 OID 20076)
-- Name: reporte pkreporte; Type: CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.reporte
    ADD CONSTRAINT pkreporte PRIMARY KEY (id);


--
-- TOC entry 2910 (class 2606 OID 20208)
-- Name: usuarios pkusuarios; Type: CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.usuarios
    ADD CONSTRAINT pkusuarios PRIMARY KEY (id);


--
-- TOC entry 2918 (class 2606 OID 20247)
-- Name: tipoequipo tipoequipo_pkey; Type: CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.tipoequipo
    ADD CONSTRAINT tipoequipo_pkey PRIMARY KEY (id);


--
-- TOC entry 2899 (class 1259 OID 20147)
-- Name: fki_fkinst; Type: INDEX; Schema: reportedsr; Owner: postgres
--

CREATE INDEX fki_fkinst ON reportedsr.radioterapia USING btree (idinstitucion);


--
-- TOC entry 2900 (class 1259 OID 20153)
-- Name: fki_fkrep; Type: INDEX; Schema: reportedsr; Owner: postgres
--

CREATE INDEX fki_fkrep ON reportedsr.radioterapia USING btree (idreporte);


--
-- TOC entry 2919 (class 2606 OID 20088)
-- Name: institucion fkidrep; Type: FK CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.institucion
    ADD CONSTRAINT fkidrep FOREIGN KEY (idreporte) REFERENCES reportedsr.reporte(id);


--
-- TOC entry 2924 (class 2606 OID 20142)
-- Name: radioterapia fkinst; Type: FK CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.radioterapia
    ADD CONSTRAINT fkinst FOREIGN KEY (idinstitucion) REFERENCES reportedsr.institucion(id) NOT VALID;


--
-- TOC entry 2922 (class 2606 OID 20119)
-- Name: medicinanuclear fkinstitucion; Type: FK CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.medicinanuclear
    ADD CONSTRAINT fkinstitucion FOREIGN KEY (idinstitucion) REFERENCES reportedsr.institucion(id);


--
-- TOC entry 2920 (class 2606 OID 20101)
-- Name: radiodiagnostico fkintitucion; Type: FK CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.radiodiagnostico
    ADD CONSTRAINT fkintitucion FOREIGN KEY (idinstitucion) REFERENCES reportedsr.institucion(id);


--
-- TOC entry 2925 (class 2606 OID 20148)
-- Name: radioterapia fkrep; Type: FK CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.radioterapia
    ADD CONSTRAINT fkrep FOREIGN KEY (idreporte) REFERENCES reportedsr.reporte(id) NOT VALID;


--
-- TOC entry 2923 (class 2606 OID 20124)
-- Name: medicinanuclear fkreporte; Type: FK CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.medicinanuclear
    ADD CONSTRAINT fkreporte FOREIGN KEY (idinstitucion) REFERENCES reportedsr.reporte(id);


--
-- TOC entry 2921 (class 2606 OID 20106)
-- Name: radiodiagnostico fkreporte; Type: FK CONSTRAINT; Schema: reportedsr; Owner: postgres
--

ALTER TABLE ONLY reportedsr.radiodiagnostico
    ADD CONSTRAINT fkreporte FOREIGN KEY (idreporte) REFERENCES reportedsr.reporte(id);


-- Completed on 2026-09-11 09:48:34 -04

--
-- PostgreSQL database dump complete
--