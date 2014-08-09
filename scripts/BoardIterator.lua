local BoardIterator = {}

local LiveNeighborCounter = require("scripts.LiveNeighborCounter")

function BoardIterator.next(cellTable)
    for rowIndex, row in pairs(cellTable) do
        for cellIndex, cell in pairs(row) do
            local liveNeighborsCount = LiveNeighborCounter.countNeighborOfCell(cellTable, cellIndex, rowIndex)
            cell:next(liveNeighborsCount)
        end
    end
end

function BoardIterator.setLiveNeighborCounter(liveNeighborCounter)
    LiveNeighborCounter = liveNeighborCounter
end

return BoardIterator
