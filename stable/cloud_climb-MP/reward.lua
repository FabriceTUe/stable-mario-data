tottime = 0
finished = 0
function reward()
    local reward
    if finished == 0 then
        local height = data.height
        reward = -0.0000000000001*(height - 2700 - ((1897-2880)/2800)*tottime)^3
        if height < 2200 and reward > 0 then
            reward = reward*4
        elseif height < 2200 and reward < 0 then
            reward = reward*0.2
        end
        if height < 1900 and data.xcoordinate < 140 and data.xcoordinate > 100 then
            reward = reward + (3600-tottime)/400
            finished = 1
        end
        tottime = tottime + 1
    else
        reward = -0.000001
    end  
    return reward
end