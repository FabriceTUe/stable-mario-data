
function reward()
    local reward = 0
    
    -- check if a mistake was made:
    if data.error_3 == 90402614005800 then
        reward = -1 -- punish model for a misstep
    end

    return reward
end