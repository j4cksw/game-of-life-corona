local CellRenderer = {}

function CellRenderer.render(cell, x, y, width, height)
    local cellRect = display.newRect(x, y, width, height)
    cellRect:setFillColor(cell.color[1], cell.color[2], cell.color[3])
end

return CellRenderer
