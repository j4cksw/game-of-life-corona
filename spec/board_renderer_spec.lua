describe("BoardRenderer", function()

    local LiveCell = require("scripts.LiveCell")

    display = {
        newRect = function()end
    }

    local boardRenderer = {
        renderFromTable = function(initCells)
            for index, cell in pairs(initCells) do
                display.newRect()
            end
        end
    }

    before_each(function()
        spy.on(display, "newRect")
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

end)
