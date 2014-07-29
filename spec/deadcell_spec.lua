describe("DeadCell", function()

    local DeadCell = {
        type = "DEAD"
    }

    function DeadCell:new()
        o = {}
        setmetatable(o, self)
        self.__index = self
        return o
   end

   function DeadCell:next(neightborsCount)
       if neightborsCount == 3 then
           return {
               type = "LIVE"
           }
        end
        return self
   end

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
