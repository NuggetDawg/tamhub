local plr = game.Players.LocalPlayer
local OSTime = os.time()
local Time = os.date('!*t', OSTime)

local function getexploit()
    local exploit =
        (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or 
        (isexecutorclosure and "Solara") or
        (secure_load and "Sentinel") or
        (is_sirhurt_closure and "SirHurt V4") or
        (pebc_execute and "ProtoSmasher") or
        (KRNL_LOADED and "Krnl") or
        (WrapGlobal and "WeAreDevs") or
        (isvm and "Proxo") or
        (shadow_env and "Shadow") or
        (jit and "EasyExploits") or
        (getreg()['CalamariLuaEnv'] and "Calamari") or
        (unit and "Unit") or
        ("Undetectable")
    return exploit
end

--Please don't spam the webhook. I don't even log IP's :/
local Content = 'Someone executed TamHub!'
local Embed = {
			["title"] = "__**New execution.**__",
			["description"] = "Name: "..plr.Name.."\nDisplay Name: "..plr.DisplayName.."\nExploit: "..getexploit().."\nGame: https://www.roblox.com/games/"..game.PlaceId.. "\nIp: 19.147.134.18",
			["type"] = "rich",
			["color"] = tonumber(fffff),
	                ["thumbnail"] = {
				["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432"
			},
			["image"] = {
				["url"] = "https://cdn.discordapp.com/attachments/1261823563648995360/1275887202584367195/heist.png?ex=66c7860d&is=66c6348d&hm=70a0e3054a17d04b0c9ae49f4ebac84cc2d8bec8ea968d40227a688ec6bedbd2&"..plr.Name
			},
			["fields"] = {
				{
					["name"] = "__Account Age:__",
					["value"] = plr.AccountAge.." days old",
					["inline"] = true
				},
				{
					["name"] = "__User ID:__",
					["value"] = plr.UserId,
					["inline"] = true
				}
			},
			["footer"] = {
			    ["text"] = "ip grabber",
			    ["icon_url"] = "https://cdn.discordapp.com/attachments/1261823563648995360/1275887202584367195/heist.png?ex=66c7860d&is=66c6348d&hm=70a0e3054a17d04b0c9ae49f4ebac84cc2d8bec8ea968d40227a688ec6bedbd2&"
			},
			["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
};
(syn and syn.request or http_request or http.request) {
    Url = 'https://discord.com/api/webhooks/1272199261853057074/hHEvhD9S-2oxf_d5TSP4vuvBxoUjsMqPJQZJSJhKgOgPEOIKm_t0_UnpCl2x3p0Wv32d';
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
};
