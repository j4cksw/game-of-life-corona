local BoardRenderer = {}

local CellRenderer = require("scripts.CellRenderer")

local cellSize = {
    width = 64,
    height = 64
}

local initX = 32
local initY = 32

local function calcualteXByIndex(index)
    return initX + cellSize.width * (index -1)
end

local function calculateYByIndex(index)
    return initY + cellSize.height * (index -1)
end

function BoardRenderer.renderFromTable(initCells)
    for rowIndex, row in pairs(initCells) do
        for cellIndex, cell in pairs(row) do
            CellRenderer.render(cell,
                calcualteXByIndex(cellIndex),
                calculateYByIndex(rowIndex), 
                cellSize.width,
                cellSize.height)
        end
    end
end

function BoardRenderer.setCellRenderer(cellRenderer)
    CellRenderer = cellRenderer
end

return BoardRenderer
