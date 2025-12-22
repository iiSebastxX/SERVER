local version = "1.1.2"

-- =========================
-- 📱 DEVICE ID ÚNICO
-- =========================
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

-- =========================
-- 🌍 OBTENER IP
-- =========================
local ipRes = gg.makeRequest("https://api.ipify.org")
if ipRes.code ~= 200 then
  gg.alert("❌ No se pudo obtener la IP pública")
  os.exit()
end
local ip = ipRes.content

-- =========================
-- 🌐 URL BACKEND
-- =========================
local BASE_URL = "https://script.google.com/macros/s/TU_WEBAPP/exec"

-- =========================
-- 📤 ENVIAR PETICIÓN
-- =========================
local function enviar(accion, usuario, clave)
  local url = BASE_URL
    .. "?accion=" .. accion
    .. "&usuario=" .. usuario
    .. "&clave=" .. clave
    .. "&ip=" .. ip
    .. "&dispositivo=" .. deviceID

  local res = gg.makeRequest(url)
  if res.code ~= 200 then
    gg.alert("❌ Error de conexión con el servidor")
    os.exit()
  end
  return res.content
end

-- =========================
-- 🎮 MENÚ BIENVENIDA
-- =========================
gg.alert(
  "🔐 Script VIP v" .. version ..
  "\n\nEste script está protegido por IP y dispositivo.\nEl uso no autorizado será sancionado."
)

local opcion = gg.choice(
  {"🔑 Iniciar sesión", "🆕 Registrarse", "❌ Salir"},
  nil,
  "🎮 Bienvenido"
)

if opcion == nil or opcion == 3 then
  gg.toast("👋 Cerrando script")
  os.exit()
end

-- =========================
-- 🧾 CREDENCIALES
-- =========================
local cred = gg.prompt(
  {"👤 Usuario:", "🔑 Contraseña:"},
  nil,
  {"text", "text"}
)

if not cred then
  gg.alert("❌ Cancelado")
  os.exit()
end

local usuario = cred[1]
local clave = cred[2]

-- =========================
-- 🔐 LOGIN
-- =========================
if opcion == 1 then
  local r = enviar("login", usuario, clave)

  if r == "autorizado" then
    gg.toast("✅ Acceso concedido")
  elseif r == "ip_diferente" then
    gg.alert("⚠️ Acceso restringido\nEntorno no autorizado")
    os.exit()
  elseif r == "dispositivo_no_autorizado" then
    gg.alert("🚫 Este usuario ya está vinculado a otro dispositivo")
    os.exit()
  elseif r == "denegado" then
    gg.alert("❌ Usuario o contraseña incorrectos")
    os.exit()
  else
    gg.alert("🚫 " .. r)
    os.exit()
  end
end

-- =========================
-- 🆕 REGISTRO
-- =========================
if opcion == 2 then
  local r = enviar("register", usuario, clave)

  if r == "registrado" then
    gg.alert("✅ Registro exitoso\nAhora puedes iniciar sesión")
    os.exit()
  elseif r == "dispositivo_ya_registrado" then
    gg.alert("🚫 Este dispositivo ya tiene una cuenta registrada")
    os.exit()
  else
    gg.alert("🚫 " .. r)
    os.exit()
  end
end

-- =========================
-- 📋 MENÚ PRINCIPAL
-- =========================
while true do
  local hora = os.date("%H:%M:%S")
  local menu = gg.choice(
    {
      "🚀 Opciones (1)",
      "🚀 Opciones (2)",
      "📄 Información",
      "❌ Salir"
    },
    nil,
    "👤 Usuario: " .. usuario ..
    "\n🕒 Hora: " .. hora ..
    "\n📦 Versión: " .. version
  )

  if menu == 1 then
    gg.toast("⚙️ Opción 1")
  elseif menu == 2 then
    gg.toast("⚙️ Opción 2")
  elseif menu == 3 then
    gg.alert(
      "📄 Información\n\n" ..
      "Usuario: " .. usuario ..
      "\nIP: " .. ip ..
      "\nDeviceID: " .. deviceID ..
      "\nVersión: " .. version ..
      "\n\nCreado por Andrew FC"
    )
  elseif menu == nil or menu == 4 then
    gg.toast("👋 Cerrando script")
    break
  end
end

os.exit()
