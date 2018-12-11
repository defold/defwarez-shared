local M = {}

local is_live = sys.get_config("defwarez.live", "0") == "1"

M.current_render_update = nil
M.set_render_update_func = function(func)
    M.current_render_update = func
end

M.current_render_init = nil
M.set_render_init_func = function(func)
    M.current_render_init = func
end

M.add_score = function(score)

    if is_live then
        msg.post("main:/main", "add_score", { score = score } )
    else
        --print("add score: " .. tostring(score))
        msg.post("mock:/mock#mock", "add_score", { score = score })
        msg.post("mock:/mock#game", "add_score", { score = score })
    end
    
end

M.set_score = function(abs_score)

    if is_live then
        msg.post("main:/main", "set_score", { score = abs_score } )
    else
        --print("set score: " .. tostring(abs_score))
        msg.post("mock:/mock#mock", "set_score", { score = abs_score })
        msg.post("mock:/mock#game", "set_score", { score = abs_score })
    end

end

M.player_done = function()
    if is_live then
        msg.post("main:/main", "player_done")
    else
        print("Player done!")
    end
end

M.set_player_udata = function(data)
    if is_live then

    else
        msg.post("mock:/mock#mock", "set_userdata", data)
    end
end

M.get_players = function()

    -- TODO
    return {}
end

return M