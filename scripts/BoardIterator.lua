local BoardIterator = {}

local LiveNeighborCounter = require("scripts.LiveNeighborCounter")

function BoardIterator.next(cellTable)
    local nextBoard = {}
    for rowIndex, row in pairs(cellTable) do
        table.insert(nextBoard, {})

        for cellIndex, cell in pairs(row) do
            local liveNeighborsCount = LiveNeighborCounter.countNeighborOfCell(cellTable, cellIndex, rowIndex)
            local nextCell = cell:next(liveNeighborsCount)
            table.insert(nextBoard[rowIndex], nextCell)
        end
    end
    return nextBoard
end

function BoardIterator.setLiveNeighborCounter(liveNeighborCounter)
    LiveNeighborCounter = liveNeighborCounter
end

return BoardIterator
