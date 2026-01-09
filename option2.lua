-- SCRIPT COMPLETO: MUTODEX MGG (MÉTODO DE BÚSQUEDA INDIVIDUAL)
-- Optimizado para evitar errores de desincronización entre nombres y códigos.

gg.alert("⚠️ Asegúrate de solo usar el ROBOT y el ZOMBIE en este tipo de hibridaciones. ⚠️")

local mutantesOriginales = {
  "AA_01", "AA_03", "AB_01", "AB_03", -- CIBERS
  "BA_01", "BA_02", "BA_03"           -- NECROS
}

local revertValues = {}

-- Base de datos unificada (Páginas 1 a 6)
local mutantesData = {
  [1] = {
    {name="Robot", code="AA_01"}, {name="Robot Debil", code="AA_02"}, {name="Androide", code="AB_01"},
    {name="Goliat", code="AB_02"}, {name="Necrobot", code="AB_03"}, {name="Hypnos", code="AC_01"},
    {name="Xenarach", code="AC_02"}, {name="Humanoide Perfido", code="AC_03"}, {name="Capitan Mecano", code="AD_01"},
    {name="Dezinger", code="AD_02"}, {name="Escarabot", code="AE_01"}, {name="Monocerus", code="AE_02"},
    {name="Coloso", code="AF_01"}, {name="Libraro", code="AF_02"}, {name="Deus Machina", code="B_01"},
    {name="Virgon", code="B_02"}, {name="Zombi", code="B_03"}, {name="Zombi Debil", code="BA_01"},
    {name="Jack O'Lantern", code="BA_02"}, {name="Zomborg", code="BB_01"}, {name="Muñeca Diabolica", code="BB_02"},
    {name="Lord Blood", code="BC_01"}, {name="Espectro de la Cripta", code="BC_02"}, {name="Despota Negro", code="BD_01"},
    {name="Capitan Osamenta", code="BD_02"}, {name="Necrodragon", code="BE_01"}, {name="Cancernia", code="BE_02"},
    {name="Fantasmonauta", code="BE_03"}, {name="Caprika", code="BF_01"}, {name="Quebrantacuellos", code="BF_02"},
    {name="Baron Lundi", code="C_01"}, {name="Mago Tetrico", code="C_02"}, {name="Guerrero", code="CA_01"},
    {name="Guerrero Debil", code="CA_02"}, {name="Ejecutor", code="CA_03"}, {name="Interceptrix", code="CB_01"},
    {name="General Caos", code="CB_02"}, {name="Banshee Guerrera", code="CC_01"}, {name="Bushi", code="CC_02"},
    {name="Caballero Nordico", code="CD_01"}, {name="Buck Maurice", code="CD_02"}, {name="Honey Bunny", code="CD_03"},
    {name="Sagitauro", code="CE_01"}, {name="Haggis", code="CE_03"}, {name="Marciano Errante", code="CF_01"},
    {name="Guardian Galactico", code="CF_02"}, {name="Valkiria", code="D_01"}, {name="Thor", code="DA_01"},
    {name="Bestia", code="DA_02"}, {name="Reptoide", code="DB_01"}, {name="Aracno", code="DB_02"},
    {name="Cerbero", code="DB_03"}, {name="Zombat", code="DC_01"}, {name="Cobrakai", code="DC_02"},
    {name="Rakshasa", code="DC_03"}, {name="Leohart", code="DD_01"}, {name="Gargantus", code="DD_02"},
    {name="Kaiju Kitty", code="DE_01"}, {name="Maestro Splitter", code="DE_02"}, {name="Reina Parasita", code="DF_01"},
    {name="Cosmo Kong", code="DF_02"}, {name="Dracus Nobilis", code="E_01"}, {name="Satiro Hechicero", code="EA_01"},
    {name="Extraterrestre", code="EA_02"}, {name="Aniquilador", code="EA_03"}, {name="Sentry", code="EB_01"},
    {name="Exopez", code="EB_02"}, {name="Tutti Viscosi", code="EB_03"}, {name="Sirenia", code="EC_01"},
    {name="Devorador", code="EC_02"}, {name="Sundance Bug", code="ED_01"}, {name="Behemoth", code="ED_02"},
    {name="Xenos", code="EE_01"}, {name="Rocageno", code="EE_02"}, {name="Astrosurfista", code="EE_03"},
    {name="Supernovus", code="EF_01"}, {name="Maestro Oida", code="EF_02"}, {name="Nebulon", code="EF_03"},
    {name="Mr Marvelous", code="F_01"}, {name="Aquapunzel", code="F_03"}, {name="Diablesa", code="FA_01"},
    {name="Mago de las Nieves", code="FA_02"}, {name="Tecno Tao", code="FB_01"}, {name="Mekali", code="FB_02"},
    {name="La Parca", code="FB_03"}, {name="Principe Escorpion", code="FC_01"}, {name="Anubis", code="FC_02"},
    {name="Gandolphus", code="FD_01"}, {name="Capitan Paz", code="FD_02"}, {name="Medusa", code="FD_03"},
    {name="Horus", code="FE_01"}, {name="Ivory Hanzo", code="FE_02"}, {name="C'thlig", code="FF_01"},
    {name="Azuria", code="FF_02"}, {name="Señor del Abismo", code="FC_03"}, {name="Castigo", code="CB_03"},
    {name="Oriax", code="BA_03"}, {name="Ragnar", code="AF_06"}, {name="Triple-B", code="AE_05"}
  },
  [2] = {
    {name="Mandragora", code="FF_03"}, {name="Motero Maldito", code="BB_03"}, {name="Armadizo", code="DE_03"},
    {name="Mantidroide", code="DA_03"}, {name="Carnero Vengador", code="BF_03"}, {name="Battle Toad", code="CD_04"},
    {name="Cezanne", code="DC_04"}, {name="H.U.M.A.N.", code="AA_03"}, {name="Rambit", code="D_03"},
    {name="Star Trooper", code="EC_03"}, {name="Micky Krueger", code="BC_03"}, {name="Tauridus", code="AD_03"},
    {name="Autonoraptor", code="AF_04"}, {name="Invadron", code="AE_03"}, {name="Bruja Malvada", code="FB_04"},
    {name="Oso Espantoso", code="BD_03"}, {name="Azog", code="CF_04"}, {name="Geminium", code="CE_02"},
    {name="Psicojabali", code="DD_03"}, {name="Zena", code="CC_03"}, {name="Absolem", code="DF_03"},
    {name="Wampara", code="ED_03"}, {name="Barbaroca", code="AF_03"}, {name="George Washington", code="BC_04"},
    {name="Louis XVI", code="DB_04"}, {name="Bazzinger", code="FA_03"}, {name="Space Princess", code="FE_04"},
    {name="Astromago", code="FE_03"}, {name="Garuda", code="A_03"}, {name="Hada Machete", code="CF_03"},
    {name="Genshiryoku", code="DE_04"}, {name="El Experimento", code="BA_04"}, {name="Leonidas", code="CB_04"},
    {name="Buranka", code="FD_04"}, {name="Mexihcatl", code="FC_04"}, {name="Banker", code="FA_04"},
    {name="Emperador Galactico", code="BF_04"}, {name="Nebulus", code="FE_05"}, {name="Project X27", code="CA_04"},
    {name="Miroku", code="DF_04"}, {name="Mapach Wik", code="ED_04"}, {name="El Fontanero", code="AC_04"},
    {name="Matafantasmas", code="EB_04"}, {name="Exo Cookie", code="DE_05"}, {name="Britany", code="BF_05"},
    {name="Frostmass", code="C_03"}, {name="Santactopus", code="EC_04"}, {name="Mephisto", code="EF_04"},
    {name="Monolith", code="FF_04"}, {name="Malvatron", code="AD_04"}, {name="Lara", code="CC_04"},
    {name="Commander Ender", code="AB_04"}, {name="Zortrex", code="CE_04"}, {name="Tengu", code="BD_99"},
    {name="Sacamantecas", code="BB_04"}, {name="Oculus", code="AA_04"}, {name="Supraman X", code="AE_04"},
    {name="Cupido", code="CB_05"}, {name="Abraham Lincoln", code="AF_05"}, {name="Escuadron Rhino", code="DA_04"},
    {name="Dama Harpia", code="BD_04"}, {name="Yelda", code="FC_05"}, {name="Flying Jordson", code="EE_04"},
    {name="Cernunnos", code="DD_04"}, {name="Capitan Perla Negra", code="BE_04"}, {name="Brick McGole", code="EA_04"},
    {name="Kraken", code="EF_05"}, {name="Genimal", code="DF_99"}, {name="Hardcorius", code="FB_05"},
    {name="Marine Muerto", code="EB_05"}, {name="Challengeer", code="CA_05"}, {name="Ciberpunk", code="AC_05"},
    {name="Neo Urban XIII", code="AB_05"}, {name="Tecnoforzer", code="AA_05"}, {name="Chaman Sombra", code="FA_05"},
    {name="Ingeniero", code="FE_99"}, {name="Sun-Duke", code="CE_05"}, {name="Ceres", code="E_03"},
    {name="Shin Hakuho", code="CC_05"}, {name="Fenec Plus Ultra", code="DA_05"}, {name="Madre de los Dragones", code="DF_05"},
    {name="Brawler", code="DB_05"}, {name="Loco de la Motosierra", code="BC_05"}, {name="Rey Mono", code="DC_05"},
    {name="Acarius", code="ED_05"}, {name="Cazador Espacial", code="EC_05"}, {name="Artista Siniestro", code="FD_05"},
    {name="Zeus", code="EC_06"}, {name="Glubber", code="FF_05"}, {name="Nyrlatoth", code="BE_05"},
    {name="Cibercroc", code="AD_05"}, {name="Bulldozer", code="BD_05"}, {name="Pejelagarto", code="DD_05"},
    {name="Triceratanque", code="DA_06"}, {name="Monje Akuso", code="CF_05"}, {name="Caronte", code="BB_05"},
    {name="Tio Sam", code="CF_06"}, {name="Hog the Ripper", code="CD_05"}, {name="Rey Steven", code="EA_05"}
  },
  [3] = {
    {name="Duplicado de Eva", code="AF_06"}, {name="Ciberbabosa", code="AE_05"}, {name="Jhingal", code="EE_05"},
    {name="Doctor Blaw", code="BA_05"}, {name="Tomahawk", code="CE_06"}, {name="Hechicera", code="FB_06"},
    {name="Dandi oscar", code="BC_06"}, {name="Kung Chow", code="FD_06"}, {name="Comeabuelas", code="DC_06"},
    {name="Mau-Jack", code="ED_06"}, {name="Lily", code="FA_06"}, {name="El Rey de Mimphys", code="BF_06"},
    {name="Bioerizo", code="AD_06"}, {name="Gladiadog", code="CD_06"}, {name="Casto", code="DB_06"},
    {name="Viper", code="AC_06"}, {name="Dollbyte", code="FE_06"}, {name="Garlog", code="EB_06"},
    {name="Krunk", code="EA_06"}, {name="Apofis", code="BE_06"}, {name="Cuervo", code="B_04"},
    {name="Drusella", code="AB_06"}, {name="Mandor", code="EF_06"}, {name="Borrasca", code="FC_06"},
    {name="Sable", code="DF_06"}, {name="Artemisa", code="CB_06"}, {name="Mama Kangu", code="DD_06"},
    {name="Darwin", code="DE_06"}, {name="ERR-ADI-K-Bot", code="CA_06"}, {name="Namaste", code="FF_06"},
    {name="Tyrtiduron", code="BD_06"}, {name="Bounda", code="AF_07"}, {name="Mega Claus", code="CF_07"},
    {name="Marv", code="AE_06"}, {name="Z-0", code="BA_06"}, {name="Falcon", code="EC_07"},
    {name="Paramic", code="ED_07"}, {name="El Original", code="BD_07"}, {name="Señor Dragon", code="DB_07"},
    {name="Carlingger", code="DA_07"}, {name="Rey de los Insectos", code="FE_07"}, {name="Aplastador", code="AB_07"},
    {name="Quimera", code="DF_07"}, {name="Champicorteza", code="BF_07"}, {name="Reina Rakkti", code="EE_06"},
    {name="Hercules", code="AA_06"}, {name="Aran", code="CE_07"}, {name="El Gringo", code="CC_06"},
    {name="Spartac", code="CC_07"}, {name="Amarok", code="FC_07"}, {name="Pikabu", code="BA_07"},
    {name="Leprechaun", code="F_04"}, {name="Fenix", code="FD_07"}, {name="Kal Wayne", code="EF_07"},
    {name="Avispa Diesel", code="AD_07"}, {name="Robofuerte", code="AC_07"}, {name="Rocky Botboa", code="CA_07"},
    {name="Las Moiras", code="FB_07"}, {name="Dr. Frost", code="FA_07"}, {name="Capitan Gluglu", code="DE_07"},
    {name="Rey Esqueleto", code="CB_07"}, {name="Turbacieno", code="BC_07"}, {name="Juan Hielo", code="CD_07"},
    {name="Capitan Patriota", code="EA_07"}, {name="Astro Gummy", code="EE_07"}, {name="Nezarim", code="BE_07"},
    {name="Globomono", code="DD_07"}, {name="Starminator", code="EB_07"}, {name="Espectra", code="EC_08"},
    {name="Wynn", code="CF_08"}, {name="Thran", code="BC_08"}, {name="Blender", code="AC_08"},
    {name="Rinotauro", code="DD_08"}, {name="Cosmopandas", code="DE_08"}, {name="Kudamono", code="FC_08"},
    {name="Alfie", code="AE_07"}, {name="Tiranozomb", code="DB_08"}, {name="H0ud1n1", code="AF_08"},
    {name="FootBot", code="FA_08"}, {name="Geomega", code="FF_07"}, {name="Gloton", code="BB_06"},
    {name="Seiyatsu", code="EF_08"}, {name="Asaylan", code="DA_08"}, {name="Wrath", code="CB_08"},
    {name="Lady Libertad", code="EA_08"}, {name="Gozer", code="FB_08"}, {name="Van Helsing", code="BF_08"},
    {name="Kitty Ranger", code="AD_08"}, {name="Gorthaur el Cruel", code="FC_09"}, {name="El Rey sin Nombre", code="CE_08"},
    {name="Naraxis", code="BA_08"}, {name="Andromeda", code="AE_08"}, {name="Enano y Cerebro", code="BD_08"},
    {name="Arcangel", code="FA_99"}, {name="Diablo", code="EB_99"}, {name="Drall", code="CD_08"},
    {name="Noren", code="DC_07"}, {name="Sgt. Pandamonium", code="ED_08"}, {name="Omikami", code="FD_08"}
  },
  [4] = {
    {name="Makino", code="CA_08"}, {name="Chantecler", code="DF_08"}, {name="Dr. Nucleus", code="EB_08"},
    {name="Amo de las Llaves", code="CF_09"}, {name="Carcinus Gigas", code="AD_09"}, {name="Sanik", code="DC_08"},
    {name="Necroparasito", code="BB_07"}, {name="Proyecto 3V3", code="AA_07"}, {name="Optimus Zord", code="AC_09"},
    {name="Faucesnegras", code="BD_09"}, {name="Tormenta de Fuego", code="FF_08"}, {name="Golemagnus", code="EE_08"},
    {name="Dug Dario", code="BE_08"}, {name="Centinela R0B-H4N", code="AA_08"}, {name="Big Bo$$", code="CA_09"},
    {name="Reina Sylvidra", code="EB_09"}, {name="Quetzalcoatl", code="DF_09"}, {name="Majin Zam", code="FE_08"},
    {name="Bruja de la Peste", code="BB_08"}, {name="Excaliduro", code="EC_09"}, {name="Zigmo", code="DE_09"},
    {name="Gran Señor de las Tumbas", code="AB_08"}, {name="Pirotropo", code="BE_09"}, {name="Altaris", code="CA_10"},
    {name="Capitan Gorn", code="EA_09"}, {name="Yokozuna", code="CC_08"}, {name="Calaca", code="BF_09"},
    {name="Lancelot", code="CC_09"}, {name="Centaurus", code="AE_09"}, {name="Mon-Key Crew", code="CD_09"},
    {name="Sound Killah", code="DA_09"}, {name="Dracomago", code="FD_09"}, {name="Caudillo Steam", code="AF_09"},
    {name="Cazarrecompensas", code="A_05"}, {name="Surfista del Espacio", code="EA_10"}, {name="Mister T-Ger", code="DD_09"},
    {name="Master Paw", code="FD_10"}, {name="Grumpy Claus", code="AB_09"}, {name="Sargento Dusk", code="AC_10"},
    {name="Gwenn", code="DF_10"}, {name="El Coleccionista", code="BC_09"}, {name="El Veneno", code="AF_10"},
    {name="Frankenhuahua", code="BB_09"}, {name="Mad Mike", code="DE_10"}, {name="Jane Saw", code="CB_09"},
    {name="Horax", code="DB_09"}, {name="Maestro Shinzo", code="DC_09"}, {name="Xeleroth", code="FE_09"},
    {name="Excavalipsis", code="BA_09"}, {name="El Enterador", code="BF_10"}, {name="Zenguru", code="FA_09"},
    {name="H.U.N.T.3.R", code="AA_09"}, {name="Arelvam", code="CF_10"}, {name="Zar Bomba", code="CE_09"},
    {name="Mago Ryzafredd", code="EF_09"}, {name="Hawkeye", code="DA_10"}, {name="Megastral", code="EE_09"},
    {name="Liquidador", code="FF_09"}, {name="Yggdrasil", code="FB_10"}, {name="Rox McRain", code="ED_09"},
    {name="Hadeath", code="FB_09"}, {name="Divastator", code="EF_10"}, {name="Angry Pork", code="ED_10"},
    {name="Frankendwarf", code="CB_10"}, {name="Akai-Bot", code="AE_10"}, {name="Krampus", code="DC_10"},
    {name="Waryena", code="BD_10"}, {name="Bahamut", code="FE_10"}, {name="Mimi Cronocurva", code="FA_10"},
    {name="Guardia Men'ki", code="CD_10"}, {name="Hipopotanque", code="AD_10"}, {name="Hefesto", code="FC_10"},
    {name="T-3rr0r", code="BB_10"}, {name="A027441", code="AF_99"}, {name="King Lulu", code="BC_10"},
    {name="Kameo", code="DD_10"}, {name="Kolossus", code="CE_99"}, {name="ED-404", code="AA_10"},
    {name="Hellsaw", code="BA_10"}, {name="Urgan", code="CC_10"}, {name="Buffalor", code="DB_10"},
    {name="Gamallia", code="EC_10"}, {name="Gakarian", code="EB_10"}, {name="S-K-Venger", code="AB_10"},
    {name="Overkill", code="BE_10"}, {name="Capitan Achabe", code="CE_10"}, {name="Aubraea Mutantula", code="EB_11"},
    {name="Bregbeam", code="FF_10"}, {name="Piwisher", code="DB_11"}, {name="Nimrod", code="FC_99"},
    {name="E.T.-Liot", code="EE_10"}, {name="Spin Fury", code="AC_11"}, {name="Cooktouille", code="BD_11"},
    {name="Orion", code="FA_11"}, {name="Heimdall", code="AF_11"}, {name="Chun-Lei", code="CE_11"},
    {name="The Reef", code="CA_11"}, {name="Sir Bannog", code="CD_11"}, {name="Pesadilla Viviente", code="FB_11"}
  },
  [5] = {
    {name="An0malie", code="DA_11"}, {name="Owlock", code="ED_11"}, {name="TriAD", code="AA_11"},
    {name="La Olvidada", code="BB_11"}, {name="Mago de la Singularidad", code="EF_99"}, {name="Ishi no Ōkami", code="FD_11"},
    {name="Disension", code="CB_11"}, {name="Aqueronte", code="BF_11"}, {name="Drei, Space Corgi", code="DE_11"},
    {name="Mix0-Logo", code="AE_11"}, {name="Veren Kaeesu", code="EC_11"}, {name="Spada", code="DC_11"},
    {name="Roadmaster", code="BA_11"}, {name="Gerard Steelgarden", code="FF_11"}, {name="Chocolem", code="DF_11"},
    {name="Drudge Zombie", code="B_05"}, {name="Animus de Irrealidad", code="EE_99"}, {name="Midas", code="FC_11"},
    {name="Caliburn EX", code="CF_11"}, {name="Santagonista", code="CC_11"}, {name="Barbaro", code="C_05"},
    {name="Dama del Crepusculo", code="FB_12"}, {name="Mecaovoide Aracneo", code="AD_11"}, {name="Terror Abisal", code="DD_11"},
    {name="Oculys", code="BE_11"}, {name="Pierrot", code="FE_11"}, {name="Phileas Derocas", code="AC_12"},
    {name="Dreadnought", code="EA_11"}, {name="Missy Despierta", code="CA_99"}, {name="Enviro 3.0", code="AB_11"},
    {name="Asteroide Gestalt", code="EE_11"}, {name="X'astuth", code="EF_12"}, {name="Colmillo Rabioso", code="BC_11"},
    {name="Doctor del Farol", code="BB_12"}, {name="Leviatan", code="DE_12"}, {name="Explorador Sideral", code="E_12"},
    {name="Aullosaurio", code="D_12"}, {name="Protector de los Sueños", code="AF_12"}, {name="Basilisco y Esdragon", code="DF_12"},
    {name="Heredero de los 5 anillos", code="CF_12"}, {name="Ballesto", code="CB_12"}, {name="Cibermantico Etereo", code="FA_12"},
    {name="Lampyrion Solar", code="DD_12"}, {name="Dimentio", code="EF_11"}, {name="Generalisimo Chocoleon IV", code="FC_12"},
    {name="Archivista Eterno", code="FF_12"}, {name="Ammonia Atlantica", code="ED_12"}, {name="General Terracota", code="CA_12"},
    {name="Gran Gusano de los Tuneles", code="DB_12"}, {name="Litominero Stellariano", code="EC_12"}, {name="Capitan aguila", code="CD_12"},
    {name="Octopia", code="ED_99"}, {name="Medico Astral", code="EB_12"}, {name="Simurgh", code="FD_12"},
    {name="Väinämöinen", code="F_13"}, {name="Disfuncidroide", code="AB_12"}, {name="Caronte (Halloween)", code="BC_12"},
    {name="Cabloide", code="AA_12"}, {name="Exoceleste algido", code="FE_12"}, {name="Clerigo Oscuro", code="BF_12"},
    {name="D'Arathomis", code="C_13"}, {name="Tenacity", code="AE_12"}, {name="Regulo&Juzya", code="CE_12"},
    {name="Gelatina Purulenta", code="BE_12"}, {name="Vivaldi", code="FE_13"}, {name="Tecnocaracol", code="DA_12"},
    {name="Zapador de Madrigueras", code="DC_12"}, {name="Invocador", code="F_12"}, {name="Lepidoptech", code="AD_12"},
    {name="Huesamblaje", code="B_12"}, {name="Sasquatch", code="D_13"}, {name="Thanaconda", code="BD_12"},
    {name="A00-C0R3-C0NTR0L", code="AA_99"}, {name="Hijo de la Tormenta", code="CF_13"}, {name="Bricodron LLK-215", code="EA_12"},
    {name="GAR, Zombi Soberano", code="B_13"}, {name="Amalgalmas", code="BF_13"}, {name="Llama Sensei", code="DD_13"},
    {name="Polaris", code="EE_12"}, {name="Myrmidus.exe", code="AD_13"}, {name="Helicoide Boreal", code="FA_13"},
    {name="Antropobot Soñador", code="DA_13"}, {name="Anteros", code="CA_13"}, {name="Doctor Desollador", code="BC_13"},
    {name="Oryctolagus Exobioicus", code="DE_13"}, {name="Cr€$u$", code="BA_12"}, {name="Asimov", code="A_13"},
    {name="Achernar", code="EF_13"}, {name="El Motin", code="CB_13"}, {name="Xinomas", code="EB_13"},
    {name="Simulacro de Combate", code="AB_99"}, {name="Helidron KxT-271", code="AE_13"}, {name="Reed, El Verdadero Heroe", code="CF_99"},
    {name="El Fosforescente", code="BB_13"}, {name="Tezcatlipoca", code="FD_13"}, {name="Scaramouche", code="CC_12"},
    {name="Traiciobaza", code="BC_14"}, {name="Astrobservador", code="E_13"}, {name="Sierrametrodon", code="DC_13"}
  },
  [6] = {
    {name="Capsuladora MTZ-004", code="AC_13"}, {name="Núcleo seráfico", code="FE_14"}, {name="Rey De Avalon", code="FC_13"},
    {name="K'yu T'ypaï", code="EF_14"}, {name="Amistad Sin Limites", code="CC_13"}, {name="Sakuraboshi", code="FF_13"},
    {name="Giganto-Moai", code="AE_14"}, {name="TCB-8566 Trafficroid", code="AA_13"}, {name="Bearsikk Sikleast", code="CD_13"},
    {name="Capitan Barbanegra", code="CB_14"}, {name="La Anárquica", code="BA_13"}, {name="Terror Jurasico", code="DC_14"},
    {name="Emperador Helado", code="DF_13"}, {name="Breakmaster", code="CA_14"}, {name="El Descolorido", code="DB_13"},
    {name="Azaronimo", code="AE_99"}, {name="Professor Cronomantico", code="AC_14"}, {name="Golem de Epocas", code="AF_13"},
    {name="La Locura Reptante", code="DB_14"}, {name="Hekantocheiros", code="EC_13"}, {name="Atlas", code="CE_13"},
    {name="Peregrino Espacial", code="EA_13"}, {name="Termodroide Celsius", code="EA_99"}, {name="Black I.C.E.", code="AF_14"},
    {name="Profeta del Crepúsculo", code="FF_14"}, {name="Señor Bestial", code="DD_14"}, {name="Freyja, Reina de los Vanir", code="FD_14"},
    {name="Altísimo Candelabro", code="FB_13"}, {name="El Arquitecto", code="AB_13"}, {name="Medinosaurio", code="ED_13"},
    {name="Lapin Zombie", code="BD_14"}, {name="B.U.N Genio", code="DA_14"}, {name="Gladiador", code="C_14"},
    {name="Hidrira", code="ED_14"}, {name="Infinito Supérmasivo", code="DE_14"}, {name="Nexo Orbital", code="EE_13"},
    {name="Máscara Emocional", code="FF_99"}, {name="Mago", code="F_14"}, {name="Zagam, Gran Rey De La Avaricia", code="FB_14"},
    {name="Sangresquito", code="BD_13"}, {name="Don Gamberetti", code="CD_14"}, {name="Rey Azul", code="CC_14"},
    {name="Espectroplasma", code="B_14"}, {name="El Presentador", code="AB_14"}, {name="Viajero de Vortice", code="BE_13"},
    {name="D.A.B.", code="EA_14"}, {name="Mecargola", code="BA_14"}, {name="Hielo Patinadora Yria", code="CF_14"},
    {name="¿Pastor Estelar?", code="DE_15"}, {name="Origamix", code="AD_14"}
  }
}

-- FUNCIÓN DE BÚSQUEDA INDIVIDUAL (VOLVIENDO AL MÉTODO ANTERIOR)
local function editCode(code, nuevo)
  gg.searchNumber(":" .. code, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
  local r = gg.getResults(100000)
  if #r > 0 then
    table.insert(revertValues, r)
    gg.editAll(":" .. nuevo, gg.TYPE_BYTE)
    gg.toast("Reemplazado: " .. code)
  else
    gg.toast("No encontrado: " .. code)
  end
  gg.clearResults()
end

-- Reemplazar todos los base uno por uno
local function replaceAllMutantesOriginales(nuevo)
  for _, code in ipairs(mutantesOriginales) do
    editCode(code, nuevo)
  end
  gg.alert("🔴 Dale a cambiar MUTANTE por oro.")
end

-- Restaurar valores
local function restore()
  gg.setVisible(false)
  for _, results in ipairs(revertValues) do
    gg.setValues(results)
  end
  revertValues = {}
  gg.clearResults()
  gg.alert("♻️ VALORES RESTAURADOS.")
end

-- Menú por página
local function showPage(n)
  local p = mutantesData[n]
  local names = {}
  for _, m in ipairs(p) do table.insert(names, m.name) end
  local sel = gg.choice(names, nil, "PÁGINA " .. n)
  if sel then
    replaceAllMutantesOriginales(p[sel].code)
  end
end

-- Bucle principal
while true do
  if gg.isVisible(true) then
    gg.setVisible(false)
    local main = gg.choice({
      "🌐 Página 1", "🌐 Página 2", "🌐 Página 3", 
      "🌐 Página 4", "🌐 Página 5", "🌐 Página 6", 
      "♻️ Restablecer valores", "❌ Salir"
    }, nil, "🔴 𝕋𝕆𝔻𝕆𝕊 𝕃𝕆𝕊 𝕄𝕌𝕋𝔸ℕ𝕋𝔼𝕊 🔵")
    
    if main == nil then
    elseif main == 8 then os.exit()
    elseif main == 7 then restore()
    else showPage(main)
    end
  end
  gg.sleep(100)
end
