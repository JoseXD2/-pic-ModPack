function onCreate()
    makeLuaSprite('danhiem','danhiem', 8,32)
    makeLuaText("MemoryCounter", "              : 0 MB", 0, -30, 35)
    setTextSize("MemoryCounter", 20)
    setTextBorder("MemoryCounter", 3, "000000")
    addLuaText("MemoryCounter", true)
    addLuaSprite('MemoryCounter', true);
    addLuaSprite('danhiem', true);
    setObjectCamera('danhiem', 'other');
    setObjectCamera('MemoryCounter', 'other');
end

function onUpdate()
    local totalMemory = getPropertyFromClass("openfl.system.System", "totalMemory")
    local memory = math.abs(roundDecimal(totalMemory / 1000000, 1))

    setTextString("MemoryCounter", "              : " .. memory .. " MB")
end

function roundDecimal(value, precision)
    local mult = 1

    for i = 0, precision do
        mult = mult * 10
    end

    return fround(value * mult, -1) / mult
end

function fround(number, decimals)
    local power = 10 ^ decimals
    return math.floor(number * power) / power
end