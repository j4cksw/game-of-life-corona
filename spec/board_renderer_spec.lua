describe("BoardRenderer", function()

    local LiveCell = require("scripts.LiveCell")

    local BoardRenderer = require("scripts.BoardRenderer")

    local FakeCellRenderer = {
        render = function()end
    }

    before_each(function()
        spy.on(FakeCellRenderer, "render")
        BoardRenderer.setCellRenderer(FakeCellRenderer)
    end)

    it("should call CellRenderer with calculated points for each columns", function()
        local initCells = {
            { LiveCell:new(), LiveCell:new() }
        }

        BoardRenderer.renderFromTable(initCells)

        assert.spy(FakeCellRenderer.render).was_called_with(initCells[1][1], 32, 32, 64, 64)
        assert.spy(FakeCellRenderer.render).was_called_with(initCells[1][2], 96, 32, 64, 64)
    end)

    it("should call CellRenderer with calulated poinst for each rows", function()
        local initCells = {
            { LiveCell:new(), LiveCell:new() },
            { LiveCell:new(), LiveCell:new() }
        }

        BoardRenderer.renderFromTable(initCells)

        assert.spy(FakeCellRenderer.render).was_called_with(initCells[1][1], 32, 32, 64, 64)
        assert.spy(FakeCellRenderer.render).was_called_with(initCells[1][2], 96, 32, 64, 64)
        assert.spy(FakeCellRenderer.render).was_called_with(initCells[2][1], 32, 96, 64, 64)
        assert.spy(FakeCellRenderer.render).was_called_with(initCells[2][2], 96, 96, 64, 64)
    end)

end)
