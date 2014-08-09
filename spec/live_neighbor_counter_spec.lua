describe("LiveNeighborCounter", function()
    it("should return number of live cell of cell at given point", function()
        local LiveNeighborCounter = require("scripts.LiveNeighborCounter")
        local LiveCell = require("scripts.LiveCell")
        local cellTable = {
            { LiveCell:new() }
        }

        local result = LiveNeighborCounter.countNeighborOfCell(cellTable, 1, 1)

        assert.are.equal(0, result)
    end)
end)
