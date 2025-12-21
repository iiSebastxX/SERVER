activa = 1

-- Variable global para guardar los valores originales

local savedValues = nil
-- Guardar los valores originales
function saveOriginalValues()
    savedValues = {}
    gg.clearResults()


    gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)
    savedValues[1] = gg.getResults(100000)
    gg.clearResults()
    gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)
    savedValues[2] = gg.getResults(100000)
    gg.clearResults()
    gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)
    savedValues[3] = gg.getResults(100000)
    gg.clearResults()
    gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)
    savedValues[4] = gg.getResults(100000)
    gg.clearResults()
    gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)
    savedValues[5] = gg.getResults(100000)
    gg.clearResults()
    gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)
    savedValues[6] = gg.getResults(100000)
    gg.clearResults()
    gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)
    savedValues[7] = gg.getResults(100000)
    gg.clearResults()
end
----------------------------------------------------------------------------------------------------------------------------------------------------------------------

function MENU()
    local tienda = gg.choice({
'[ 💰 ] ➣H4CKS EN LA TIENDA       ᯓ★',
'[ 👾 ] ➣MUT4NTES                          ᯓ★',
'[ ⚡ ] ➣PANEL DE SPEED H4CK    ᯓ★',
'[ 📁 ] ➣CERRAR SCRIPT', }, nil, '⋆˚࿔ MGG SCRIPT 𝜗𝜚˚⋆')

    

    gg.processResume()

    if tienda == 1 then Shop() end
    if tienda == 2 then Mutantes() end    
    if tienda == 3 then SpeedHack() end
    if tienda == 4 then SALIR() end
 
    gg.processResume()

    activa = -1

end



function Shop()

    -- Submenú para "Hacks en la tienda"

    local subMenu1 = gg.choice({
'[ 💰 ] Laboratorios, Forjas y Hornos',
'[ 🥇 ] HORNOS',
'[ 🥈 ] HORNO PEQUEÑO',
'[ 🔬 ] LABORATORIOS MEDICOS',
'[ 📦 ] CAJAS',
'[ ⚡ ] ORBES CHETADOS',
'[ 🧨 ] OFERTAS INFINITAS',
'⬅️ Regresar al menú principal'}, nil, '🛠️TIENDA🥇')


    if subMenu1 == 1 then SubOpcion1_1() end  -- Laboratorios, Forjas y Hornos
    
    if subMenu1 == 2 then SubOpcion1_2() end  -- HORNOS

    if subMenu1 == 3 then SubOpcion1_3() end  -- HORNO PEQUEÑO

    if subMenu1 == 4 then SubOpcion1_4() end  -- LABORATORIOS MEDICOS
    
    if subMenu1 == 5 then SubOpcion1_5() end  -- CAJAS
    
    if subMenu1 == 6 then SubOpcion1_6() end  --  Orbes CHETADOS

    if subMenu1 == 7 then SubOpcion1_7() end  -- Ofertas infinitas
    
    if subMenu1 == 8 then SubOpcion1_8() end  --
    
    if subMenu1 == 9 then SubOpcion1_9() end  -- 

    if subMenu1 == 10 then MENU() end          -- Regresa al menú principal

end

function SubOpcion1_1()

gg.alert("‼️Por favor espera, mientras dirigete a banco. Y espera.‼️")
gg.searchNumber("h1873635F7061636B6167655F3400000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3500000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3600000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3700000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.timeJump("5:0")
gg.sleep(1000)
    

-- Realizar la búsqueda inicial
gg.searchNumber("1600353048;1801675120;1600481121;49;0;0;1952541968;1634300517;108;1", gg.TYPE_DWORD)

-- Laboratorios
local results = gg.getResults(100000) -- Asegúrate de incluir suficientes resultados

-- Verificar si hay resultados
if #results == 0 then
    gg.alert("‼️REINICIA EL JUEGO.‼️")
    return
end

-- Filtrar resultados con el valor "1"
local ones = {}
for i, v in ipairs(results) do
    if v.value == 1 then
        table.insert(ones, v)
    end
end

-- Verificar si hay al menos 8 resultados con valor "1"
if #ones < 7 then
    gg.alert("‼️Parece que algo salió mal, reinicia el juego.‼️")
    return
end

-- Refinar búsqueda para los valores "1"
gg.refineNumber("1", gg.TYPE_DWORD)
local refinedResults = gg.getResults(100000)

-- Editar el octavo resultado
ones[7].value = 2 -- Cambiar a 0 (o el valor deseado)
gg.setValues({ones[7]})

-- Refinar búsqueda al nuevo valor
gg.refineNumber("2", gg.TYPE_DWORD) -- Ajustar si se cambió a un valor distinto
local updatedResults = gg.getResults(100000)

-- Añadir los resultados actualizados a la lista
gg.addListItems(updatedResults)

-- Limpiar resultados
gg.clearResults()

gg.setVisible(false)
gg.clearResults()
gg.searchNumber("1;10,000;0;0;0;0;0;0;2;5::165", gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.editAll("6;1;1,769,292,326;1,852,400,748;1,867,013,991;1,953,067,123;828,337,249;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2;125",gg.TYPE_DWORD)
gg.refineNumber("6",gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.addListItems(r)
gg.clearResults()
gg.sleep(1000)
gg.searchNumber("h1873635F7061636B6167655F3100000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h 26 42 75 69 6C 64 69 6E 67 5F 48 6F 73 70 69 74 61 6C 5F 32",gg.TYPE_BYTE)
gg.clearResults()
gg.timeJump("5:0")
gg.alert("🧪Laboratorios Médicos con éxito.🔬")

-- F0RJAS
gg.searchNumber("1600353048;1801675120;1600481121;50;0;0;1952541968;1634300517;108;1", gg.TYPE_DWORD)

-- Obtener los resultados
local results = gg.getResults(100000) -- Asegúrate de incluir suficientes resultados

-- Verificar si hay resultados
if #results == 0 then
    gg.alert("‼️REINICIA EL JUEGO.‼️")
    return
end

-- Filtrar resultados con el valor "1"
local ones = {}
for i, v in ipairs(results) do
    if v.value == 1 then
        table.insert(ones, v)
    end
end

-- Verificar si hay al menos 8 resultados con valor "1"
if #ones < 7 then
    gg.alert("‼️Parece que algo salió mal, reinicia el juego.‼️")
    return
end

-- Refinar búsqueda para los valores "1"
gg.refineNumber("1", gg.TYPE_DWORD)
local refinedResults = gg.getResults(100000)

-- Editar el octavo resultado
ones[7].value = 2 -- Cambiar a 0 (o el valor deseado)
gg.setValues({ones[7]})

-- Refinar búsqueda al nuevo valor
gg.refineNumber("2", gg.TYPE_DWORD) -- Ajustar si se cambió a un valor distinto
local updatedResults = gg.getResults(100000)

-- Añadir los resultados actualizados a la lista
gg.addListItems(updatedResults)

-- Limpiar resultados
gg.clearResults()

gg.setVisible(false)
gg.clearResults()
gg.searchNumber("1;44,000;0;0;0;0;0;0;2;20::165", gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.editAll("6;1;1,769,292,314;1,852,400,748;1,128,816,487;12,639;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2;1200",gg.TYPE_DWORD)
gg.refineNumber("6",gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.addListItems(r)
gg.clearResults()
gg.sleep(1000)
gg.searchNumber("h1873635F7061636B6167655F3200000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h 1A 42 75 69 6C 64 69 6E 67 5F 48 43 5F 31",gg.TYPE_BYTE)
gg.clearResults()
gg.timeJump("5:0")
gg.alert("🥈Forjas con éxito.🥈")

-- H0RNOS
gg.searchNumber("1600353048;1801675120;1600481121;51;0;0;1952541968;1634300517;108;1", gg.TYPE_DWORD)

-- Obtener los resultados
local results = gg.getResults(100000) -- Asegúrate de incluir suficientes resultados

-- Verificar si hay resultados
if #results == 0 then
    gg.alert("‼️REINICIA EL JUEGO.‼️")
    return
end

-- Filtrar resultados con el valor "1"
local ones = {}
for i, v in ipairs(results) do
    if v.value == 1 then
        table.insert(ones, v)
    end
end

-- Verificar si hay al menos 8 resultados con valor "1"
if #ones < 8 then
    gg.alert("‼️Parece que algo salió mal, reinicia el juego.‼️")
    return
end

-- Refinar búsqueda para los valores "1"
gg.refineNumber("1", gg.TYPE_DWORD)
local refinedResults = gg.getResults(100000)

-- Editar el octavo resultado
ones[7].value = 2 -- Cambiar a 0 (o el valor deseado)
gg.setValues({ones[7]})

-- Refinar búsqueda al nuevo valor
gg.refineNumber("2", gg.TYPE_DWORD) -- Ajustar si se cambió a un valor distinto
local updatedResults = gg.getResults(100000)

-- Añadir los resultados actualizados a la lista
gg.addListItems(updatedResults)

-- Limpiar resultados
gg.clearResults()

gg.setVisible(false)
gg.clearResults()
gg.searchNumber("1;200,000;0;0;0;0;0;0;2;80::165", gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.editAll("6;1;1,769,292,314;1,852,400,748;1,128,816,487;12,895;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2;3000",gg.TYPE_DWORD)
gg.refineNumber("6",gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.addListItems(r)
gg.clearResults()
gg.sleep(1000)
gg.searchNumber("h1873635F7061636B6167655F3300000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h 1A 42 75 69 6C 64 69 6E 67 5F 48 43 5F 32",gg.TYPE_BYTE)
gg.clearResults()
gg.timeJump("5:0")
gg.alert("🥇Hornos con éxito.🥇")
end

function SubOpcion1_2()

    -- Código de "Hornos"

    gg.alert("⚠️‼️INICIANDO HORNOS‼️⚠️")

 
     -- Script generado por 🥇SEBASTEAM🥇 para Mutants Genetic Gladiators
    -- Lua help: http://gameguardian.net/help/

    -- options
    local scriptName = [=====[HORNO DE ORO]=====]
    local scriptVersion = '1.0.0'
    local scriptAuthor = 'SEBASTEAM👺🚬'
    local startToast = ''
    local checkTarget = 0

    local targetName = [=====[Mutants]=====]
    local targetPkg = 'com.kobojo.mutants'
    local targetVersion = [=====[76.646.169933]=====]
    local targetBuild = 15169934

    gg.require('101.1', 16142)

    if startToast ~= '' then startToast = '\n'..startToast end
    gg.toast(scriptName..' v'..scriptVersion..' by '..scriptAuthor..startToast)

    if checkTarget ~= 0 then
        local info = gg.getTargetInfo()
        local check = false
        local current = false
        if checkTarget >= 1 then
            check = targetPkg
            current = info.packageName
        end
        if checkTarget >= 2 then
            check = check..' '..targetVersion..' ('..targetBuild..')'
            current = current..' '..info.versionName..' ('..info.versionCode..')'
        end
        if check ~= current then
            gg.alert('This script for "'..targetName..'" ['..check..'].\nYou select "'..info.label..'" ['..current..'].\nNow script exit.')
            os.exit()
        end
    end

    local revert = nil
    -- Realizar la búsqueda
    gg.searchNumber("h1873635F7061636B6167655F3100000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3300000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3400000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3500000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3600000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3700000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.timeJump("5:0")
gg.sleep(1000)
    
-- Realizar la búsqueda inicial
gg.searchNumber("1600353048;1801675120;1600481121;50;0;0;1952541968;1634300517;108;1", gg.TYPE_DWORD)

-- Obtener los resultados
local results = gg.getResults(100000) -- Asegúrate de incluir suficientes resultados

-- Verificar si hay resultados
if #results == 0 then
    gg.alert("‼️REINICIA EL JUEGO.‼️")
    return
end

-- Filtrar resultados con el valor "1"
local ones = {}
for i, v in ipairs(results) do
    if v.value == 1 then
        table.insert(ones, v)
    end
end

-- Verificar si hay al menos 8 resultados con valor "1"
if #ones < 8 then
    gg.alert("‼️Parece que algo salió mal, reinicia el juego.‼️")
    return
end

-- Refinar búsqueda para los valores "1"
gg.refineNumber("1", gg.TYPE_DWORD)
local refinedResults = gg.getResults(100000)

-- Editar el octavo resultado
ones[8].value = 2 -- Cambiar a 0 (o el valor deseado)
gg.setValues({ones[8]})

-- Refinar búsqueda al nuevo valor
gg.refineNumber("2", gg.TYPE_DWORD) -- Ajustar si se cambió a un valor distinto
local updatedResults = gg.getResults(100000)

-- Añadir los resultados actualizados a la lista
gg.addListItems(updatedResults)

-- Limpiar resultados
gg.clearResults()

gg.clearResults()
gg.searchNumber("1;44,000;0;0;0;0;0;0;2;20::165", gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.editAll("6;1;1,769,292,314;1,852,400,748;1,128,816,487;12,895;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2;3000",gg.TYPE_DWORD)
gg.refineNumber("6",gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.addListItems(r)
gg.clearResults()
gg.sleep(1000)
gg.searchNumber("h1873635F7061636B6167655F3200000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h 1A 42 75 69 6C 64 69 6E 67 5F 48 43 5F 32",gg.TYPE_BYTE)
    gg.clearResults()
 
    gg.alert("🥇HORNOS EN MARCHA🛠️")

end



function SubOpcion1_3()

-- Código de "HORNOS PEQUEÑOS"

    gg.alert("⚠️‼️INICIANDO FORJAS‼️⚠️")


--- Script generado por 🥇SEBASTEAM🥇 para Mutants Genetic Gladiators
-- Lua help: http://gameguardian.net/help/

-- options
local scriptName = [=====[HORNO PEQUEÑO]=====]
local scriptVersion = '1.0.0'
local scriptAuthor = 'SEBASTEAM👺🚬'
local startToast = ''
-- 0 - no check; 1 - check package only, 2 - check package and build
local checkTarget = 0

local targetName = [=====[Mutants]=====]
local targetPkg = 'com.kobojo.mutants'
local targetVersion = [=====[76.646.169933]=====]
local targetBuild = 15169934

-- functions

-- init
gg.require('101.1', 16142)

if startToast ~= '' then startToast = '\n'..startToast end
gg.toast(scriptName..' v'..scriptVersion..' by '..scriptAuthor..startToast)

if checkTarget ~= 0 then
	local info = gg.getTargetInfo()
	local check = false
	local current = false
	if checkTarget >= 1 then
		check = targetPkg
		current = info.packageName
	end
	if checkTarget >= 2 then
		check = check..' '..targetVersion..' ('..targetBuild..')'
		current = current..' '..info.versionName..' ('..info.versionCode..')'
	end
	if check ~= current then
		gg.alert('This script for "'..targetName..'" ['..check..'].\nYou select "'..info.label..'" ['..current..'].\nNow script exit.')
		os.exit()
	end
end
local revert = nil

-- main code

gg.searchNumber("h1873635F7061636B6167655F3100000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3300000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3400000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3500000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3600000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3700000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.timeJump("5:0")
gg.sleep(1000)
    

-- Realizar la búsqueda inicial
gg.searchNumber("1600353048;1801675120;1600481121;50;0;0;1952541968;1634300517;108;1", gg.TYPE_DWORD)

-- Obtener los resultados
local results = gg.getResults(100000) -- Asegúrate de incluir suficientes resultados

-- Verificar si hay resultados
if #results == 0 then
    gg.alert("‼️REINICIA EL JUEGO.‼️")
    return
end

-- Filtrar resultados con el valor "1"
local ones = {}
for i, v in ipairs(results) do
    if v.value == 1 then
        table.insert(ones, v)
    end
end

-- Verificar si hay al menos 8 resultados con valor "1"
if #ones < 8 then
    gg.alert("‼️Parece que algo salió mal, reinicia el juego.‼️")
    return
end

-- Refinar búsqueda para los valores "1"
gg.refineNumber("1", gg.TYPE_DWORD)
local refinedResults = gg.getResults(100000)

-- Editar el octavo resultado
ones[8].value = 2 -- Cambiar a 0 (o el valor deseado)
gg.setValues({ones[8]})

-- Refinar búsqueda al nuevo valor
gg.refineNumber("2", gg.TYPE_DWORD) -- Ajustar si se cambió a un valor distinto
local updatedResults = gg.getResults(100000)

-- Añadir los resultados actualizados a la lista
gg.addListItems(updatedResults)

-- Limpiar resultados
gg.clearResults()


gg.setVisible(false)
gg.clearResults()
gg.searchNumber("1;44,000;0;0;0;0;0;0;2;20:: 165", gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.editAll("6;1;1,769,292,314;1,852,400,748;1,128,816,487;12,639;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2;1200",gg.TYPE_DWORD)
gg.refineNumber("6",gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.addListItems(r)
gg.clearResults()
gg.sleep(1000)
gg.searchNumber("h1873635F7061636B6167655F3200000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h 1A 42 75 69 6C 64 69 6E 67 5F 48 43 5F 31",gg.TYPE_BYTE)
gg.clearResults()

    gg.alert('🥈FORJAS EN MARCHA🛠️')

end


function SubOpcion1_4()
gg.alert("⚒️Espera⚒️")

-- Script generated by 🥇SEBASTEAM🥇 para MGG
    -- Lua help: http://gameguardian.net/help/
    
local scriptName = [=====[Laboratorios]=====]
local scriptVersion = '1.0.0'
local scriptAuthor = 'SEBASTEAM👺🚬'
local startToast = ''
-- 0 - no check; 1 - check package only, 2 - check package and build
local checkTarget = 0

local targetName = [=====[Mutants]=====]
local targetPkg = 'com.kobojo.mutants'
local targetVersion = [=====[76.646.169933]=====]
local targetBuild = 15169934

-- functions

-- init
gg.require('101.1', 16142)

if startToast ~= '' then startToast = '\n'..startToast end
gg.toast(scriptName..' v'..scriptVersion..' by '..scriptAuthor..startToast)

if checkTarget ~= 0 then
	local info = gg.getTargetInfo()
	local check = false
	local current = false
	if checkTarget >= 1 then
		check = targetPkg
		current = info.packageName
	end
	if checkTarget >= 2 then
		check = check..' '..targetVersion..' ('..targetBuild..')'
		current = current..' '..info.versionName..' ('..info.versionCode..')'
	end
	if check ~= current then
		gg.alert('This script for "'..targetName..'" ['..check..'].\nYou select "'..info.label..'" ['..current..'].\nNow script exit.')
		os.exit()
	end
end
local revert = nil

-- main code

gg.searchNumber("h1873635F7061636B6167655F3100000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3300000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3400000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3500000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3600000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("h1873635F7061636B6167655F3700000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.timeJump("5:0")
gg.sleep(1000)

-- Realizar la búsqueda inicial
gg.searchNumber("1600353048;1801675120;1600481121;50;0;0;1952541968;1634300517;108;1", gg.TYPE_DWORD)

-- Obtener los resultados
local results = gg.getResults(100000) -- Asegúrate de incluir suficientes resultados

-- Verificar si hay resultados
if #results == 0 then
    gg.alert("‼️REINICIA EL JUEGO.‼️")
    return
end

-- Filtrar resultados con el valor "1"
local ones = {}
for i, v in ipairs(results) do
    if v.value == 1 then
        table.insert(ones, v)
    end
end

-- Verificar si hay al menos 8 resultados con valor "1"
if #ones < 8 then
    gg.alert("‼️Parece que algo salió mal, reinicia el juego.‼️")
    return
end

-- Refinar búsqueda para los valores "1"
gg.refineNumber("1", gg.TYPE_DWORD)
local refinedResults = gg.getResults(100000)

-- Editar el octavo resultado
ones[8].value = 2 -- Cambiar a 0 (o el valor deseado)
gg.setValues({ones[8]})

-- Refinar búsqueda al nuevo valor
gg.refineNumber("2", gg.TYPE_DWORD) -- Ajustar si se cambió a un valor distinto
local updatedResults = gg.getResults(100000)

-- Añadir los resultados actualizados a la lista
gg.addListItems(updatedResults)

-- Limpiar resultados
gg.clearResults()

gg.setVisible(false)
gg.clearResults()
gg.searchNumber("1;44,000;0;0;0;0;0;0;2;20::165", gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.editAll("6;1;1,769,292,326;1,852,400,748;1,867,013,991;1,953,067,123;828,337,249;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2;125",gg.TYPE_DWORD)
gg.refineNumber("6",gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.addListItems(r)
gg.clearResults()
gg.sleep(1000)
gg.searchNumber("h1873635F7061636B6167655F3200000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h 26 42 75 69 6c 64 69 6e 67 5f 48 6f 73 70 69 74 61 6c 5f 32",gg.TYPE_BYTE)
gg.clearResults()
gg.alert("💰Disfruta de tus compras🤑")

end


function SubOpcion1_5()

    -- Código de "CAJAS"

    gg.alert("🤑💵PREPARATE PARA COMPRAR💵🤑️")


gg.setVisible(false)     
gg.clearResults()
gg.searchNumber(":Allowed", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()

gg.clearResults()
gg.searchNumber("h28416E6E697665727361727932335F426F785F3235000000106D6174657269616C000000", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(1) 
local valuesToEdit = {} 

for i = 1, #start do

    local target = start[i].address + 0xfffffffffffffff8
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end

-- Apply the values in one go
gg.setValues(valuesToEdit)
gg.clearResults()

gg.setVisible(false)     
gg.clearResults()
gg.searchNumber(":Allowed", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()

gg.clearResults()
gg.searchNumber("h2C416E6E69766572736172795F323031395F426F785F3900106D6174657269616C000000", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(1) 
local valuesToEdit = {} 

for i = 1, #start do

    local target = start[i].address + 0xfffffffffffff578
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end

-- Apply the values in one go
gg.setValues(valuesToEdit)
gg.clearResults()

gg.clearResults()
gg.searchNumber("1,986,289,960;1,601,465,957;1,701,601,635;1,918,985,326", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffbc
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)
gg.clearResults()

gg.clearResults()
gg.searchNumber("1,836,605,296;1,650,422,625;1,650,423,919;6,649,196", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffbc
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)

gg.clearResults()
gg.searchNumber("1,836,605,296;1,650,422,625;1,734,309,999;1,852,138,866", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffbc
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)



gg.clearResults()
gg.searchNumber("1,836,605,296;1,650,422,625;1,918,859,375;25,701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffbc
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)
gg.clearResults()


gg.clearResults()
gg.searchNumber("1,852,727,596;1,919,252,073;2,037,539,187;2,020,565,599", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffc0
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)
gg.clearResults()

gg.clearResults()
gg.searchNumber("1,839,605,296;1,650,422,625;1,650,423,919;6,649,196", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffbc
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)

gg.clearResults()
gg.searchNumber("1,839,605,296;1,650,422,625;1,734,309,999;1,852,138,866", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffbc
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)



gg.clearResults()
gg.searchNumber("1,839,605,296;1,650,422,625;1,918,859,375;25,701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
local start = gg.getResults(100000)
local valuesToEdit = {} 

for i = 1, #start do
    local target = start[i].address + 0xffffffffffffffbc
    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
end
-- Apply the values in one go
gg.setValues(valuesToEdit)
gg.clearResults()

gg.processResume()
gg.timeJump("5:0")
gg.alert("💸Hecho")
end

function SubOpcion1_6() --------------------------------------------------------------------------------------------------------------------ORBES CHETADOS

local subMenu98 = gg.choice({'Orbes especiales🥇','Orbes basicos🥈','【⬅️ Regresar】', }, nil, '⚡Orbes basicos y especiales⚡')

    if subMenu98 == 1 then SubOpcion98_1() end  -- Especiales

    if subMenu98 == 2 then SubOpcion98_2() end  -- Basicos
    
    if subMenu98 == 3 then Shop() end          -- Regresar
    
end

function SubOpcion98_1() -- Especiales

if not mensaje1_1 then
gg.alert([[
*NOTA:
SI ELEGISTE UN ORBE ESPECIAL DE NIVEL 5, DIRIGETE A ESE APARTADO, LUEGO COMPRA EL ORBE QUE ELEGISTE PERO AL NIVEL 3, AUTOMATICAMENTE 
TE SERÁ DADO EL ORBE DE NIVEL 5. SI NO ENTENDISTE, COMUNICATE CONMIGO.]])
mensaje1_1 = true -- Marca que ya se mostró
end


local subMenu97 = gg.choice({
'Absorcion de vida                                        💲500.000',
'Respuesta                                                     💲100.000',
'Herida                                                            💲100.000',
'Escudo                                                           💲500.000',
'Fortalecimiento                                            💲100.000',
'Debilitamiento                                              💲10.000',
'Velocidad                                                      💲1.500',
'【⬅️ Regresar】', }, nil, '⚡Orbes Especiales                                                 💰PRECIO💰')

    if subMenu97 == 1 then SubOpcion97_1() end -- Absorcion de vida
    if subMenu97 == 2 then SubOpcion97_2() end -- Respuesta
    if subMenu97 == 3 then SubOpcion97_3() end -- Herida
    if subMenu97 == 4 then SubOpcion97_4() end -- Escudo
    if subMenu97 == 5 then SubOpcion97_5() end -- Fortalecimiento
    if subMenu97 == 6 then SubOpcion97_6() end -- Debilitamiento
    if subMenu97 == 7 then SubOpcion97_7() end -- Velocidad
    if subMenu97 == 8 then SubOpcion1_6() end          -- Regresar
    end
    
    function SubOpcion97_1()
    
-- Script generado por 🥇SEBASTEAM🥇 para Mutants Genetic Gladiators
    -- Lua help: http://gameguardian.net/help/

-- options
local scriptName = [=====[Script para Mutants 76.646.169933]=====]
local scriptVersion = '3.0.0'
local scriptAuthor = 'SEBASTEAM👺🚬'
local startToast = ''
-- 0 - no check; 1 - check package only, 2 - check package and build
local checkTarget = 0

local targetName = [=====[Mutants]=====]
local targetPkg = 'com.kobojo.mutants'
local targetVersion = [=====[76.646.169933]=====]
local targetBuild = 15169934

-- functions

-- init
gg.require('101.1', 16142)

if startToast ~= '' then startToast = '\n'..startToast end
gg.toast(scriptName..' v'..scriptVersion..' by '..scriptAuthor..startToast)

if checkTarget ~= 0 then
	local info = gg.getTargetInfo()
	local check = false
	local current = false
	if checkTarget >= 1 then
		check = targetPkg
		current = info.packageName
	end
	if checkTarget >= 2 then
		check = check..' '..targetVersion..' ('..targetBuild..')'
		current = current..' '..info.versionName..' ('..info.versionCode..')'
	end
	if check ~= current then
		gg.alert('This script for "'..targetName..'" ['..check..'].\nYou select "'..info.label..'" ['..current..'].\nNow script exit.')
		os.exit()
	end
end
local revert = nil

-- main code
gg.searchNumber(":orb_special_addregenerate_03", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":orb_special_addregenerate_05", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber("350", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("500000", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("‼️PUEDES PROSEGUIR A COMPRAR‼️")
    end

function SubOpcion97_2()

-- Script generado por 🥇SEBASTEAM🥇 para Mutants Genetic Gladiators
    -- Lua help: http://gameguardian.net/help/
    
local scriptName = [=====[Script para Mutants 76.646.169933]=====]
local scriptVersion = '3.0.0'
local scriptAuthor = 'SEBASTEAM👺🚬'
local startToast = ''
-- 0 - no check; 1 - check package only, 2 - check package and build
local checkTarget = 0

local targetName = [=====[Mutants]=====]
local targetPkg = 'com.kobojo.mutants'
local targetVersion = [=====[76.646.169933]=====]
local targetBuild = 15169934

-- functions

-- init
gg.require('101.1', 16142)

if startToast ~= '' then startToast = '\n'..startToast end
gg.toast(scriptName..' v'..scriptVersion..' by '..scriptAuthor..startToast)

if checkTarget ~= 0 then
	local info = gg.getTargetInfo()
	local check = false
	local current = false
	if checkTarget >= 1 then
		check = targetPkg
		current = info.packageName
	end
	if checkTarget >= 2 then
		check = check..' '..targetVersion..' ('..targetBuild..')'
		current = current..' '..info.versionName..' ('..info.versionCode..')'
	end
	if check ~= current then
		gg.alert('This script for "'..targetName..'" ['..check..'].\nYou select "'..info.label..'" ['..current..'].\nNow script exit.')
		os.exit()
	end
end
local revert = nil

-- main code
gg.searchNumber(":orb_special_addretaliate_03", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":orb_special_addretaliate_05", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber("350", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("‼️PUEDES PROSEGUIR A COMPRAR‼️")

end

function SubOpcion97_3()

-- Script generado por 🥇SEBASTEAM🥇 para Mutants Genetic Gladiators
    -- Lua help: http://gameguardian.net/help/
    
local scriptName = [=====[Script para Mutants 76.646.169933]=====]
local scriptVersion = '3.0.0'
local scriptAuthor = 'SEBASTEAM👺🚬'
local startToast = ''
-- 0 - no check; 1 - check package only, 2 - check package and build
local checkTarget = 0

local targetName = [=====[Mutants]=====]
local targetPkg = 'com.kobojo.mutants'
local targetVersion = [=====[76.646.169933]=====]
local targetBuild = 15169934

-- functions

-- init
gg.require('101.1', 16142)

if startToast ~= '' then startToast = '\n'..startToast end
gg.toast(scriptName..' v'..scriptVersion..' by '..scriptAuthor..startToast)

if checkTarget ~= 0 then
	local info = gg.getTargetInfo()
	local check = false
	local current = false
	if checkTarget >= 1 then
		check = targetPkg
		current = info.packageName
	end
	if checkTarget >= 2 then
		check = check..' '..targetVersion..' ('..targetBuild..')'
		current = current..' '..info.versionName..' ('..info.versionCode..')'
	end
	if check ~= current then
		gg.alert('This script for "'..targetName..'" ['..check..'].\nYou select "'..info.label..'" ['..current..'].\nNow script exit.')
		os.exit()
	end
end
local revert = nil

-- main code
gg.searchNumber(":orb_special_addslash_03", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":orb_special_addslash_05", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber("350", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("‼️PUEDES PROSEGUIR A COMPRAR‼️")

end

function SubOpcion97_4()

-- Script generado por 🥇SEBASTEAM🥇 para Mutants Genetic Gladiators
    -- Lua help: http://gameguardian.net/help/
    
local scriptName = [=====[Script para Mutants 76.646.169933]=====]
local scriptVersion = '3.0.0'
local scriptAuthor = 'SEBASTEAM👺🚬'
local startToast = ''
-- 0 - no check; 1 - check package only, 2 - check package and build
local checkTarget = 0

local targetName = [=====[Mutants]=====]
local targetPkg = 'com.kobojo.mutants'
local targetVersion = [=====[76.646.169933]=====]
local targetBuild = 15169934

-- functions

-- init
gg.require('101.1', 16142)

if startToast ~= '' then startToast = '\n'..startToast end
gg.toast(scriptName..' v'..scriptVersion..' by '..scriptAuthor..startToast)

if checkTarget ~= 0 then
	local info = gg.getTargetInfo()
	local check = false
	local current = false
	if checkTarget >= 1 then
		check = targetPkg
		current = info.packageName
	end
	if checkTarget >= 2 then
		check = check..' '..targetVersion..' ('..targetBuild..')'
		current = current..' '..info.versionName..' ('..info.versionCode..')'
	end
	if check ~= current then
		gg.alert('This script for "'..targetName..'" ['..check..'].\nYou select "'..info.label..'" ['..current..'].\nNow script exit.')
		os.exit()
	end
end
local revert = nil

-- main code
gg.searchNumber(":orb_special_addshield_03", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":orb_special_addshield_05", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber("350", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("500000", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("‼️PUEDES PROSEGUIR A COMPRAR‼️")

end

function SubOpcion97_5()

-- Script generado por 🥇SEBASTEAM🥇 para Mutants Genetic Gladiators
    -- Lua help: http://gameguardian.net/help/
    
local scriptName = [=====[Script para Mutants 76.646.169933]=====]
local scriptVersion = '3.0.0'
local scriptAuthor = 'SEBASTEAM👺🚬'
local startToast = ''
-- 0 - no check; 1 - check package only, 2 - check package and build
local checkTarget = 0

local targetName = [=====[Mutants]=====]
local targetPkg = 'com.kobojo.mutants'
local targetVersion = [=====[76.646.169933]=====]
local targetBuild = 15169934

-- functions

-- init
gg.require('101.1', 16142)

if startToast ~= '' then startToast = '\n'..startToast end
gg.toast(scriptName..' v'..scriptVersion..' by '..scriptAuthor..startToast)

if checkTarget ~= 0 then
	local info = gg.getTargetInfo()
	local check = false
	local current = false
	if checkTarget >= 1 then
		check = targetPkg
		current = info.packageName
	end
	if checkTarget >= 2 then
		check = check..' '..targetVersion..' ('..targetBuild..')'
		current = current..' '..info.versionName..' ('..info.versionCode..')'
	end
	if check ~= current then
		gg.alert('This script for "'..targetName..'" ['..check..'].\nYou select "'..info.label..'" ['..current..'].\nNow script exit.')
		os.exit()
	end
end
local revert = nil

-- main code
gg.searchNumber(":orb_special_addstrengthen_03", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":orb_special_addstrengthen_05", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber("350", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("‼️PUEDES PROSEGUIR A COMPRAR‼️")

end

function SubOpcion97_6()

-- Script generado por 🥇SEBASTEAM🥇 para Mutants Genetic Gladiators
    -- Lua help: http://gameguardian.net/help/
    
local scriptName = [=====[Script para Mutants 76.646.169933]=====]
local scriptVersion = '3.0.0'
local scriptAuthor = 'SEBASTEAM👺🚬'
local startToast = ''
-- 0 - no check; 1 - check package only, 2 - check package and build
local checkTarget = 0

local targetName = [=====[Mutants]=====]
local targetPkg = 'com.kobojo.mutants'
local targetVersion = [=====[76.646.169933]=====]
local targetBuild = 15169934

-- functions

-- init
gg.require('101.1', 16142)

if startToast ~= '' then startToast = '\n'..startToast end
gg.toast(scriptName..' v'..scriptVersion..' by '..scriptAuthor..startToast)

if checkTarget ~= 0 then
	local info = gg.getTargetInfo()
	local check = false
	local current = false
	if checkTarget >= 1 then
		check = targetPkg
		current = info.packageName
	end
	if checkTarget >= 2 then
		check = check..' '..targetVersion..' ('..targetBuild..')'
		current = current..' '..info.versionName..' ('..info.versionCode..')'
	end
	if check ~= current then
		gg.alert('This script for "'..targetName..'" ['..check..'].\nYou select "'..info.label..'" ['..current..'].\nNow script exit.')
		os.exit()
	end
end
local revert = nil

-- main code
gg.searchNumber(":orb_special_addweaken_03", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":orb_special_addweaken_05", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber("350", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("10000", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("‼️PUEDES PROSEGUIR A COMPRAR‼️")

end

function SubOpcion97_7()

-- Script generado por 🥇SEBASTEAM🥇 para Mutants Genetic Gladiators
    -- Lua help: http://gameguardian.net/help/
gg.setVisible(false)
gg.clearResults()
gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2A 62 75 6E 64 6C 65 5F 6F 72 62 73 5F 73 70 65 65 64 5F 33 5F 33 00 00", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 2A 62 75 6E 64 6C 65 5F 6F 72 62 73 5F 73 70 65 65 64 5F 35 5F 31 00 00",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":speed_03", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":speed_05",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber("400", gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.editAll("1500",gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber(":Allowed", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.alert("‼️DIRIGETE A OFERTAS‼️")

end


    function SubOpcion98_2()
    
    if not mensaje1_2 then
    gg.alert("")
mensaje1_2 = true -- Marca que ya se mostró
end

    local subMenu96 = gg.choice({
'Pack de Orbes LVL 6 (Habilidades)                💲950',
'Pack de Orbes LVL 5 (Habilidades)                💲900',
'Pack de Orbes LVL 6 (VIDA, ATAQUE)            💲500',
'Orbe de Experiencia LVL 6                          💲100.000',
'【⬅️ Regresar】', }, nil, '⚡Orbes Basicos                                                         💰PRECIO💰')
    
    if subMenu96 == 1 then SubOpcion96_1() end -- Orbs LVL6
    if subMenu96 == 2 then SubOpcion96_2() end -- Orbs LVL5
    if subMenu96 == 3 then SubOpcion96_3() end -- VIDA, ATAQUE, CRITICO (Y OTROS)
    if subMenu96 == 4 then SubOpcion96_4() end -- Experiencia
    if subMenu96 == 5 then SubOpcion1_6() end          -- Regresar
    end
    
    function SubOpcion96_1()
gg.alert("🔴Debes estar fuera de la tienda para que funcione correctamente.")	
gg.setVisible(false)



gg.clearResults()

gg.searchNumber(":Allowed", gg.TYPE_BYTE)

r = gg.getResults(100000)

gg.editAll("0", gg.TYPE_BYTE)

gg.clearResults()



gg.searchNumber(":(bundle_orbs_basic_06", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

gg.processResume()



local t = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)

gg.addListItems(t)

t = nil



gg.clearResults()



local copy = false

local t = gg.getListItems()

if not copy then gg.removeListItems(t) end

for i, v in ipairs(t) do

    v.address = v.address + 0xffffffffffffffc8

    if copy then v.name = v.name..' #2' end

end

gg.addListItems(t)

t = nil

copy = nil



revert = gg.getListItems()

local t = gg.getListItems()

for i, v in ipairs(t) do

    if v.flags == gg.TYPE_BYTE then

        -- Cambiar el valor a "1" y congelarlo

        v.value = "1"

        v.freeze = true  -- Congelar el valor en "1"

        v.freezeType = gg.FREEZE_NORMAL

    end

end

gg.addListItems(t)

t = nil
gg.alert("‼️Dirigete al apartado de Especiales.‼️")
    end

function SubOpcion96_2()
gg.alert("🔴Debes estar fuera de la tienda para que funcione correctamente.")	
gg.setVisible(false)

gg.clearResults()
gg.searchNumber(":Allowed", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":(bundle_orbs_basic_05", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()

local t = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil

gg.clearResults()

local copy = false
local t = gg.getListItems()
if not copy then gg.removeListItems(t) end
for i, v in ipairs(t) do
    v.address = v.address + 0xffffffffffffffc8
    if copy then v.name = v.name..' #2' end
end
gg.addListItems(t)
t = nil
copy = nil

revert = gg.getListItems()
local t = gg.getListItems()
for i, v in ipairs(t) do
    if v.flags == gg.TYPE_BYTE then
        -- Cambiar el valor a "1" y congelarlo
        v.value = "1"
        v.freeze = true  -- Congelar el valor en "1"
        v.freezeType = gg.FREEZE_NORMAL
    end
end
gg.addListItems(t)
t = nil
gg.alert("‼️Dirigete al apartado de Especiales.‼️")	
end


    function SubOpcion96_3() -- Ataque, Vida y CRITICO
gg.alert("🔴Debes estar fuera de la tienda para que funcione correctamente.")	
gg.setVisible(false)

gg.clearResults()
gg.searchNumber(":Allowed", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":&bundle_orbs_core_06", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()

local t = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
gg.addListItems(t)
t = nil


gg.clearResults()

local copy = false
local t = gg.getListItems()
if not copy then gg.removeListItems(t) end
for i, v in ipairs(t) do
	v.address = v.address + 0xffffffffffffffc8
	if copy then v.name = v.name..' #2' end
end
gg.addListItems(t)
t = nil
copy = nil


revert = gg.getListItems()
local t = gg.getListItems()
for i, v in ipairs(t) do
	if v.flags == gg.TYPE_BYTE then
		v.value = "1"
		v.freeze = true
		v.freezeType = gg.FREEZE_NORMAL
	end
end
gg.addListItems(t)
t = nil
gg.alert("‼️Dirigete al apartado de Especiales.‼️")
    end
    
    function SubOpcion96_4() -- Experiencia
    
    local scriptName = [=====[Script para Mutants 76.646.169933]=====]
local scriptVersion = '1.0.0'
local scriptAuthor = 'SEBASTEAM👺🚬'
local startToast = ''
-- 0 - no check; 1 - check package only, 2 - check package and build
local checkTarget = 0

local targetName = [=====[Mutants]=====]
local targetPkg = 'com.kobojo.mutants'
local targetVersion = [=====[76.646.169933]=====]
local targetBuild = 15169934

-- functions

-- init
gg.require('101.1', 16142)

if startToast ~= '' then startToast = '\n'..startToast end
gg.toast(scriptName..' v'..scriptVersion..' by '..scriptAuthor..startToast)

if checkTarget ~= 0 then
	local info = gg.getTargetInfo()
	local check = false
	local current = false
	if checkTarget >= 1 then
		check = targetPkg
		current = info.packageName
	end
	if checkTarget >= 2 then
		check = check..' '..targetVersion..' ('..targetBuild..')'
		current = current..' '..info.versionName..' ('..info.versionCode..')'
	end
	if check ~= current then
		gg.alert('This script for "'..targetName..'" ['..check..'].\nYou select "'..info.label..'" ['..current..'].\nNow script exit.')
		os.exit()
	end
end
local revert = nil

-- main code
gg.searchNumber(":orb_basic_xp_03", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":orb_basic_xp_06", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber("130", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("‼️Puedes proseguir a comprar‼️")
    
end

function SubOpcion1_7()
gg.alert("🛠️Espera, trabajando.🛠️")
gg.searchNumber(":Allowed", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_BYTE)
gg.processResume()
gg.clearResults()
gg.alert("‼️⚡Compra las ofertas que quieres, y cuantas veces quieras.⚡‼️")
end
    gg.sleep(100)


function SubOpcion1_8()
end

function SubOpcion1_9()
end
	
-- 1) Primero, al principio de tu archivo:
local function ejecutarScriptDesdeURL(url)
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



function Mutantes()

-- Submenú para "Hacks De Mutantes"
local subMenu2 = gg.choice({'🌩️Reactores','🐣Auto Hibridar','⬅️ Regresar al menú principal'}, nil, 'Script Vip🌟')


if subMenu2 == 1 then SubOpcion2_1() end  -- Reactores

    if subMenu2 == 2 then SubOpcion2_2() end  -- AutoHibridar

    if subMenu2 == 3 then MENU() end          -- Regresa al menú principal

end

function SubOpcion2_1() -- REACTORES


mainmenu = gg.choice({'                              ♻️RESTAURACIÓN♻️                                 ','[☀️] ➣Tropical','[👩] ➣Girl Power','[🌩] ➣️Mutants Super-Heroes','[🗡️] ➣Gothic','[🎌] ➣Japan','[🚀] ➣Space War','[⚠️] ➣Mutants-Super-Villains','[💀] ➣Big Boss','[🌱] ➣Photosynthesis','[🌩️] ➣God Of The Arena','[😈] ➣Elements Squad','[🧟] ➣Time Soldiers','[💪] ➣Lucha Libre','[🌑] ➣Dark Fantasy','[🎙] ➣️Music','[🧟‍♂️] ➣Western','[💪] ➣Movies','[🤖] ➣The Steampunk','[🕺] ➣Bloody Games','⬅️ Regresar'},   nil, 'SCRIPT VIP🌟')

if mainmenu== 1 then Restaurar() end
if mainmenu== 2 then Beach() end
if mainmenu== 3 then Girl() end
if mainmenu== 4 then Hero() end
if mainmenu== 5 then Gothic() end
if mainmenu== 6 then Japan() end
if mainmenu== 7 then War() end
if mainmenu== 8 then Villains() end
if mainmenu== 9 then BigBoss() end
if mainmenu== 10 then Photo() end
if mainmenu== 11 then Area() end
if mainmenu== 12 then Elements() end
if mainmenu== 13 then Time() end
if mainmenu== 14 then Lucha() end
if mainmenu== 15 then Dark() end
if mainmenu== 16 then Music() end
if mainmenu== 17 then West() end
if mainmenu== 18 then Movies() end
if mainmenu== 19 then Punk() end
if mainmenu== 20 then Break() end
if mainmenu == 21 then Mutantes() end    -- Regresa
end	
function Restaurar()

    if savedValues == nil then

        gg.alert("⚠️No se pudo restaurar, falta de datos, por favor reinicia el juego.")

        return

    end



    for i, result in ipairs(savedValues) do

        gg.setValues(result)

        gg.clearResults()

    end



    gg.toast("Restaurados.")

end

function Beach()
end

function Girl() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end
gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h086769726C0000000000000000000000000000000000000001000000650400001E67616368615F7061636B5F6769726C0000000000000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AA_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CB_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE) r = gg.getResults(100000)  gg.editAll(":Specimen_CD_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FB_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FB_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CF_01",gg.TYPE_BYTE)
gg.clearResults()
end

function Hero() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll("h0C6865726F65730000000000000000000000000000000000020000003A0700002267616368615F7061636B5F6865726F6573000000000000", gg.TYPE_BYTE)
gg.clearResults()
gg.search(":Specimen_FE_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FC_02", gg.TYPE_BYTE)
gg.clearResults()

gg.search(":Specimen_EE_07", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AE_01", gg.TYPE_BYTE)
gg.clearResults()

gg.search(":Specimen_BB_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BB_01", gg.TYPE_BYTE)
gg.clearResults()

gg.search(":Specimen_AB_07", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CA_01", gg.TYPE_BYTE)
gg.clearResults()

gg.search(":Specimen_AF_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FA_01", gg.TYPE_BYTE)
gg.clearResults()

gg.search(":Specimen_CA_11", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_EF_02", gg.TYPE_BYTE)
gg.clearResults()
end

function Gothic() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll("h0C676F746869630000000000000000000000000000000000010000007E0400002267616368615F7061636B5F676F74686963000000000000", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_CE_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_BF_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_DC_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_FD_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_FD_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_DC_03", gg.TYPE_BYTE)
gg.clearResults()

end

function Japan() 
if savedValues == nil then saveOriginalValues() end
gg.setVisible(false)
gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h0A6A6170616E00000000000000000000000000000000000003000000FC0800002067616368615F7061636B5F6A6170616E00000000000000", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_DF_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CC_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CB_02", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_FD_03", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CC_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_BA_02", gg.TYPE_BYTE)
gg.clearResults()
end

function War() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end
gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h10737461727761727300000000000000000000000000000003000000FC0800002667616368615F7061636B5F737461727761727300000000", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_AF_04", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CC_03", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CD_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_EC_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_BC_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_BF_04", gg.TYPE_BYTE)
gg.clearResults()
end

function Villains() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end
gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h1076696C6C61696E7300000000000000000000000000000003000000FC0800002667616368615F7061636B5F76696C6C61696E7300000000", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_FC_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_DA_02", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CB_04", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_FB_03", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CC_02", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_DC_02", gg.TYPE_BYTE)
gg.clearResults()
end

function BigBoss() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end
gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h126761636861626F7373000000000000000000000000000003000000FC0800002867616368615F7061636B5F6761636861626F7373000000", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_FF_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_D_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_FB_03", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_DB_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_EA_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_AB_05", gg.TYPE_BYTE)
gg.clearResults()

end

function Photo() 
gg.setVisible(false)
gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000 ",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_BB_02", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_DC_08", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_AF_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_DE_09", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_CA_06", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_DF_12", gg.TYPE_BYTE)
gg.clearResults()
end

function Area() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll("h126F6C796D7069616E73000000000000000000000000000003000000FC0800002867616368615F7061636B5F6F6C796D7069616E73000000",gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_CC_04", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_AC_01", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_BC_02", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_BB_03", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_CE_03", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_EC_06", gg.TYPE_BYTE)

gg.clearResults()
end

function Elements() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll("h10656C656D656E747300000000000000000000000000000003000000FC0800002667616368615F7061636B5F656C656D656E747300000000",gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_EF_01", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_EB_02", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_BD_04", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_EB_05", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_DF_04", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_EB_06", gg.TYPE_BYTE)

gg.clearResults()
end

function Time() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll("h10736F6C646965727300000000000000000000000000000003000000FC0800002667616368615F7061636B5F736F6C646965727300000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_AB_04", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_CF_02", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_BC_04", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_AD_05", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_CD_06", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_BD_07", gg.TYPE_BYTE)
gg.clearResults()

end

function Lucha() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll("h0A6C7563686100000000000000000000000000000000000004000000C40900002067616368615F7061636B5F6C7563686100000000000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_CF_03", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_DE_04", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_DC_05", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_FE_04", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_BE_05", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_AC_07", gg.TYPE_BYTE)
gg.clearResults()
end

function Dark() 
if savedValues == nil then saveOriginalValues() end
gg.setVisible(false)
gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h0A6A6170616E00000000000000000000000000000000000003000000FC0800002067616368615F7061636B5F6A6170616E00000000000000", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_DF_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CC_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CB_02", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_FD_03", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CC_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_BA_02", gg.TYPE_BYTE)
gg.clearResults()
end

function West() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll("h0E7765737465726E0000000000000000000000000000000004000000C40900002467616368615F7061635F7765737465726E0000000000", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_FF_06", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_FC_07", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_AA_06", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_DB_04", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_CF_06", gg.TYPE_BYTE)

gg.clearResults()
gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_BF_10", gg.TYPE_BYTE)

gg.clearResults()
end

function Music() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h0A6D7573696300000000000000000000000000000000000004000000C40900002067616368615F7061636B5F6D7573696300000000000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_ED_03", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AA_03",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_EB_04", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BF_06",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CB_03", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_EE_04",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BD_03", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FB_05",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CC_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_DE_05",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_FA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_DA_09",gg.TYPE_BYTE)
gg.clearResults()
end

function Movies() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h0C6D6F76696573000000000000000000000000000000000003000000FC0800002267616368615F7061636B5F6D6F76696573000000000000 ",gg.TYPE_BYTE)  
gg.clearResults()
gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_ED_03", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_EB_04", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_CB_03", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_BD_03", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_CC_02", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_FA_06", gg.TYPE_BYTE)
gg.clearResults()
end
function Punk()
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)   gg.editAll("h12737465616D70756E6B0000000000000000000000000000010000007E0400002867616368615F7061636B5F737465616D70756E6B000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_BF_02", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_EC_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_AB_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_AB_01", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_AC_02", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_AD_01", gg.TYPE_BYTE)
gg.clearResults()
end

function Break() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h106F6C796D7069637300000000000000000000000000000005000000C40900002667616368615F7061636B5F6F6C796D7069637300000000 ",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_FE_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_FA_08", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_EE_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_CA_02", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_BB_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_FD_06", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AB_07", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_CA_07", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_AF_08", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_CA_08", gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber(":Specimen_CA_11", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll(":Specimen_CA_14", gg.TYPE_BYTE)
gg.clearResults()

end

function SubOpcion2_2()
  local subOpciones = {
    "📜 MUTANTES META (2025/04/19)",
    "🧬 MUTANTES MONO-GEN",
    "🔙 Volver"
  }

  local eleccion = gg.choice(subOpciones, nil, "📂 𝕋𝕆𝔻𝕆𝕊 𝕃𝕆𝕊 𝕄𝕌𝕋𝔸ℕ𝕋𝔼𝕊")

  if eleccion == 1 then
	gg.alert("Implementando.🔨")
		
  elseif eleccion == 2 then
    gg.toast("📥 Descargando MUTANTES MONO-GEN...")
    local url2 = "https://raw.githubusercontent.com/iiSebastxX/SERVER/refs/heads/main/monogen.lua"
    ejecutarScriptDesdeURL(url2)

 elseif eleccion == 3 then
    Mutantes()  -- Llama al menú anterior

  end
end

-- Función principal para configurar el Speed Hack
function SpeedHack()
    -- Definir rango permitido
    local rango_min = 0.1 -- Velocidad mínima
    local rango_max = 100000 -- Velocidad máxima

    -- Pedir al usuario que ingrese un valor
    local velocidad = gg.prompt(
        {"🛠️Ingrese la velocidad deseada🛠️ (‼️ENTRE " .. rango_min .. " y " .. rango_max .. "‼️) Es ideal para girar rápido en la sala jackpot y ejecutar reactores.⚡:"},
        {1.0}, -- Valor predeterminado
        {"number"} -- Tipo de entrada
    )

    -- Validar si el usuario canceló
    if velocidad == nil then
        gg.alert("‼️CANCELADO‼️")
        return
    end

    -- Convertir el valor ingresado a número
    local velocidad_num = tonumber(velocidad[1])

    -- Validar el rango
    if velocidad_num == nil or velocidad_num < rango_min or velocidad_num > rango_max then
        gg.alert("⚠️ Valor NO válido, intenta nuevamente. ⚠️")
        SpeedHack() -- Reiniciar el script
    else
        gg.setSpeed(velocidad_num)
        gg.alert("✅ ¡Speed Hack configurado a ➡️ x" .. velocidad_num .. "!")
    end
    end
    
    -- Ejecutar la función principal




function SALIR()
    gg.setVisible(true)

os.exit()
end

while true do
    if gg.isVisible(true) then
        activa = 1 
        gg.setVisible(false)
        gg.toast('By SebasTeam👺')
    end

    if activa == 1 then MENU() end
end
