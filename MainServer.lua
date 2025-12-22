local version = "1.1.2"

gg.alert(
  "🔐 Bienvenido al Script VIP v" .. version ..
  "\n\nEste script está protegido.\n1 cuenta por dispositivo.\nUso no autorizado será sancionado ⚠️"
)

-- 🎮 MENÚ DE BIENVENIDA
local opcion = gg.choice(
  {
    "🆕 Registrarse",
    "🔐 Iniciar sesión",
    "❌ Salir"
  },
  nil,
  "🎮 SCRIPT VIP\n\nSelecciona una opción:"
)

if opcion == nil or opcion == 3 then
  gg.toast("👋 Hasta luego")
  os.exit()
end

local usuario, clave, accion

-- 🆕 REGISTRO
if opcion == 1 then
  accion = "registro"
  gg.alert(
    "🆕 Registro\n\n" ..
    "• 1 cuenta por dispositivo\n" ..
    "• No se permiten duplicados\n" ..
    "• Guarda tus datos\n"
  )

  local cred = gg.prompt(
    {"👤 Elige un usuario:", "🔑 Elige una contraseña:"},
    nil,
    {"text", "text"}
  )

  if not cred then os.exit() end
  usuario = cred[1]
  clave = cred[2]
end

-- 🔐 LOGIN
if opcion == 2 then
  accion = "login"

  local cred = gg.prompt(
    {"👤 Usuario:", "🔑 Contraseña:"},
    nil,
    {"text", "text"}
  )

  if not cred then os.exit() end
  usuario = cred[1]
  clave = cred[2]
end

-- 📱 DEVICE ID (NO SE TOCA)
local deviceFile = "/sdcard/.gg_device_id"

local function obtenerDeviceID()
  local f = io.open(deviceFile, "r")
  if f then
    local id = f:read("*l")
    f:close()
    return id
  end

  math.randomseed(os.time())
  local chars = "abcdefghijklmnopqrstuvwxyz0123456789"
  local id = ""
  for i = 1, 32 do
    local r = math.random(#chars)
    id = id .. chars:sub(r, r)
  end

  f = io.open(deviceFile, "w")
  f:write(id)
  f:close()

  return id
end

local deviceID = obtenerDeviceID()

-- 🌐 IP
local ipRes = gg.makeRequest("https://api.ipify.org")
if ipRes.code ~= 200 then
  gg.alert("❌ No se pudo obtener la IP pública")
  os.exit()
end

local ip = ipRes.content

-- 🌐 URL BACKEND
local url = "https://script.google.com/macros/s/AKfycbxBQQs4kxmU3WJH4yj3thiioTa2qaByC-knB43hrpXJ0GUktxXcA6XYzBdBjvl2XmgBDg/exec"
url = url
  .. "?accion=" .. accion
  .. "&usuario=" .. usuario
  .. "&clave=" .. clave
  .. "&ip=" .. ip
  .. "&dispositivo=" .. deviceID

-- 🚀 REQUEST
local res = gg.makeRequest(url)

if res.code ~= 200 then
  gg.alert("❌ Error al conectar con el servidor")
  os.exit()
end

local respuesta = res.content

-- 🧠 RESPUESTAS
if respuesta == "autorizado" then
  gg.toast("✅ Acceso concedido")

elseif respuesta == "registrado" then
  gg.alert("✅ Registro exitoso\nAhora inicia sesión")
  os.exit()

elseif respuesta == "ip_diferente" then
  gg.alert("⚠️ Acceso restringido\nEntorno no autorizado")
  os.exit()

elseif respuesta == "dispositivo_no_autorizado" then
  gg.alert("🚫 Este dispositivo ya tiene una cuenta")
  os.exit()

elseif respuesta == "denegado" then
  gg.alert("❌ Usuario o contraseña incorrectos")
  os.exit()

elseif respuesta:lower():find("bloqueado") then
  gg.alert("🚫 " .. respuesta)
  os.exit()

else
  gg.alert("🚫 " .. respuesta)
  os.exit()
end

-- 📋 MENÚ PRINCIPAL
function mostrarMenu()
  while true do
    local hora = os.date("%H:%M:%S")
    local titulo =
      "╔════════════════════════════╗\n" ..
      "║     🎮  SCRIPT VIP MGG     ║\n" ..
      "╠════════════════════════════╣\n" ..
      "║ 👤 Usuario: " .. usuario .. "\n" ..
      "║ 🕒 Hora: " .. hora .. "\n" ..
      "║ 📦 Versión: " .. version .. "\n" ..
      "╚════════════════════════════╝"

    local op = gg.choice(
      {
        "🚀 Opciones (1)",
        "🚀 Opciones (2)",
        "🚀 Calculadora Evo",
        "📄 Información",
        "❌ Salir"
      },
      nil,
      titulo
    )

    if op == nil or op == 5 then break end
    gg.toast("🔧 Función en desarrollo")
  end
end

mostrarMenu()
os.exit()
