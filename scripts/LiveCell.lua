local LiveCell = {
    type = "LIVE",
    color = {1,1,1}
}
package.loaded[...] = LiveCell

local DeadCell = require("scripts.DeadCell")

function LiveCell:new()
    o = {}
   setmetatable(o, self)
   self.__index = self
   return o
end

function LiveCell:next(neighborsCount)
    if neighborsCount < 2 or neighborsCount > 3 then
        return DeadCell:new()
    end
    return self
end

function LiveCell:getColor()
    return self.color
end

return LiveCell
