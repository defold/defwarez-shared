local M = {}

function hex2rgb(hex)
    hex = hex:gsub("#","")
    return { tonumber("0x"..hex:sub(1,2)) / 255,
             tonumber("0x"..hex:sub(3,4)) / 255,
             tonumber("0x"..hex:sub(5,6)) / 255,
             1 }
end

M.colors = {
    hex2rgb("#0F9EE7"),
    hex2rgb("#FF6B1C"),
    hex2rgb("#F039FF"),
    hex2rgb("#FFD900"),
    hex2rgb("#26DD62"),
    hex2rgb("#8822E2"),
    hex2rgb("#ED2A5B"),
    hex2rgb("#3B5463"),
    hex2rgb("#4C8541"),
    hex2rgb("#984680"),
    hex2rgb("#985946"),
    hex2rgb("#7794B5"),

    -- duplicate
    hex2rgb("#0F9EE7"),
    hex2rgb("#FF6B1C"),
    hex2rgb("#F039FF"),
    hex2rgb("#FFD900"),
    hex2rgb("#26DD62"),
    hex2rgb("#8822E2"),
    hex2rgb("#ED2A5B"),
    hex2rgb("#3B5463"),
    hex2rgb("#4C8541"),
    hex2rgb("#984680"),
    hex2rgb("#985946"),
    hex2rgb("#7794B5")
}

return M
