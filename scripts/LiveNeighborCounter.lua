local LiveNeighborCounter = {}

function LiveNeighborCounter.countNeighborOfCell(cellTable, x, y)
    local result = 0

    local neighborPoints = {
        { y = y, x = x-1 },
        { y = y, x = x+1 },
        { y = y+1, x = x },
        { y = y+1, x = x+1 },
        { y = y+1, x = x-1 },
        { y = y-1, x = x },
        { y = y-1, x = x-1 },
        { y = y-1, x = x+1 },
    }

    for index, entry in pairs(neighborPoints) do
        pcall(function()
            result = result + cellTable[entry.y][entry.x].value
        end)
    end

    return result
end

return LiveNeighborCounter
