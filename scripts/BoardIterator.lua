local BoardIterator = {}

function BoardIterator.next(cellTable)
    for rowIndex, row in pairs(cellTable) do
        for cellIndex, cell in pairs(row) do
            cell.next()
        end
    end 
end

return BoardIterator
