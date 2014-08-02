display.setStatusBar( display.HiddenStatusBar )

local boardRenderer = require("scripts.BoardRenderer")
local LiveCell = require("scripts.LiveCell")

local initTable = { LiveCell:new(), LiveCell:new() }

boardRenderer.renderFromTable(initTable)
