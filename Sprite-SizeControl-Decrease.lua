--This script was written by Erik M (toast_tries_art) on 11.01.2025
-- It is intended to be used in Aseprite, and as a counter action to the Increase

local function resizeSprite(scaleFactor)
    local sprite = app.activeSprite
    if not sprite then
        app.alert("No active sprite found!")
        return
    end

    -- Get current sprite dimensions
    local width = sprite.width
    local height = sprite.height

    -- Apply scaling
    sprite:resize(math.floor(width * scaleFactor), math.floor(height * scaleFactor))
    app.alert("Sprite size decreased to 50%!")
end

resizeSprite(0.5) -- Decrease size to 50%
