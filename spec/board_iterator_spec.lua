describe("BoardIterator", function()

    local LiveCell = require("scripts.LiveCell")
    local BoardIterator = require("scripts.BoardIterator")

    local fakeLiveNeighborsCount = 0

    local MockLiveNeighborCounter = {
        countNeighborOfCell = function()
            return fakeLiveNeighborsCount
        end
    }

    before_each(function()
        spy.on(MockLiveNeighborCounter, "countNeighborOfCell")
        BoardIterator.setLiveNeighborCounter(MockLiveNeighborCounter)
    end)

    it("should count the live neighbors of each cell", function()
        local cellTable = {
            { LiveCell:new() }
        }

        BoardIterator.next(cellTable)

        assert.spy(MockLiveNeighborCounter.countNeighborOfCell).was_called_with(cellTable, 1, 1)
    end)

    it("call next on each cell and assign to new board", function()
        local cellTable = {
            { LiveCell:new() }
        }
        stub(cellTable[1][1], "next")

        fakeLiveNeighborsCount = 255

        BoardIterator.next(cellTable)

        assert.spy(cellTable[1][1].next).was_called_with(cellTable[1][1], fakeLiveNeighborsCount)
    end)
end)
