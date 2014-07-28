describe("GameOfLife", function()

    local liveCell = {
        next = function(neighborsCount)
            if neighborsCount < 2 then
            return {
                type = "DEAD"
            }
            else
                return {
                    type = "LIVE"
                }
            end
        end
    }

    it("Any live cell with fewer than two live neighbours dies, as if caused by under-population.", function()
        local nextCell = liveCell.next(1)
        assert.are.equal("DEAD", nextCell.type)
    end)

    it("Any live cell with two or three live neighbours lives on to the next generation.", function()
        local nextCell = liveCell.next(2)
        assert.are.equal("LIVE", nextCell.type)
    end)
end)
