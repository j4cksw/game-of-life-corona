describe("CellRenderer", function()

    local LiveCell = require("scripts.LiveCell")

    local fakeRect = {
        setFillColor = function()end
    }

    display = {
        newRect = function()
            return fakeRect
        end
    }

    CellRenderer = require("scripts.CellRenderer")

    before_each(function()
        spy.on(display, "newRect")
        spy.on(fakeRect, "setFillColor")
    end)

    it("should draw cell ractangle whith a given point and size", function()
        local sampleLiveCell = LiveCell:new()

        CellRenderer.render(sampleLiveCell, 32, 32, 64, 64)

        assert.spy(display.newRect).was_called_with(32, 32, 64, 64)
    end)

    it("should fill live cell with white color", function()
        local sampleLiveCell = LiveCell:new()

        CellRenderer.render(sampleLiveCell, 32, 32, 64, 64)

        assert.spy(fakeRect.setFillColor).was_called_with(fakeRect, 1, 1, 1)
    end)

end)
