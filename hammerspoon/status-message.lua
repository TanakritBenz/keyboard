local drawing = require 'hs.drawing'
local geometry = require 'hs.geometry'
local screen = require 'hs.screen'
local styledtext = require 'hs.styledtext'

local statusmessage = {}
statusmessage.new = function(messageText)
  local buildParts = function(messageText)
    local frame = screen.primaryScreen():frame()

    local styledTextAttributes = { font = { name = 'Menlo', size = 24 } }

    local styledText = styledtext.new('🔨 ' .. messageText, styledTextAttributes)

    local styledTextSize = drawing.getTextDrawingSize(styledText)
    local textRect = {
      -- x = frame.w - styledTextSize.w - 40,
      -- y = frame.h - styledTextSize.h,
      x = (frame.w - styledTextSize.w) / 2,
      y = (frame.h - styledTextSize.h) / 2,
      w = styledTextSize.w + 40,
      h = styledTextSize.h + 40,
    }
    local text = drawing.text(textRect, styledText):setAlpha(0.7)

    local background = drawing.rectangle(
      {
        -- x = frame.w - styledTextSize.w - 45,
        -- y = frame.h - styledTextSize.h - 3,
        x = (frame.w - styledTextSize.w) / 2,
        y = (frame.h - styledTextSize.h) / 2,
        w = styledTextSize.w + 15,
        h = styledTextSize.h + 6
      }
    )
    background:setRoundedRectRadii(10, 10)
    background:setFillColor({ red = 100, green = 100, blue = 100, alpha=0.6 })

    return background, text
  end

  return {
    _buildParts = buildParts,
    show = function(self)
      self:hide()

      self.background, self.text = self._buildParts(messageText)
      self.background:show()
      self.text:show()
    end,
    hide = function(self)
      if self.background then
        self.background:delete()
        self.background = nil
      end
      if self.text then
        self.text:delete()
        self.text = nil
      end
    end,
    notify = function(self, seconds)
      local seconds = seconds or 1
      self:show()
      hs.timer.delayed.new(seconds, function() self:hide() end):start()
    end
  }
end

return statusmessage
