local BoardRenderer = {}

local CellRenderer
function BoardRenderer.renderFromTable(initCells)
    local initX = 32
    for index, cell in pairs(initCells) do
        CellRenderer.render(cell, 32+64*(index-1), 32, 64, 64)
    end
end

function BoardRenderer.setCellRenderer(cellRenderer)
    CellRenderer = cellRenderer
end

return BoardRenderer
