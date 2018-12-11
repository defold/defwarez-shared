local M = {}

local is_live = sys.get_config("defwarez.live", "0") == "1"

M.current_render_update = nil
function M.set_render_update_func(func)
    M.current_render_update = func
end

M.current_render_init = nil
function M.set_render_init_func(func)
    M.current_render_init = func
end

function M.add_score(score)

    if is_live then
        msg.post("main:/main", "add_score", { score = score } )
    else
        --print("add score: " .. tostring(score))
        msg.post("mock:/mock#mock", "add_score", { score = score })
        msg.post("mock:/mock#game", "add_score", { score = score })
    end
    
end

function M.set_score(abs_score)

    if is_live then
        msg.post("main:/main", "set_score", { score = abs_score } )
    else
        --print("set score: " .. tostring(abs_score))
        msg.post("mock:/mock#mock", "set_score", { score = abs_score })
        msg.post("mock:/mock#game", "set_score", { score = abs_score })
    end

end

function M.player_done()
    if is_live then
        msg.post("main:/main", "player_done")
    else
        print("Player done!")
    end
end

function M.set_player_udata(data)
    if is_live then
        msg.post("main:/main", "set_userdata", data )
    else
        msg.post("mock:/mock#mock", "set_userdata", data)
    end
end

return M