--This script was written by Erik M (toast_tries_art) on 11.01.2025
-- It is intended to be used in Aseprite, making small sprites bigger to be exported with higher resolution

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
    app.alert("Sprite size increased by 200%!")
end

resizeSprite(2) -- Increase size by 200%
