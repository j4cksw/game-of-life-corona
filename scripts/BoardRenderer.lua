local BoardRenderer = {}

local CellRenderer = require("scripts.CellRenderer")

local cellSize = {
    width = 64,
    height = 64
}

local initX = 32

local function calcualteXByIndex(index)
    return initX + cellSize.width * (index -1)
end

function BoardRenderer.renderFromTable(initCells)
    for index, cell in pairs(initCells) do
        CellRenderer.render(cell, calcualteXByIndex(index), 32, cellSize.width, cellSize.height)
    end
end

function BoardRenderer.setCellRenderer(cellRenderer)
    CellRenderer = cellRenderer
end

return BoardRenderer
