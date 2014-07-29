local DeadCell = {
    type = "DEAD"
}

function DeadCell:new()
    o = {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function DeadCell:next(neightborsCount)
   if neightborsCount == 3 then
       return {
           type = "LIVE"
       }
    end
    return self
end

return DeadCell
