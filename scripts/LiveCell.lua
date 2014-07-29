local LiveCell = {
    type = "LIVE"
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
    if neighborsCount < 2 then
        return DeadCell:new()
    elseif neighborsCount > 3 then
        return DeadCell:new()
    else
        return self
    end
end

return LiveCell
