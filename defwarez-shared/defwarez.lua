local M = {}

local is_live = sys.get_config("defwarez.live", "0") == "1"

M.add_score = function(score)

    if is_live then
        msg.post("main:/main", "add_score", { score = score } )
    else
        print("add score: " .. tostring(score))
    end
    
end

M.set_score = function(abs_score)

    if is_live then
        msg.post("main:/main", "set_score", { score = abs_score } )
    else
        print("set score: " .. tostring(abs_score))
    end

end

M.get_players = function()

    -- TODO
    return {}
end

return M