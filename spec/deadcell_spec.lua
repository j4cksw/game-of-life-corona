describe("DeadCell", function()

    local DeadCell = require("scripts.DeadCell")

    it("DeadCell with three neightbors will becom alive", function()
        local deadCell = DeadCell:new()
        local nextCell = deadCell:next(3)
        assert.are.equal("LIVE", nextCell.type)
    end)

    it("should still dead when neighbor less than 3", function()
        local deadCell = DeadCell:new()
        local nextCell = deadCell:next(2)
        assert.are.equal("DEAD", nextCell.type)
    end)
end)
