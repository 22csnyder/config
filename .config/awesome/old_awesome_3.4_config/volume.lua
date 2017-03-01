local pulseaudio = require("pulseaudio")
local pulse = pulseaudio:Create()

volume = { widget = widget({ type = "textbox", name = "tb_volume",align = "right" })}

local function format_volume()
    local sr, sg, sb, er, eg, eb, ir, ig, ib, color, text

     -- starting colour
    sr, sg, sb = 0x3F, 0x3F, 0x3F
    -- ending colour
    er, eg, eb = 0xDC, 0xDC, 0xCC

    ir = pulse.Volume * (er - sr) + sr
    ig = pulse.Volume * (eg - sg) + sg
    ib = pulse.Volume * (eb - sb) + sb   
    color = string.format("%.2x%.2x%.2x",ir,ig,ib)

    if pulse.Mute then
        text = " <span color='red' background='#" .. color .. "'> M </span>"
    else
        text = " <span background='#" .. color .. "'>   </span>"
    end

    return text
end

function volume:Update()
    pulse:UpdateState()
    self.widget.text = format_volume()
end

local volume_timer = timer({ timeout = 1 })
volume_timer:add_signal("timeout", function() volume:Update() end)
volume_timer:start()

