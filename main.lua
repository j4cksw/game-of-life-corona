display.setStatusBar( display.HiddenStatusBar )

local BoardRenderer = require("scripts.BoardRenderer")
local LiveCell = require("scripts.LiveCell")
local DeadCell = require("scripts.DeadCell")
local BoardIterator = require("scripts.BoardIterator")

local cellTable = {}

for i = 1, (display.viewableContentHeight/64) do
    table.insert(cellTable, {})

    for j = 1, (display.viewableContentWidth/64) do
        table.insert(cellTable[i], DeadCell:new())
    end
end

cellTable[1][3] = LiveCell:new()
cellTable[2][1] = LiveCell:new()
cellTable[2][3] = LiveCell:new()
cellTable[3][2] = LiveCell:new()
cellTable[3][3] = LiveCell:new()

BoardRenderer.renderFromTable(cellTable)

Runtime:addEventListener("tap", function()
    cellTable = BoardIterator.next(cellTable)
    BoardRenderer.renderFromTable(cellTable)
end)
