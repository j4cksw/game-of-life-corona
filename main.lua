display.setStatusBar( display.HiddenStatusBar )

local BoardRenderer = require("scripts.BoardRenderer")
local LiveCell = require("scripts.LiveCell")
local DeadCell = require("scripts.DeadCell")

local cellTable = {
    { LiveCell:new(), LiveCell:new(), LiveCell:new() },
    { LiveCell:new(), DeadCell:new(), LiveCell:new() },
    { LiveCell:new(), LiveCell:new(), LiveCell:new() },
}

BoardRenderer.renderFromTable(cellTable)

Runtime:addEventListener("tap", function()
    --cellTable = BoardItertor.next(cellTable)
    --BoardRenderer.renderFromTable(cellTable)
end)
