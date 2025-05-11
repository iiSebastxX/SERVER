activa = 1



function MENU()
if not mensajeMostrado then
gg.alert([[

🔔 *NOTA IMPORTANTE* 🔔



⚠️ Si deseas conseguir un mutante *MONO-GEN NECRO*, asegúrate de hibridar únicamente con otros *MONO-GEN NECROS*. 



❌ Combinar con mutantes de otras clases puede causar errores inesperados.



✅ Esta regla aplica para *todos los MONO-GEN*.



━━━━━━━━━━━━━━━━━━━━━━━

¡Híbrida con cuidado y buena suerte! 🍀

]])
mensajeMostrado = true  -- Marca el mensaje como mostrado
end

    local menu_1 = gg.choice({

        '[ 🤖 ] ➣CIBERS',

        '[ 🧟‍♂️ ] ➣NECROS',

        '[ ⚔️ ] ➣SABLES',

        '[ 🐺 ] ➣ZOOMORFOS',

        '[ 🌕 ] ➣GALACTICOS',

        '[ 🧙‍♂️ ] ➣MITICOS',

        '[ 📁 ] ➣CERRAR SCRIPT',

    }, nil, '⋆˚࿔ MONOGENES 𝜗𝜚˚⋆')



    if menu_1 == 1 then CIBERS() end

    if menu_1 == 2 then NECROS() end    

    if menu_1 == 3 then SABLES() end

    if menu_1 == 4 then ZOOMORFOS() end

    if menu_1 == 5 then GALACTICO() end

    if menu_1 == 6 then MITICO() end

    if menu_1 == 7 then SALIR() end

end



-- CIBERS

function CIBERS()

    local opciones = {

        '[ 🤖 ] Robot',

        '[ 🤖 ] Garuda',

        '[ 🤖 ] Cazarecompensas',

        '[ 🤖 ] Asimov',

        '⬅️ Regresar al menú principal'

    }

    local eleccion = gg.choice(opciones, nil, '🤖 CIBERS')

    if eleccion == nil then return end



    local mutantes = {

        [1] = {nombre = "Robot", codigo = ":A_01"},

        [2] = {nombre = "Garuda", codigo = ":A_03"},

        [3] = {nombre = "Cazarecompensas", codigo = ":A_05"},

        [4] = {nombre = "Asimov", codigo = ":A_13"}

    }


gg.clearResults()
gg.setVisible(false)


    if eleccion >= 1 and eleccion <= 4 then

        aplicarCiber(mutantes[eleccion].codigo, mutantes[eleccion].nombre)

    elseif eleccion == 5 then

        MENU()

    end

end



function aplicarCiber(codigoNuevo, nombre)

    local originalValues = {}



    -- función para buscar y editar

    local function buscarYEditar(valorOriginal, nuevoValor)

        gg.clearResults()

        gg.searchNumber(valorOriginal, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)

        local resultados = gg.getResults(100000)

        for i,v in ipairs(resultados) do

            table.insert(originalValues, v)

        end

        gg.editAll(nuevoValor, gg.TYPE_BYTE)

    end



    -- modificar todos los CIBERS al mutante seleccionado

    buscarYEditar(":A_01", codigoNuevo)

    buscarYEditar(":A_05", codigoNuevo)

    buscarYEditar(":A_13", codigoNuevo)



    gg.alert("‼️ Presiona a cambiar con ORO‼️")

    gg.sleep(5000)



    -- restaurar valores originales

    gg.setValues(originalValues)

    gg.clearResults()

end





-- NECROS

function NECROS()

    local opciones = {
        '[ 🧟‍♂️ ] Zombi',
        '[ 🧟‍♂️ ] Jack O Lantern',
        '[ 🧟‍♂️ ] Cuervo',
        '[ 🧟‍♂️ ] Drudge Zombi',
        '[ 🧟‍♂️ ] Huesamblaje',
        '[ 🧟‍♂️ ] Gar Zombi Soberano',
        '⬅️ Regresar al menú principal'
    }

    local eleccion = gg.choice(opciones, nil, '🧟‍♂️ NECROS')

    if eleccion == nil then return end

    local mutantes = {
        [1] = {nombre = "Zombi", codigo = ":B_01", reemplazar = {":B_05", ":B_12", ":B_13"}},
        [2] = {nombre = "Jack O Lantern", codigo = ":B_03", reemplazar = {":B_01", ":B_05", ":B_12", ":B_13"}},
        [3] = {nombre = "Cuervo", codigo = ":B_04", reemplazar = {":B_01", ":B_05", ":B_12", ":B_13"}},
        [4] = {nombre = "Drudge Zombi", codigo = ":B_05", reemplazar = {":B_01", ":B_12", ":B_13"}},
        [5] = {nombre = "Huesamblaje", codigo = ":B_012", reemplazar = {":B_01", ":B_05", ":B_13"}},
        [6] = {nombre = "Gar Zombi Soberano", codigo = ":B_13", reemplazar = {":B_01", ":B_05", ":B_12"}}
    }

    gg.clearResults()
    gg.setVisible(false)

    if eleccion >= 1 and eleccion <= 6 then
        aplicarNecro(mutantes[eleccion].codigo, mutantes[eleccion].nombre, mutantes[eleccion].reemplazar)
    elseif eleccion == 7 then
        MENU()
    end

end

function aplicarNecro(codigoNuevo, nombre, codigosAReemplazar)

    local originalValues = {}

    local function buscarYEditar(valorOriginal, nuevoValor)
        gg.clearResults()
        gg.searchNumber(valorOriginal, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
        local resultados = gg.getResults(100000)
        for i,v in ipairs(resultados) do
            table.insert(originalValues, v)
        end
        gg.editAll(nuevoValor, gg.TYPE_BYTE)
    end

    for _, codigo in ipairs(codigosAReemplazar) do
        buscarYEditar(codigo, codigoNuevo)
    end

    gg.alert("‼️ Presiona a cambiar con ORO‼️\nAhora eres: " .. nombre)
    gg.sleep(5000)

    gg.setValues(originalValues)
    gg.clearResults()

end


function SABLES()

    local opciones = {

        '[ ⚔️ ] Guerrero',

        '[ ⚔️ ] Frostmass',

        '[ ⚔️ ] Bárbaro',

        '[ ⚔️ ] D Arathomis',

        '[ ⚔️ ] Gladiador',

        '⬅️ Regresar al menú principal'

    }

    local eleccion = gg.choice(opciones, nil, '⚔️ SABLES')

    if eleccion == nil then return end



    local mutantes = {

        [1] = {nombre = "Guerrero", codigo = ":C_01"},

        [2] = {nombre = "Frostmass", codigo = ":C_03"},

        [3] = {nombre = "Bárbaro", codigo = ":C_05"},

        [4] = {nombre = "D Arathomis", codigo = ":C_13"}

        [5] = {nombre = "Gladiador", codigo = ":C_14"}

    }



gg.clearResults()
gg.setVisible(false)

    if eleccion >= 1 and eleccion <= 5 then

        aplicarSable(mutantes[eleccion].codigo, mutantes[eleccion].nombre)

    elseif eleccion == 5 then

        MENU()

    end

end



function aplicarSable(codigoNuevo, nombre)

    local originalValues = {}



    local function buscarYEditar(valorOriginal, nuevoValor)

        gg.clearResults()

        gg.searchNumber(valorOriginal, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)

        local resultados = gg.getResults(100000)

        for i,v in ipairs(resultados) do

            table.insert(originalValues, v)

        end

        gg.editAll(nuevoValor, gg.TYPE_BYTE)

    end



    -- modificar todos los SABLES al mutante seleccionado

    buscarYEditar(":C_01", codigoNuevo)

    buscarYEditar(":C_03", codigoNuevo)

    buscarYEditar(":C_05", codigoNuevo)

    buscarYEditar(":C_13", codigoNuevo)

    buscarYEditar(":C_14", codigoNuevo)



    gg.alert("‼️ Presiona a cambiar con ORO‼️")

    gg.sleep(5000)



    -- restaurar valores originales

    gg.setValues(originalValues)

    gg.clearResults()
end


function ZOOMORFOS()

    local opciones = {

        '[ 🦁 ] Bestia',

        '[ 🦁 ] Rambit',

        '[ 🦁 ] Aullosario',

        '[ 🦁 ] Sasquatch',

        '⬅️ Regresar al menú principal'

    }

    local eleccion = gg.choice(opciones, nil, '🦁 ZOOMORFOS')

    if eleccion == nil then return end



    local mutantes = {

        [1] = {nombre = "Bestia", codigo = ":D_01"},

        [2] = {nombre = "Rambit", codigo = ":D_03"},

        [3] = {nombre = "Aullosario", codigo = ":D_12"},

        [4] = {nombre = "Sasquatch", codigo = ":D_13"}

    }



gg.clearResults()
gg.setVisible(false)

    if eleccion >= 1 and eleccion <= 4 then

        aplicarZoomorfo(mutantes[eleccion].codigo, mutantes[eleccion].nombre)

    elseif eleccion == 5 then

        MENU()

    end

end



function aplicarZoomorfo(codigoNuevo, nombre)

    local originalValues = {}



    local function buscarYEditar(valorOriginal, nuevoValor)

        gg.clearResults()

        gg.searchNumber(valorOriginal, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)

        local resultados = gg.getResults(100000)

        for i,v in ipairs(resultados) do

            table.insert(originalValues, v)

        end

        gg.editAll(nuevoValor, gg.TYPE_BYTE)

    end



    -- modificar todos los ZOOMORFOS al mutante seleccionado

    buscarYEditar(":D_01", codigoNuevo)

    buscarYEditar(":D_12", codigoNuevo)

    buscarYEditar(":D_13", codigoNuevo)



    gg.alert("‼️ Presiona a cambiar con ORO‼️")

    gg.sleep(5000)



    -- restaurar valores originales

    gg.setValues(originalValues)

    gg.clearResults()
end


function GALACTICO()
    local opciones = {

        '[ 👽 ] Extraterrestre',

        '[ 🪐 ] Ceres',

        '[ 🛰️ ] Explorador Sideral',

        '[ 🔭 ] Astrobservador',

        '⬅️ Regresar al menú principal'

    }

    local eleccion = gg.choice(opciones, nil, '🪐 GALÁCTICOS')

    if eleccion == nil then return end



    local mutantes = {

        [1] = {nombre = "Extraterrestre",    codigo = ":E_01"},

        [2] = {nombre = "Ceres",             codigo = ":E_03"},

        [3] = {nombre = "Explorador Sideral",codigo = ":E_12"},

        [4] = {nombre = "Astrobservador",    codigo = ":E_13"}

    }



gg.clearResults()
gg.setVisible(false)

    if eleccion >= 1 and eleccion <= 4 then

        aplicarGalactico(mutantes[eleccion].codigo, mutantes[eleccion].nombre)

    elseif eleccion == 5 then

        MENU()

    end

end



function aplicarGalactico(codigoNuevo, nombre)

    local originalValues = {}



    local function buscarYEditar(valorOriginal, nuevoValor)

        gg.clearResults()

        gg.searchNumber(valorOriginal, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)

        local resultados = gg.getResults(100000)

        for i, v in ipairs(resultados) do

            table.insert(originalValues, v)

        end

        gg.editAll(nuevoValor, gg.TYPE_BYTE)

    end



    -- modificar todos los GALÁCTICOS al mutante seleccionado

    buscarYEditar(":E_01", codigoNuevo)

    buscarYEditar(":E_03", codigoNuevo)

    buscarYEditar(":E_12", codigoNuevo)

    buscarYEditar(":E_13", codigoNuevo)



    gg.alert("‼️ Presiona a cambiar con ORO‼️")

    gg.sleep(5000)



    -- restaurar valores originales

    gg.setValues(originalValues)

    gg.clearResults()
end



function MITICO()

    local opciones = {

        '[ 🧙‍♂️ ] Mago de las nieves',

        '[ 🍀 ] Leprechaum',

        '[ 🧙‍♂️ ] Invocador',

        '[ 🌌 ] Vainamoinen',

        '⬅️ Regresar al menú principal'

    }

    local eleccion = gg.choice(opciones, nil, '🔮 MUTANTES')

    if eleccion == nil then return end



    local mutantes = {

        [1] = {nombre = "Mago de las nieves", codigo = ":F_03"},

        [2] = {nombre = "Leprechaum", codigo = ":F_04"},

        [3] = {nombre = "Invocador", codigo = ":F_12"},

        [4] = {nombre = "Vainamoinen", codigo = ":F_13"}

    }



gg.clearResults()
gg.setVisible(false)

    if eleccion >= 1 and eleccion <= 4 then

        aplicarMutante(mutantes[eleccion].codigo, mutantes[eleccion].nombre)

    elseif eleccion == 5 then

        MENU()  -- Regresa al menú principal

    end

end



-- Función para aplicar la modificación de un mutante

function aplicarMutante(codigoNuevo, nombre)

    local originalValues = {}



    -- función para buscar y editar

    local function buscarYEditar(valorOriginal, nuevoValor)

        gg.clearResults()

        gg.searchNumber(valorOriginal, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)

        local resultados = gg.getResults(100000)

        for i, v in ipairs(resultados) do

            table.insert(originalValues, v)

        end

        gg.editAll(nuevoValor, gg.TYPE_BYTE)

    end



    -- modificar todos los valores del mutante seleccionado

    buscarYEditar(":F_01", codigoNuevo)

    buscarYEditar(":F_12", codigoNuevo)

    buscarYEditar(":F_13", codigoNuevo)



    gg.alert("‼️ Presiona a cambiar con ORO‼️")

    gg.sleep(5000)



    -- restaurar valores originales

    gg.setValues(originalValues)

    gg.clearResults()
end



function SALIR()
    gg.setVisible(true)
    gg.alert([[       
                                                     
                         ̵‼️̵͈̩̅̊̀̇̇͋͒̕͟☣️̵̖̜̅̇̇̊̇̓̍̓͟S̵̩̅̊̇̊̋̈́̓̓̕͟e̵̜̖̅̇̇̓̀̀̇̀̔͟b̵̹̩̜̅̊̊̇̓̓̀͟ɑ̵̤̗̗̣̩̅̇̊̊̓̀͟s̵̗̹̹̅̊̈́̋̈̕͟T̵͈̹̅̊̊̐̀̎͟ẹ̵̗̩̅̇̇̔̒̕͟ɑ̵̦̩̗̅̊̍̔͟ɱ̵̛̖̜̅̇̒̒̒͟          
                                                      
                                                                              
       ̵͟©̵̛̅̇̇̊̇͋̎̋͒͋̈́̕͟ ̵͟2̵̣̗̅̊̊̒̒̒̕͟0̵͈͈̅̊̇͋́́̎͟2̵̣̦̅̇̊̈̏́͟4̵̣̩̹̤̅̇̇̊̇̓̎̕͟ ̵͟T̵̗̤̦̅̇̊̀̓̒͒͟σ̵̛̅̇́̔̇̎̕͟ɗ̵̛̩̗̩̅̇̇̊̊̓͋̍͟σ̵̜̅̊̊̇̊̊̊͋̎̀̐̀̕͟s̵̹̹̅̐́̀͟ ̵͟l̵̛͈̦͈̅̊̊̇̇̊̎̒͟σ̵̛̦̗̅̇̀̀͋̀̓͟s̵̩̗̅̊̇̍̋̋͋̕͟ ̵͟ɗ̵̖̖̣̅̇̔̔̋̐͟ẹ̵̅́̓̓̇̏̔̒͟ɾ̵̛͈̹̅̊̒̋̎͟e̵̩̹̗̅̇̓̓̀̔͟c̵̛̜̗̅̈́̈́̇͟ɦ̵̦̅̊̊́̈́̔̀̓̎́̋͟σ̵̛̦̜̅̇̇̊̇̀̈́̒̕͟s̵̗̅̊̊̊̊̊̀́͒̏̓̇͟ ̵͟ɾ̵̦̦̅̎́͋̓̕͟e̵̹͈̜̅̇̊̇̈̓̋͟ṣ̵̛̛̩̅̊̇̊̇̐̏́̏́͟e̵̛̦̩̗̅̇̇̊̍͟ɾ̵̜̹̜̅̇̊̍̏̀̒͟ν̵̦̣̅̇̊̈́̀̓̇̎͟ɑ̵̜̦̖̅̊̇̊̇̇̇́̐͟ɗ̵̜̅̇̊̇̈́̓̇̈̒͟σ̵̩̗̅̊̇̇̊̓́̇̐̒͟s̵̩͈̅̊̓́͋̓̇̕͟.̵̗̜̩̊̇̔̓͟☣️̵̜̤̅͋̋͋̍͒̓̕͟‼️̵̛̅̇̊̒̐́̍͒̓

   
 ]])
    os.exit()
end

-- 1) Llama MENU() la primera vez para que arranque visible

MENU()



-- 2) Una vez que el usuario haga su selección y cierre el menú,

--    ocultamos el panel de GG para quedarnos en segundo plano

gg.setVisible(false)



while true do
    if gg.isVisible() then
        gg.setVisible(false)  -- Ocultamos el panel de GG
        MENU()                -- Mostramos el menú

        if salirScript then
            break  -- Si el usuario seleccionó "Cerrar Script", rompemos el ciclo
        end
    end

    gg.sleep(100)  -- Pausa breve para evitar que el script consuma demasiados recursos
end

-- 4) El script sale aquí cuando el ciclo se rompe
gg.alert("¡Script cerrado!")
