describe("GameOfLife", function()

    local liveCell = require("scripts.LiveCell")

    it("Any live cell with fewer than two live neighbours dies, as if caused by under-population.", function()
        local nextCell = liveCell.next(1)
        assert.are.equal("DEAD", nextCell.type)
    end)

    it("Any live cell with two or three live neighbours lives on to the next generation.", function()
        local nextCell = liveCell.next(2)
        assert.are.equal("LIVE", nextCell.type)
    end)

    it("Any live cell with more than three live neighbours dies, as if by overcrowding.", function()
        local nextCell = liveCell.next(4)
        assert.are.equal("DEAD", nextCell.type)
    end)
end)
