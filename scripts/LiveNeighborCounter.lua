local LiveNeighborCounter = {}

function LiveNeighborCounter.countNeighborOfCell(cellTable, x, y)
    local result = 0

    pcall(function()
        result = result + cellTable[y][x+1].value
        result = result + cellTable[y+1][x].value
        result = result + cellTable[y+1][x+1].value
    end)

    return result
end

return LiveNeighborCounter
