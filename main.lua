local boardRenderer = require("script.BoardRenderer")
local LiveCell = require("script.LiveCell")

local initTable = { LiveCell:new() }

boardRenderer.renderFromTable(initTable)
