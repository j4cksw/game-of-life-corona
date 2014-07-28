local LiveCell = {}

LiveCell.next = function(neighborsCount)
    if neighborsCount < 2 then
        return {
            type = "DEAD"
        }
    elseif neighborsCount > 3 then
        return {
            type = "DEAD"
        }
    else
        return {
            type = "LIVE"
        }
    end
end

return LiveCell
