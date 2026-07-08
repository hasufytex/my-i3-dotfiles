-- Extra gap between the file icon and the name (default preset uses one space)
function Entity:icon()
	local icon = self._file:icon()
	if not icon then
		return ""
	elseif self._file.is_hovered then
		return icon.text .. "  "
	else
		return ui.Line(icon.text .. "  "):style(icon.style)
	end
end
