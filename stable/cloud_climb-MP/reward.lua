tottime = 0
function reward()
    local reward
    local height = data.height
    reward = -0.000000000001*(height - 2700 - ((1897-2880)/2800)*tottime)^3
    if height < 2200 and reward > 0 then
        reward = reward*2
    elseif height < 2200 and reward < 0 then
        reward = reward*0.5
    end
    if height < 1900 and data.xcoordinate < 140 and data.xcoordinate > 100 then
        reward = reward + (5400-tottime)/800
    end
    tottime = tottime + 1
    return reward
end