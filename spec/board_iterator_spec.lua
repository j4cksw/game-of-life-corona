describe("BoardIterator", function()

    local LiveCell = require("scripts.LiveCell")
    local BoardIterator = require("scripts.BoardIterator")

    it("call next on each cell and assign to new board", function()
        local cellTable = {
            { LiveCell:new() }
        }
        spy.on(cellTable[1][1], "next")

        BoardIterator.next(cellTable)

        assert.spy(cellTable[1][1].next).was_called()
    end)
end)
