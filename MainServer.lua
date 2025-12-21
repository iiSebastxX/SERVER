local version = "1.1.2" -- Puedes cambiar esto fácilmente cuando actualices

gg.alert("🔐 Bienvenido al Script VIP v" .. version .. "\nEste script está protegido con acceso limitado por IP. En caso tal de querer ser compartido sin autorización, este será sancionado.⚠️")

-- Ingreso de usuario y contraseña
local credenciales = gg.prompt(
  {"👤 Usuario:", "🔑 Contraseña:"},
  nil,
  {"text", "text"}
)

if not credenciales then
  gg.alert("❌ Cancelado")
  os.exit()
end

local usuario = credenciales[1]
local clave = credenciales[2]

-- Obtener IP pública
local ipRes = gg.makeRequest("https://api.ipify.org")
if ipRes.code ~= 200 then
  gg.alert("❌ No se pudo obtener la IP pública")
  os.exit()
end

local ip = ipRes.content

-- URL de tu Apps Script
local url = "https://script.google.com/macros/s/AKfycbz7O55BhynJw6UHA8lvZTKjw-1rV0B25fSuRpQbCrYMpl6pgXhND9ipfoUD6KPN8hxo/exec"
url = url .. "?usuario=" .. usuario .. "&clave=" .. clave .. "&ip=" .. ip

-- Hacer solicitud
local res = gg.makeRequest(url)

if res.code ~= 200 then
  gg.alert("❌ Error al conectar con el servidor\n\nVERIFICA TU CONEXIÓN A INTERNET.")
  os.exit()
end

local respuesta = res.content

-- Validar respuesta
if respuesta == "autorizado" then
  gg.toast("✅ Acceso concedido")
elseif respuesta == "ip_diferente" then
  gg.alert("⚠️ Acceso denegado\nEsta cuenta ya está registrada con otra IP.")
  os.exit()
elseif respuesta == "denegado" then
  gg.alert("❌ Usuario o contraseña incorrectos")
  os.exit()
elseif respuesta == "falta_datos" then
  gg.alert("❌ Faltan datos. Intenta de nuevo.")
  os.exit()
elseif respuesta:lower():find("bloqueado") then
  gg.alert("⚠️ " .. respuesta)
  os.exit()
elseif respuesta:lower():find("sistema") then
  gg.alert("⚙️ " .. respuesta)
  os.exit()

elseif respuesta == "dispositivo_no_autorizado" then
  gg.alert("🚫 Acceso denegado\nEste usuario ya está vinculado a otro dispositivo.")
  os.exit()
  
else
  gg.alert("🚫 " .. respuesta)
  os.exit()
end

-- Menú principal
function mostrarMenu()
  while true do
    local hora = os.date("%H:%M:%S")
    local titulo = 
      "╔════════════════════════════╗\n" ..
      "║     🎮  SCRIPT VIP MGG     ║\n" ..
      "╠════════════════════════════╣\n" ..
      "║ 👤 Usuario: " .. usuario .. "\n" ..
      "║ 🕒 Hora: " .. hora .. "\n" ..
      "║ 🔰 Estado: En línea...\n" ..
      "║ 📦 Versión: " .. version .. "\n" ..
      "╚════════════════════════════╝"

    local opciones = {
      "🚀 Opciones(1)",
      "🚀 Opciones(2)",
      "🚀 Calculadora de Evo(3)",
      "📄 Información",
      "🔄 Actualizar"
    }

    local eleccion = gg.choice(opciones, nil, titulo)

    if eleccion == 1 then
      gg.toast("📥 Descargando script VIP (1)...")
      local scriptURL = "https://raw.githubusercontent.com/iiSebastxX/SERVER/refs/heads/main/script.lua"
      local scriptRes = gg.makeRequest(scriptURL)

      if scriptRes.code ~= 200 then
        gg.alert("❌ Error al descargar el script:\nCódigo HTTP: " .. scriptRes.code)
      else
        local tempFile = "/sdcard/temp_script.lua"
        local file = io.open(tempFile, "w")
        file:write(scriptRes.content)
        file:close()

        local status, err = pcall(loadfile(tempFile))
        if not status then
          if tostring(err):find("called os.exit") then
            gg.toast("👋 Script cerrado correctamente")
          else
            gg.alert("❌ Error al ejecutar el script:\n" .. tostring(err))
          end
        else
          gg.toast("✅ Script VIP (1) ejecutado")
        end
      end

    elseif eleccion == 2 then
      gg.toast("📥 Descargando script VIP (2)...")
      local scriptURL2 = "https://raw.githubusercontent.com/iiSebastxX/SERVER/refs/heads/main/option2.lua"
      local scriptRes2 = gg.makeRequest(scriptURL2)

      if scriptRes2.code ~= 200 then
        gg.alert("❌ Error al descargar el script:\nCódigo HTTP: " .. scriptRes2.code)
      else
        local tempFile2 = "/sdcard/temp_script2.lua"
        local file2 = io.open(tempFile2, "w")
        file2:write(scriptRes2.content)
        file2:close()

        local status, err = pcall(loadfile(tempFile2))
        if not status then
          if tostring(err):find("called os.exit") then
            gg.toast("👋 Script cerrado correctamente")
          else
            gg.alert("❌ Error al ejecutar el script:\n" .. tostring(err))
          end
        else
          gg.toast("✅ Script VIP (2) ejecutado")
        end
      end

    elseif eleccion == 3 then
      gg.toast("📥 Descargando datos (3)...")
      local scriptURL3 = "https://raw.githubusercontent.com/iiSebastxX/SERVER/refs/heads/main/evocalculator.lua"
      local scriptRes3 = gg.makeRequest(scriptURL3)

      if scriptRes3.code ~= 200 then
        gg.alert("❌ Error al descargar el script:\nCódigo HTTP: " .. scriptRes3.code)
      else
        local tempFile3 = "/sdcard/temp_evocalculator.lua"
        local file3 = io.open(tempFile3, "w")
        file3:write(scriptRes3.content)
        file3:close()

        local status, err = pcall(loadfile(tempFile3))
        if not status then
          if tostring(err):find("called os.exit") then
            gg.toast("👋 Script cerrado correctamente")
          else
            gg.alert("❌ Error al ejecutar el script:\n" .. tostring(err))
          end
        else
          gg.toast("✅ EvoCalculator (3) ejecutado")
        end
      end

    elseif eleccion == 4 then
      local firma = "\n\n━━━━━━━━━━━━━━━━━━━━\n🎉 Creado por: Andrew FC\n📲 Contacto: +57 3006975005\n🔧 Script en Línea...\n━━━━━━━━━━━━━━━━━━━━\n"
      gg.alert("🔎 Info:\n\n- Usuario: " .. usuario .. "\n- IP: " .. ip .. "\n- Versión: " .. version .. firma)

    elseif eleccion == 5 then
      gg.toast("🔄 Verifica si hay una nueva versión.")
    elseif eleccion == nil then
      gg.toast("👋 Cerrando script...")
      break
    end
  end
end

-- Ejecutar menú
mostrarMenu()
os.exit()
