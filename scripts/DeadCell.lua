local DeadCell = {
    type = "DEAD",
    color = {0,0,0}
}
package.loaded[...] = DeadCell

local LiveCell = require("scripts.LiveCell")

function DeadCell:new()
    o = {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function DeadCell:next(neightborsCount)
   if neightborsCount == 3 then
       return LiveCell:new()
    end
    return self
end

return DeadCell
