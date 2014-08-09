describe("BoardRenderer", function()

    local fakeRect = {
        setFillColor = function()end
    }

    display = {
        newRect = function()
            return fakeRect
        end
    }

    local LiveCell = require("scripts.LiveCell")

    local boardRenderer = require("scripts.BoardRenderer")

    before_each(function()
        spy.on(display, "newRect")
        spy.on(fakeRect, "setFillColor")
    end)

    it("should not draw any cell when given empty table", function()
        local initCells = {}

        boardRenderer.renderFromTable(initCells)

        assert.spy(display.newRect).was_not_called()
    end)

    it("should draw cell ractangle when given table", function()
        local initCells = { LiveCell:new() }

        boardRenderer.renderFromTable(initCells)

        assert.spy(display.newRect).was_called_with(32, 32, 64, 64)
    end)

    it("should draw cell ractangle when given table", function()
        local initCells = { LiveCell:new(), LiveCell:new() }

        boardRenderer.renderFromTable(initCells)

        assert.spy(display.newRect).was_called_with(32, 32, 64, 64)
        assert.spy(display.newRect).was_called_with(96, 32, 64, 64)
    end)

end)
