activa = 1

-- Variable global para guardar los valores originales

local savedValues = nil
-- Guardar los valores originales
function saveOriginalValues()
    savedValues = {}
    gg.clearResults()


    gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)
    savedValues[1] = gg.getResults(100000)
    gg.clearResults()
    gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)
    savedValues[2] = gg.getResults(100000)
    gg.clearResults()
    gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)
    savedValues[3] = gg.getResults(100000)
    gg.clearResults()
    gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)
    savedValues[4] = gg.getResults(100000)
    gg.clearResults()
    gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)
    savedValues[5] = gg.getResults(100000)
    gg.clearResults()
    gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)
    savedValues[6] = gg.getResults(100000)
    gg.clearResults()
    gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)
    savedValues[7] = gg.getResults(100000)
    gg.clearResults()
end


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

    if subMenu1 == 7 then SubOpcion1_7() end  -- 
    
    if subMenu1 == 8 then SubOpcion1_8() end  --
    
    if subMenu1 == 9 then SubOpcion1_9() end  -- Ofertas infinitas

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
'Pack de Orbes LVL 6 (VIDA, ATAQUE)            💲500',
'Orbe de Experiencia LVL 6                          💲100.000',
'【⬅️ Regresar】', }, nil, '⚡Orbes Basicos                                                         💰PRECIO💰')
    
    if subMenu96 == 1 then SubOpcion96_1() end -- Orbs LVL6
    if subMenu96 == 2 then SubOpcion96_2() end -- VIDA, ATAQUE, CRITICO (Y OTROS)
    if subMenu96 == 3 then SubOpcion96_3() end -- Experiencia
    if subMenu96 == 4 then SubOpcion1_6() end          -- Regresar
    end
    
    function SubOpcion96_1()
    gg.clearResults()
gg.searchNumber(":Allowed", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 62 75 6e 64 6c 65", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 2c 62 75 6e 64 6c 65",gg.TYPE_BYTE)
gg.alert("‼️Dirigete al apartado de Especiales.‼️")
    end
    
    function SubOpcion96_2() -- Ataque, Vida y CRITICO
    gg.clearResults()
gg.searchNumber(":Allowed", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()



                 



-- This script was created by: SebasTeam
-- Script Programmer to Help: https://www.facebook.com/alberto.gonzales.fum/




gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 61 6e 6e 69 76 65 72 73 61 72 79", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 61 6e 6e 69 76 65 72 73 61 72 79",gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 61 6e 6e 69 76 65 72 73 61 72 79", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 26 61 6e 6e 69 76 65 72 73 61 72 79",gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 61 6e 6e 69 76 65 72 73 61 72 79", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 2c 61 6e 6e 69 76 65 72 73 61 72 79",gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 61 6e 6e 69 76 65 72 73 61 72 79", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 22 61 6e 6e 69 76 65 72 73 61 72 79",gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2a 61 6e 6e 69 76 65 72 73 61 72 79", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 2a 61 6e 6e 69 76 65 72 73 61 72 79",gg.TYPE_BYTE)
gg.clearResults()


gg.clearResults()
gg.searchNumber("1;10,000;0;0;0;0;0;0;2;5::165", gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.editAll("6;3;1,651,666,728;1,701,868,383;1,818,323,299;1,701,868,383;811,557,989;53;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2;1500",gg.TYPE_DWORD)
gg.refineNumber("6",gg.TYPE_DWORD)
r = gg.getResults(100000)
gg.addListItems(r)
gg.clearResults()
gg.sleep(1000)
gg.searchNumber("h1873635F7061636B6167655F3100000000000000000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h 2a 62 75 6e 64 6c 65 5f 6f 72 62 73 5f 73 70 65 65 64 5f 35 5f 31",gg.TYPE_BYTE)
gg.clearResults()




-- This script was created by: SebasTeam
-- Script Programmer to Help: https://www.facebook.com/alberto.gonzales.fum/








gg.clearResults()
gg.searchNumber(":Allowed", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("0",gg.TYPE_BYTE)
gg.clearResults()


gg.clearResults()
gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 62 75 6e 64 6c 65", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 26 62 75 6e 64 6c 65",gg.TYPE_BYTE)
gg.clearResults()

gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2a 62 75 6e 64 6c 65", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 2a 62 75 6e 64 6c 65",gg.TYPE_BYTE)
gg.clearResults()
    end
    
    function SubOpcion96_3() -- Experiencia
    
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

function SubOpcion1_8()
end
    gg.sleep(100)


function SubOpcion1_9()

gg.alert("🛠️Espera, trabajando.🛠️")
-- Script generado por 🥇SEBASTEAM🥇 para Mutants Genetic Gladiators
    -- Lua help: http://gameguardian.net/help/

-- options
local scriptName = [=====[Script for Mutants 76.646.169933]=====]
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
gg.searchNumber(":Allowed", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_BYTE)
gg.processResume()
gg.clearResults()
gg.alert("‼️⚡Compra las ofertas que quieres, y cuantas veces quieras.⚡‼️")

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


mainmenu = gg.choice({'                              ♻️RESTAURACIÓN♻️                                 ','[🌱] ➣Photosynthesis','[👩] ➣Girl Power','[🌩] ➣️Mutants Super-Heroes','[🗡️] ➣Gothic','[🎌] ➣Japan','[🚀] ➣Space War','[⚠️] ➣Mutants-Super-Villains','[💀] ➣Big Boss','[💪] ➣Movies','[🌩️] ➣God Of The Arena','[😈] ➣Elements Squad','[🧟] ➣Time Soldiers','[💪] ➣Lucha Libre','[🌑] ➣Dark Fantasy','[🎙] ➣️Music','[🧟‍♂️] ➣Western','[☀️] ➣Tropical','[🤖] ➣The Steampunk','[🕺] ➣Bloody Games','⬅️ Regresar'},   nill, 'SCRIPT VIP🌟')

if mainmenu== 1 then Restaurar() end
if mainmenu== 2 then Photo() end
if mainmenu== 3 then Girl() end
if mainmenu== 4 then Hero() end
if mainmenu== 5 then Gothic() end
if mainmenu== 6 then Japan() end
if mainmenu== 7 then War() end
if mainmenu== 8 then Villains() end
if mainmenu== 9 then BigBoss() end
if mainmenu== 10 then Movies() end
if mainmenu== 11 then Area() end
if mainmenu== 12 then Elements() end
if mainmenu== 13 then Time() end
if mainmenu== 14 then Lucha() end
if mainmenu== 15 then Dark() end
if mainmenu== 16 then Music() end
if mainmenu== 17 then West() end
if mainmenu== 18 then Beach() end
if mainmenu== 19 then Punk() end
if mainmenu== 20 then Break() end
if mainmenu == 21 then Mutantes() end          -- Regresa
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

function Photo()
end

function Girl() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end
gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h086769726C0000000000000000000000000000000000000001000000650400001E67616368615F7061636B5F6769726C0000000000000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AA_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CB_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE) r = gg.getResults(100000)  gg.editAll(":Specimen_CD_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FB_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FB_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CF_01",gg.TYPE_BYTE)
gg.clearResults()
end

function Hero() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll("h0C6865726F65730000000000000000000000000000000000020000003A0700002267616368615F7061636B5F6865726F6573000000000000", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FC_02", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AE_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BB_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CA_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FA_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_EF_02", gg.TYPE_BYTE)
gg.clearResults()
end

function Gothic() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)  
r = gg.getResults(100000)  
gg.editAll("h0C676F746869630000000000000000000000000000000000010000007E0400002267616368615F7061636B5F676F74686963000000000000", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CE_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BF_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_DC_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FD_01", gg.TYPE_BYTE)



gg.clearResults()



gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FD_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_DC_03", gg.TYPE_BYTE)
gg.clearResults()
end

function Japan() 
if savedValues == nil then saveOriginalValues() end
gg.setVisible(false)
gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h0A6A6170616E00000000000000000000000000000000000003000000FC0800002067616368615F7061636B5F6A6170616E00000000000000", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_DF_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CC_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CB_02", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_FD_03", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CC_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_BA_02", gg.TYPE_BYTE)
gg.clearResults()
end

function War() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end
gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h10737461727761727300000000000000000000000000000003000000FC0800002667616368615F7061636B5F737461727761727300000000", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_AF_04", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CC_03", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CD_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_EC_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_BC_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_BF_04", gg.TYPE_BYTE)
gg.clearResults()
end

function Villains() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end
gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h1076696C6C61696E7300000000000000000000000000000003000000FC0800002667616368615F7061636B5F76696C6C61696E7300000000", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_FC_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_DA_02", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CB_04", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_FB_03", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_CC_02", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_DC_02", gg.TYPE_BYTE)
gg.clearResults()
end

function BigBoss() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end
gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll("h126761636861626F7373000000000000000000000000000003000000FC0800002867616368615F7061636B5F6761636861626F7373000000", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_FF_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_D_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_FB_03", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_DB_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_EA_01", gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)
r = gg.getResults(100000)
gg.editAll(":Specimen_AB_05", gg.TYPE_BYTE)
gg.clearResults()
end

function Movies() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h0C6D6F76696573000000000000000000000000000000000003000000FC0800002267616368615F7061636B5F6D6F76696573000000000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_ED_03",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_EB_04",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CB_03",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BD_03",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CC_02",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FA_06",gg.TYPE_BYTE)
gg.clearResults()
end

function Area() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h126F6C796D7069616E73000000000000000000000000000003000000FC0800002867616368615F7061636B5F6F6C796D7069616E73000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CC_04",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AC_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BC_02",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BB_03",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CE_03",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_EC_06",gg.TYPE_BYTE)
gg.clearResults()
end

function Elements() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h10656C656D656E747300000000000000000000000000000003000000FC0800002667616368615F7061636B5F656C656D656E747300000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_EF_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_EB_02",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BD_04",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_EB_05",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_DF_04",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_EB_06",gg.TYPE_BYTE)
gg.clearResults()
end

function Time() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h10736F6C646965727300000000000000000000000000000003000000FC0800002667616368615F7061636B5F736F6C646965727300000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AB_04",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CF_02",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BC_04",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AD_05",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CD_06",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BD_07",gg.TYPE_BYTE)
gg.clearResults()
end

function Lucha() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h0A6C7563686100000000000000000000000000000000000004000000C40900002067616368615F7061636B5F6C7563686100000000000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CF_03",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_DE_04",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_DC_05",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FE_04",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BE_05",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AC_07",gg.TYPE_BYTE)
gg.clearResults()
end

function Dark() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h0E66616E746173790000000000000000000000000000000004000000C40900002467616368615F7061636B5F66616E746173790000000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FC_04",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FC_05",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_DB_06",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AC_03",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BD_05",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FC_09",gg.TYPE_BYTE)
gg.clearResults()
end

function West() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h0E7765737465726E0000000000000000000000000000000004000000C40900002467616368615F7061636B5F7765737465726E0000000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FF_06",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FC_07",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AA_06",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_DB_04",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CF_06",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BF_10",gg.TYPE_BYTE)
gg.clearResults()
end

function Music() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h0A6D7573696300000000000000000000000000000000000004000000C40900002067616368615F7061636B5F6D7573696300000000000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AA_03",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BF_06",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_EE_04",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FB_05",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_DE_05",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_DA_09",gg.TYPE_BYTE)
gg.clearResults()
end

function Beach() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000 ",gg.TYPE_BYTE)  
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FE_08",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_EE_07",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BB_08",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AB_07",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AF_08",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CA_11",gg.TYPE_BYTE)
gg.clearResults()
end
function Punk()
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)   gg.editAll("h12737465616D70756E6B0000000000000000000000000000010000007E0400002867616368615F7061636B5F737465616D70756E6B000000",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_BF_02",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_EC_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AB_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AB_01",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AC_02",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_AD_01",gg.TYPE_BYTE)
gg.clearResults()
end

function Break() 
gg.setVisible(false)
if savedValues == nil then saveOriginalValues() end

gg.clearResults()
gg.searchNumber("h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll("h106F6C796D7069637300000000000000000000000000000005000000C40900002667616368615F7061636B5F6F6C796D7069637300000000 ",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_BB_02", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FA_08",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DC_08", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CA_02",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_AF_01", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_FD_06",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DE_09", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CA_07",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_CA_06", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CA_08",gg.TYPE_BYTE)
gg.clearResults()
gg.searchNumber(":Specimen_DF_12", gg.TYPE_BYTE)  r = gg.getResults(100000)  gg.editAll(":Specimen_CA_14",gg.TYPE_BYTE)
gg.clearResults()
end

function SubOpcion2_2()
  local subOpciones = {
    "📜 MUTANTES EN ORDEN DE SALIDA (527)",
    "🧬 MUTANTES MONO-GEN",
    "🔙 Volver"
  }

  local eleccion = gg.choice(subOpciones, nil, "📂 𝕋𝕆𝔻𝕆𝕊 𝕃𝕆𝕊 𝕄𝕌𝕋𝔸ℕ𝕋𝔼𝕊")

if eleccion == 1 then
    gg.toast("📥 Mostrando MUTANTES EN ORDEN DE SALIDA (527)...")
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
  "FF_03",
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
  elseif eleccion == 2 then
    gg.toast("📥 Descargando MUTANTES MONO-GEN...")
    local url2 = "https://raw.githubusercontent.com/iiSebastxX/SERVER/refs/heads/main/monogen.lua"
    ejecutarScriptDesdeURL(url2)

  else
    gg.toast("🔙 Regresando al menú...")
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
