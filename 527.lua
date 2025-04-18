local mutantesOriginales = {

  "AA_01",
  "AA_03",
  "AB_01",
  "AB_03",
  "AC_01",
  "AC_03",
  "AD_01",
  "AD_02",
  "AE_01",
  "AE_03",
  "AF_01",
  "AF_04",
  "BA_01",
  "BA_02",
  "BA_03",
  "BB_01",
  "BB_03",
  "BC_01",
  "BC_02",
  "BD_01",
  "BE_01",
  "BE_04",
  "BF_01",
  "BF_02",
  "CA_01",
  "CA_02",
  "CB_01",
  "CB_02",
  "CC_01",
  "CC_02",
  "CD_01",
  "CD_03",
  "CE_01",
  "CE_03",
  "CF_01",
  "CF_02",
  "DA_01",
  "DA_03",
  "DB_01",
  "DB_03",
  "DC_01",
  "DD_01",
  "DE_01",
  "DE_02",
  "DF_01",
  "DF_03",
  "EA_01",
  "EA_02",
  "EB_01",
  "EB_02",
  "EB_03",
  "EC_01",
  "EC_03",
  "ED_01",
  "ED_03",
  "EE_01",
  "EE_02",
  "EF_01",
  "EF_02",
  "FA_01",
  "FB_01",
  "FB_03",
  "FC_01",
  "FD_01",
  "FD_02",
  "FE_01",
  "FF_01",
  "FF_03"
},
}
-- 1) Lista de nombres por página (solo muestro 2 páginas de ejemplo)
local pages = {
	
 [1] = {
    "Robot",
    "Robot Debil",
    "Androide",
    "Goliat",
    "Necrobot",
    "Hypnos",
    "Xenarach",
    "Humanoide Perfido",
    "Capitan Mecano",
    "Dezinger",
    "Escarabot",
    "Monocerus",
    "Coloso",
    "Libraro",
    "Deus Machina",
    "Virgon",
    "Zombi",
    "Zombi Debil",
    "Jack O'Lantern",
    "Zomborg",
    "Muñeca Diabolica",
    "Lord Blood",
    "Espectro de la Cripta",
    "Despota Negro",
    "Capitan Osamenta",
    "Necrodragon",
    "Cancernia",
    "Fantasmonauta",
    "Caprika",
    "Quebrantacuellos",
    "Baron Lundi",
    "Mago Tetrico",
    "Guerrero",
    "Guerrero Debil",
    "Ejecutor",
    "Interceptrix",
    "General Caos",
    "Banshee Guerrera",
    "Bushi",
    "Caballero Nordico",
    "Buck Maurice",
    "Honey Bunny",
    "Sagitauro",
    "Haggis",
    "Marciano Errante",
    "Guardian Galactico",
    "Valkiria",
    "Thor",
    "Bestia",
    "Reptoide",
    "Aracno",
    "Cerbero",
    "Zombat",
    "Cobrakai",
    "Rakshasa",
    "Leohart",
    "Gargantus",
    "Kaiju Kitty",
    "Maestro Splitter",
    "Reina Parasita",
    "Cosmo Kong",
    "Dracus Nobilis",
    "Satiro Hechicero",
    "Extraterrestre",
    "Aniquilador",
    "Sentry",
    "Exopez",
    "Tutti Viscosi",
    "Sirenia",
    "Devorador",
    "Sundance Bug",
    "Behemoth",
    "Xenos",
    "Rocageno",
    "Astrosurfista",
    "Supernovus",
    "Maestro Oida",
    "Nebulon",
    "Mr Marvelous",
    "Aquapunzel",
    "Diablesa",
    "Mago de las Nieves",
    "Tecno Tao",
    "Mekali",
    "La Parca",
    "Principe Escorpion",
    "Anubis",
    "Gandolphus",
    "Capitan Paz",
    "Medusa",
    "Horus",
    "Ivory Hanzo",
    "C'thlig",
    "Azuria",
    "Señor del Abismo",
    "Castigo",
    "Oriax",
    "Ragnar",
    "Triple-B", 
},
  [2] = {
 "Mandragora",
    "Motero Maldito",
    "Armadizo",
    "Mantidroide",
    "Carnero Vengador",
    "Battle Toad",
    "Cezanne",
    "H.U.M.A.N.",
    "Rambit",
    "Star Trooper",
    "Micky Krueger",
    "Tauridus",
    "Autonoraptor",
    "Invadron",
    "Bruja Malvada",
    "Oso Espantoso",
    "Azog",
    "Geminium",
    "Psicojabali",
    "Zena",
    "Absolem",
    "Wampara",
    "Barbaroca",
    "George Washington",
    "Louis XVI",
    "Bazzinger",
    "Space Princess",
    "Astromago",
    "Garuda",
    "Hada Machete",
    "Genshiryoku",
    "El Experimento",
    "Leonidas",
    "Buranka",
    "Mexihcatl",
    "Banker",
    "Emperador Galactico",
    "Nebulus",
    "Project X27",
    "Miroku",
    "Mapach Wik",
    "El Fontanero",
    "Matafantasmas",
    "Exo Cookie",
    "Britany",
    "Frostmass",
    "Santactopus",
    "Mephisto",
    "Monolith",
    "Malvatron",
    "Lara",
    "Commander Ender",
    "Zortrex",
    "Tengu",
    "Sacamantecas",
    "Oculus",
    "Supraman X",
    "Cupido",
    "Abraham Lincoln",
    "Escuadron Rhino",
    "Dama Harpia",
    "Yelda",
    "Flying Jordson",
    "Cernunnos",
    "Capitan Perla Negra",
    "Brick McGole",
    "Kraken",
    "Genimal",
    "Hardcorius",
    "Marine Muerto",
    "Challengeer",
    "Ciberpunk",
    "Neo Urban XIII",
    "Tecnoforzer",
    "Chaman Sombra",
    "Ingeniero",
    "Sun-Duke",
    "Ceres",
    "Shin Hakuho",
    "Fenec Plus Ultra",
    "Madre de los Dragones",
    "Brawler",
    "Loco de la Motosierra",
    "Rey Mono",
    "Acarius",
    "Cazador Espacial",
    "Artista Siniestro",
    "Zeus",
    "Glubber",
    "Nyrlatoth",
    "Cibercroc",
    "Bulldozer",
    "Pejelagarto",
    "Triceratanque",
    "Monje Akuso",
    "Caronte",
    "Tio Sam",
    "Hog the Ripper",
    "Rey Steven",
 },

  -- Página 3: del 33 al 48
  [3] = {
    "Duplicado de Eva",
    "Ciberbabosa",
    "Jhingal",
    "Doctor Blaw",
    "Tomahawk",
    "Hechicera",
    "Dandi oscar",
    "Kung Chow",
    "Comeabuelas",
    "Mau-Jack",
    "Lily",
    "El Rey de Mimphys",
    "Bioerizo",
    "Gladiadog",
    "Casto",
    "Viper",
    "Dollbyte",
    "Garlog",
    "Krunk",
    "Apofis",
    "Cuervo",
    "Drusella",
    "Mandor",
    "Borrasca",
    "Sable",
    "Artemisa",
    "Mama Kangu",
    "Darwin",
    "ERR-ADI-K-Bot",
    "Namaste",
    "Tyrtiduron",
    "Bounda",
    "Mega Claus",
    "Marv",
    "Z-0",
    "Falcon",
    "Paramic",
    "El Original",
    "Señor Dragon",
    "Carlingger",
    "Rey de los Insectos",
    "Aplastador",
    "Quimera",
    "Champicorteza",
    "Reina Rakkti",
    "Hercules",
    "Aran",
    "El Gringo",
    "Spartac",
    "Amarok",
    "Pikabu",
    "Leprechaun",
    "Fenix",
    "Kal Wayne",
    "Avispa Diesel",
    "Robofuerte",
    "Rocky Botboa",
    "Las Moiras",
    "Dr. Frost",
    "Capitan Gluglu",
    "Rey Esqueleto",
    "Turbacieno",
    "Juan Hielo",
    "Capitan Patriota",
    "Astro Gummy",
    "Nezarim",
    "Globomono",
    "Starminator",
    "Espectra",
    "Wynn",
    "Thran",
    "Blender",
    "Rinotauro",
    "Cosmopandas",
    "Kudamono",
    "Alfie",
    "Tiranozomb",
    "H0ud1n1",
    "FootBot",
    "Geomega",
    "Gloton",
    "Seiyatsu",
    "Asaylan",
    "Wrath",
    "Lady Libertad",
    "Gozer",
    "Van Helsing",
    "Kitty Ranger",
    "Gorthaur el Cruel",
    "El Rey sin Nombre",
    "Naraxis",
    "Andromeda",
    "Enano y Cerebro",
    "Arcangel",
    "Diablo",
    "Drall",
    "Noren",
    "Sgt. Pandamonium",
    "Omikami",
  },

  -- Página 4: del 49 al 64
  [4] = {
    "Makino",
    "Chantecler",
    "Dr. Nucleus",
    "Amo de las Llaves",
    "Carcinus Gigas",
    "Sanik",
    "Necroparasito",
    "Proyecto 3V3",
    "Optimus Zord",
    "Faucesnegras",
    "Tormenta de Fuego",
    "Golemagnus",
    "Dug Dario",
    "Centinela R0B-H4N",
    "Big Bo$$",
    "Reina Sylvidra",
    "Quetzalcoatl",
    "Majin Zam",
    "Bruja de la Peste",
    "Excaliduro",
    "Zigmo",
    "Gran Señor de las Tumbas",
    "Pirotropo",
    "Altaris",
    "Capitan Gorn",
    "Yokozuna",
    "Calaca",
    "Lancelot",
    "Centaurus",
    "Mon-Key Crew",
    "Sound Killah",
    "Dracomago",
    "Caudillo Steam",
    "Cazarrecompensas",
    "Surfista del Espacio",
    "Mister T-Ger",
    "Master Paw",
    "Grumpy Claus",
    "Sargento Dusk",
    "Gwenn",
    "El Coleccionista",
    "El Veneno",
    "Frankenhuahua",
    "Mad Mike",
    "Jane Saw",
    "Horax",
    "Maestro Shinzo",
    "Xeleroth",
    "Excavalipsis",
    "El Enterrador",
    "Zenguru",
    "H.U.N.T.3.R",
    "Arelvam",
    "Zar Bomba",
    "Mago Ryzafredd",
    "Hawkeye",
    "Megastral",
    "Liquidador",
    "Yggdrasil",
    "Rox McRain",
    "Hadeath",
    "Divastator",
    "Angry Pork",
    "Frankendwarf",
    "Akai-Bot",
    "Krampus",
    "Waryena",
    "Bahamut",
    "Mimi Cronocurva",
    "Guardia Men'ki",
    "Hipopotanque",
    "Hefesto",
    "T-3rr0r",
    "A027441",
    "King Lulu",
    "Kameo",
    "Kolossus",
    "ED-404",
    "Hellsaw",
    "Urgan",
    "Buffalor",
    "Gamallia",
    "Gakarian",
    "S-K-Venger",
    "Overkill",
    "Capitan Achabe",
    "Aubraea Mutantula",
    "Bregbeam",
    "Piwisher",
    "Nimrod",
    "E.T.-Liot",
    "Spin Fury",
    "Cooktouille",
    "Orion",
    "Heimdall",
    "Chun-Lei",
    "The Reef",
    "Sir Bannog",
    "Pesadilla Viviente",
  },

  -- Página 5: del 65 al 80
  [5] = {
    "An0malie",
    "Owlock",
    "TriAD",
    "La Olvidada",
    "Mago de la Singularidad",
    "Ishi no Ōkami",
    "Disension",
    "Aqueronte",
    "Drei, Space Corgi",
    "Mix0-Logo",
    "Veren Kaeesu",
    "Spada",
    "Roadmaster",
    "Gerard Steelgarden",
    "Chocolem",
    "Drudge Zombie",
    "Animus de Irrealidad",
    "Midas",
    "Caliburn EX",
    "Santagonista",
    "Barbaro",
    "Dama del Crepusculo",
    "Mecaovoide Aracneo",
    "Terror Abisal",
    "Oculys",
    "Pierrot",
    "Phileas Derocas",
    "Dreadnought",
    "Missy Despierta",
    "Enviro 3.0",
    "Asteroide Gestalt",
    "X'astuth",
    "Colmillo Rabioso",
    "Doctor del Farol",
    "Leviatan",
    "Explorador Sideral",
    "Aullosaurio",
    "Protector de los Sueños",
    "Basilisco y Esdragon",
    "Heredero de los 5 anillos",
    "Ballesto",
    "Cibermantico Etereo",
    "Lampyrion Solar",
    "Dimentio",
    "Generalisimo Chocoleon IV",
    "Archivista Eterno",
    "Ammonia Atlantica",
    "General Terracota",
    "Gran Gusano de los Tuneles",
    "Litominero Stellariano",
    "Capitan aguila",
    "Octopia",
    "Medico Astral",
    "Simurgh",
    "Väinämöinen",
    "Disfuncidroide",
    "Caronte (Halloween)",
    "Cabloide",
    "Exoceleste algido",
    "Clerigo Oscuro",
    "D'Arathomis",
    "Tenacity",
    "Regulo&Juzya",
    "Gelatina Purulenta",
    "Vivaldi",
    "Tecnocaracol",
    "Zapador de Madrigueras",
    "Invocador",
    "Lepidoptech",
    "Huesamblaje",
    "Sasquatch",
    "Thanaconda",
    "A00-C0R3-C0NTR0L",
    "Hijo de la Tormenta",
    "Bricodron LLK-215",
    "GAR, Zombi Soberano",
    "Amalgalmas",
    "Llama Sensei",
    "Polaris",
    "Myrmidus.exe",
    "Helicoide Boreal",
    "Antropobot Soñador",
    "Anteros",
    "Doctor Desollador",
    "Oryctolagus Exobioicus",
    "Cr€$u$",
    "Asimov",
    "Achernar",
    "El Motin",
    "Xinomas",
    "Simulacro de Combate",
    "Helidron KxT-271",
    "Reed, El Verdadero Heroe",
    "El Fosforescente",
    "Tezcatlipoca",
    "Scaramouche",
    "Traiciobaza",
    "Astrobservador",
    "Sierrametrodon",
  },

  -- Página 6: del 81 al 96
  [6] = {
    "Capsuladora MTZ-004",
    "Núcleo seráfico",
    "Rey De Avalon",
    "K'yu T'ypaï",
    "Amistad Sin Limites",
    "Sakuraboshi",
    "Giganto-Moai",
    "TCB-8566 Trafficroid",
    "Bearsikk Sikleast",
    "Capitan Barbanegra",
    "La Anárquica",
    "Terror Jurasico",
    "Emperador Helado",
    "Breakmaster",
    "El Descolorido",
    "Azaronimo",
    "Professor Cronomantico",
    "Golem de Epocas",
    "La Locura Reptante",
    "Hekantocheiros",
    "Atlas",
    "Peregrino Espacial",
    "Termodroide Celsius",
    "Black I.C.E.",
    "Profeta del Crepúsculo",
    "Señor Bestial",
    "Freyja, Reina de los Vanir",
    "Altísimo Candelabro",
    "El Arquitecto",
    "Medinosaurio",
    "Lapin Zombie",
    "???",
  },








local codes = {  [1] = {
"AA_01",

"AA_02",

"AB_01",

"AB_02",

"AB_03",

"AC_01",

"AC_02",

"AC_03",

"AD_01",

"AD_02",

"AE_01",

"AE_02",

"AF_01",

"AF_02",

"B_01",

"B_02",

"B_03",

"BA_01",

"BA_02",

"BB_01",

"BB_02",

"BC_01",

"BC_02",

"BD_01",

"BD_02",

"BE_01",

"BE_02",

"BE_03",

"BF_01",

"BF_02",

"C_01",

"C_02",

"CA_01",

"CA_02",

"CA_03",

"CB_01",

"CB_02",

"CC_01",

"CC_02",

"CD_01",

"CD_02",

"CD_03",

"CE_01",

"CE_03",

"CF_01",

"CF_02",

"D_01",

"DA_01",

"DA_02",

"DB_01",

"DB_02",

"DB_03",

"DC_01",

"DC_02",

"DC_03",

"DD_01",

"DD_02",

"DE_01",

"DE_02",

"DF_01",

"DF_02",

"E_01",

"EA_01",

"EA_02",

"EA_03",

"EB_01",

"EB_02",

"EB_03",

"EC_01",

"EC_02",

"ED_01",

"ED_02",

"EE_01",

"EE_02",

"EE_03",

"EF_01",

"EF_02",

"EF_03",

"F_01",

"F_03",

"FA_01",

"FA_02",

"FB_01",

"FB_02",

"FB_03",

"FC_01",

"FC_02",

"FD_01",

"FD_02",

"FD_03",

"FE_01",

"FE_02",

"FF_01",

"FF_02",

"FC_03",

"CB_03",

"BA_03",
  },

  [2] = {
"FF_03",

"BB_03",

"DE_03",

"DA_03",

"BF_03",

"CD_04",

"DC_04",

"AA_03",

"D_03",

"EC_03",

"BC_03",

"AD_03",

"AF_04",

"AE_03",

"FB_04",

"BD_03",

"CF_04",

"CE_02",

"DD_03",

"CC_03",

"DF_03",

"ED_03",

"AF_03",

"BC_04",

"DB_04",

"FA_03",

"FE_04",

"FE_03",

"A_03",

"CF_03",

"DE_04",

"BA_04",

"CB_04",

"FD_04",

"FC_04",

"FA_04",

"BF_04",

"FE_05",

"CA_04",

"DF_04",

"ED_04",

"AC_04",

"EB_04",

"DE_05",

"BF_05",

"C_03",

"EC_04",

"EF_04",

"FF_04",

"AD_04",

"CC_04",

"AB_04",

"CE_04",

"BD_99",

"BB_04",

"AA_04",

"AE_04",

"CB_05",

"AF_05",

"DA_04",

"BD_04",

"FC_05",

"EE_04",

"DD_04",

"BE_04",

"EA_04",

"EF_05",

"DF_99",

"FB_05",

"EB_05",

"CA_05",

"AC_05",

"AB_05",

"AA_05",

"FA_05",

"FE_99",

"CE_05",

"E_03",

"CC_05",

"DA_05",

"DF_05",

"DB_05",

"BC_05",

"DC_05",

"ED_05",

"EC_05",

"FD_05",

"EC_06",

"FF_05",

"BE_05",

"AD_05",

"BD_05",

"DD_05",

"DA_06",

"CF_05",

"BB_05",

"CF_06",

"CD_05",

"EA_05",
  },
  [3] = {
"AF_06",

"AE_05",

"EE_05",

"BA_05",

"CE_06",

"FB_06",

"BC_06",

"FD_06",

"DC_06",

"ED_06",

"FA_06",

"BF_06",

"AD_06",

"CD_06",

"DB_06",

"AC_06",

"FE_06",

"EB_06",

"EA_06",

"BE_06",

"B_04",

"AB_06",

"EF_06",

"FC_06",

"DF_06",

"CB_06",

"DD_06",

"DE_06",

"CA_06",

"FF_06",

"BD_06",

"AF_07",

"CF_07",

"AE_06",

"BA_06",

"EC_07",

"ED_07",

"BD_07",

"DB_07",

"DA_07",

"FE_07",

"AB_07",

"DF_07",

"BF_07",

"EE_06",

"AA_06",

"CE_07",

"CC_06",

"CC_07",

"FC_07",

"BA_07",

"F_04",

"FD_07",

"EF_07",

"AD_07",

"AC_07",

"CA_07",

"FB_07",

"FA_07",

"DE_07",

"CB_07",

"BC_07",

"CD_07",

"EA_07",

"EE_07",

"BE_07",

"DD_07",

"EB_07",

"EC_08",

"CF_08",

"BC_08",

"AC_08",

"DD_08",

"DE_08",

"FC_08",

"AE_07",

"DB_08",

"AF_08",

"FA_08",

"FF_07",

"BB_06",

"EF_08",

"DA_08",

"CB_08",

"EA_08",

"FB_08",

"BF_08",

"AD_08",

"FC_09",

"CE_08",

"BA_08",

"AE_08",

"BD_08",

"FA_99",

"EB_99",

"CD_08",

"DC_07",

"ED_08",

"FD_08",
  },

  [4] = {
"CA_08",

"DF_08",

"EB_08",

"CF_09",

"AD_09",

"DC_08",

"BB_07",

"AA_07",

"AC_09",

"BD_09",

"FF_08",

"EE_08",

"BE_08",

"AA_08",

"CA_09",

"EB_09",

"DF_09",

"FE_08",

"BB_08",

"EC_09",

"DE_09",

"AB_08",

"BE_09",

"CA_10",

"EA_09",

"CC_08",

"BF_09",

"CC_09",

"AE_09",

"CD_09",

"DA_09",

"FD_09",

"AF_09",

"A_05",

"EA_10",

"DD_09",

"FD_10",

"AB_09",

"AC_10",

"DF_10",

"BC_09",

"AF_10",

"BB_09",

"DE_10",

"CB_09",

"DB_09",

"DC_09",

"FE_09",

"BA_09",

"BF_10",

"FA_09",

"AA_09",

"CF_10",

"CE_09",

"EF_09",

"DA_10",

"EE_09",

"FF_09",

"FB_10",

"ED_09",

"FB_09",

"EF_10",

"ED_10",

"CB_10",

"AE_10",

"DC_10",

"BD_10",

"FE_10",

"FA_10",

"CD_10",

"AD_10",

"FC_10",

"BB_10",

"AF_99",

"BC_10",

"DD_10",

"CE_99",

"AA_10",

"BA_10",

"CC_10",

"DB_10",

"EC_10",

"EB_10",

"AB_10",

"BE_10",

"CE_10",

"EB_11",

"FF_10",

"DB_11",

"FC_99",

"EE_10",

"AC_11",

"BD_11",

"FA_11",

"AF_11",

"CE_11",

"CA_11",

"CD_11",

"FB_11",
  },
  [5] = {
"DA_11",

"ED_11",

"AA_11",

"BB_11",

"EF_99",

"FD_11",

"CB_11",

"BF_11",

"DE_11",

"AE_11",

"EC_11",

"DC_11",

"BA_11",

"FF_11",

"DF_11",

"B_05",

"EE_99",

"FC_11",

"CF_11",

"CC_11",

"C_05",

"FB_12",

"AD_11",

"DD_11",

"BE_11",

"FE_11",

"AC_12",

"EA_11",

"CA_99",

"AB_11",

"EE_11",

"EF_12",

"BC_11",

"BB_12",

"DE_12",

"E_12",

"D_12",

"AF_12",

"DF_12",

"CF_12",

"CB_12",

"FA_12",

"DD_12",

"EF_11",

"FC_12",

"FF_12",

"ED_12",

"CA_12",

"DB_12",

"EC_12",

"CD_12",

"ED_99",

"EB_12",

"FD_12",

"F_13",

"AB_12",

"BC_12",

"AA_12",

"FE_12",

"BF_12",

"C_13",

"AE_12",

"CE_12",

"BE_12",

"FE_13",

"DA_12",

"DC_12",

"F_12",

"AD_12",

"B_12",

"D_13",

"BD_12",

"AA_99",

"CF_13",

"EA_12",

"B_13",

"BF_13",

"DD_13",

"EE_12",

"AD_13",

"FA_13",

"DA_13",

"CA_13",

"BC_13",

"DE_13",

"BA_12",

"A_13",

"EF_13",

"CB_13",

"EB_13",

"AB_99",

"AE_13",

"CF_99",

"BB_13",

"FD_13",

"CC_12",

"BC_14",

"E_13",

"DC_13",
},

[6] = {
"AC_13",

"FE_14",

"FC_13",

"EF_14",

"CC_13",

"FF_13",

"AE_14",

"AA_13",

"CD_13",

"CB_14",

"BA_13",

"DC_14",

"DF_13",

"CA_14",

"DB_13",

"AE_99",

"AC_14",

"AF_13",

"DB_14",

"EC_13",

"CE_13",

"EA_13",

"EA_99",

"AF_14",

"FF_14",

"DD_14",

"FD_14",

"FB_13",

"AB_13",

"ED_13",

"BD_14",

"DA_14",
  }
}

-- Función para ejecutar scripts desde la URL
function ejecutarScriptDesdeURL(url)
  local response = gg.makeRequest(url)
  if response and response.content then
    local chunk, err = load(response.content)
    if not chunk then
      gg.alert("❌ Error al cargar script: " .. err)
    else
      pcall(chunk)
    end
  else
    gg.alert("❌ No se pudo obtener el script desde la URL.")
  end
end

	
-- 2) Inicialización de revertValues
local revertValues = {}

-- 3) Función que busca y edita un solo código
local function editCode(code, nuevo)

-- busca
  gg.searchNumber(":" .. code, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  local r = gg.getResults(100000)
  if #r > 0 then

-- guarda para revertir
table.insert(revertValues, r)

-- edita
gg.editAll(":" .. nuevo, gg.TYPE_BYTE)
gg.clearResults()
gg.alert("Reemplazado: " .. code)
else
gg.clearResults()
gg.toast("No encontrado: " .. code)
end

end



-- 4) Función para reemplazar todos los mutantes originales con el nuevo código

local function replaceAllMutantesOriginales(nuevo)

  for _, code in ipairs(mutantesOriginales) do

    editCode(code, nuevo)  -- Llamada a la función editCode

  end

  gg.alert("🔴Dale a cambiar MUTANTE por oro.")
end



-- 5) Función para restaurar todos los cambios

local function restore()
gg.setVisible(false)
  for _, results in ipairs(revertValues) do

    gg.setValues(results)

  end

  gg.clearResults()

  gg.alert("♻️VALORES RESTAURADOS. Puedes seguir hibridando👑")

end



-- 6) Menú de mutantes de una página concreta

local function pageMenu(pageNum)

  local sel = gg.choice(pages[pageNum], nil, "Página " .. pageNum)

  if sel then

    local codigo = codes[pageNum][sel]

    replaceAllMutantesOriginales(codigo)  -- Reemplaza todos los mutantes
gg.setVisible(false)
  end

end



-- 7) Menú principal
while true do
if gg.isVisible(true) then
gg.setVisible(false)
    
local menu = {

"🌐Página 1", 
"🌐Página 2", 
"🌐Página 3",
"🌐Página 4",
"🌐Página 5",
"🌐Página 6",
"♻️Restablecer valores♻️",
"❌ Salir ❌"

    }

local choice = gg.choice(menu, nil, "🔵𝕄𝕦𝕥𝕒𝕟𝕥𝕖𝕤 𝕖𝕟 𝕠𝕣𝕕𝕖𝕟 𝕕𝕖 𝕤𝕒𝕝𝕚𝕕𝕒🔴")
    if choice == nil then
      -- no hacer nada
    elseif choice == 9 then
      gg.toast("Saliendo")
      os.exit()
    elseif choice == 7 then
      restore()
      gg.alert("♻️Valores restaurados, continua hibridando")
    else
      pageMenu(choice)
    end
  end
end
