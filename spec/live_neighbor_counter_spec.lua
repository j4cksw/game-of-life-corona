describe("LiveNeighborCounter", function()
    local LiveNeighborCounter = require("scripts.LiveNeighborCounter")
    local LiveCell = require("scripts.LiveCell")
    local DeadCell = require("scripts.DeadCell")

    it("should return number of live cell of cell at given point", function()
        local cellTable = {
            { DeadCell:new() }
        }

        local result = LiveNeighborCounter.countNeighborOfCell(cellTable, 1, 1)

        assert.are.equal(0, result)
    end)

    it("should return number of live cell of cell at given point", function()
        local cellTable = {
            { DeadCell:new(), LiveCell:new() }
        }

        local result = LiveNeighborCounter.countNeighborOfCell(cellTable, 1, 1)

        assert.are.equal(1, result)
    end)

    it("should return number of live cell of cell at given point", function()
        local cellTable = {
            { DeadCell:new(), LiveCell:new() },
            { LiveCell:new(), LiveCell:new() }
        }

        local result = LiveNeighborCounter.countNeighborOfCell(cellTable, 1, 1)

        assert.are.equal(3, result)
    end)
end)
