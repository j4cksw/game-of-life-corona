local BoardRenderer = {}

function BoardRenderer.renderFromTable(initCells)
    local initX = 32
    for index, cell in pairs(initCells) do
        local cellRect = display.newRect(32+64*(index-1), 32, 64, 64)
        cellRect:setFillColor(1,1,1)
    end
end

return BoardRenderer
