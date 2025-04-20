
-- 🎯 Calculadora EVO - Versión bonita con emojis

-- 📊 Datos base
local creditsData = {...} -- Tu array de créditos completo aquí
local goldData = {...} -- Tu array de oro completo aquí

-- 🧾 Entrada de datos en un solo menú
local input = gg.prompt({
  "💳 Créditos disponibles:",
  "🏅 Oro disponible:",
  "📈 EVO actual:",
  "🔻 Descuento aplicado (%):"
}, {0, 0, 0, 0}, {"number", "number", "number", "number"})

if input == nil then
  gg.alert("❌ Cancelado por el usuario")
  os.exit()
end

local userCreds = tonumber(input[1])
local userGold = tonumber(input[2])
local userEVO = tonumber(input[3])
local discount = tonumber(input[4])

-- 🔍 Verificación de entradas
if not userCreds or not userGold or not userEVO or not discount then
  gg.alert("⚠️ Asegúrate de llenar todos los campos correctamente.")
  os.exit()
end

-- 🧠 Cálculo del EVO
local result = 0
local startingEVO = userEVO
local increase = 0
local descFactor = ((100 - discount) * 0.01)

-- 🏗️ Créditos para EVO
if userEVO >= 328 then
  result = userEVO + math.floor(userCreds / (1590000000 * descFactor))
else
  while true do
    if userEVO >= 328 then
      result = userEVO + math.floor(userCreds / (1590000000 * descFactor))
      break
    end
    local costo = math.floor((creditsData[userEVO + 1] or 1590000000) * descFactor)
    userCreds = userCreds - costo
    if userCreds >= 0 then
      userEVO = userEVO + 1
    else
      result = userEVO
      break
    end
  end
end

-- 🧮 Oro para subir EVO si aplica
if result >= 30 then
  increase = math.floor(userGold / (3000 * descFactor))
else
  while true do
    if (increase + result) >= 30 then
      increase = math.floor(userGold / (3000 * descFactor))
      break
    end
    local costo = math.round((goldData[result + increase + 1] or 3000) * descFactor)
    userGold = userGold - costo
    if userGold >= 0 then
      increase = increase + 1
    else
      break
    end
  end
end

result = result + increase

-- 📢 Resultado final
gg.alert("✅ NUEVA EVO: " .. result .. "\n📈 INCREMENTO: +" .. (result - startingEVO))
