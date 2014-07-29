local LiveCell = {
    type = "LIVE"
}

function LiveCell:new()
    o = {}
   setmetatable(o, self)
   self.__index = self
   return o
end

function LiveCell:next(neighborsCount)
    if neighborsCount < 2 then
        return {
            type = "DEAD"
        }
    elseif neighborsCount > 3 then
        return {
            type = "DEAD"
        }
    else
        return self
    end
end

return LiveCell
