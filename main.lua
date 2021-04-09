G_Plugin = nil

function Initialize(Plugin)
	Plugin:SetName("NoRain")
	Plugin:SetVersion(1)

	G_Plugin = Plugin

    cPluginManager:AddHook(cPluginManager.HOOK_WEATHER_CHANGING, OnWeatherChanging);

	LOG("Initialised " .. Plugin:GetName() .. " v." .. Plugin:GetVersion())
	return true
end

function OnDisable()
	LOG(G_Plugin:GetName() .. " is shutting down...")
end

function OnWeatherChanging(World, Weather)
    if Weather ~= wSunny then
		LOG("[" .. G_Plugin:GetName() .. "] Stoppin ze rain")
        return true
    end
end
