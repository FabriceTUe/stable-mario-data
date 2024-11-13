lastsegment = 0

function reward()
    local reward
    local progress = data.progress
    if progress - lastsegment == 14 then
        reward = 0
    else
        reward = 0.3*(progress - lastsegment)
        lastsegment = progress
    end
    reward = reward - 0.0001 + 0.000001*(data.speed)
    return reward 
end