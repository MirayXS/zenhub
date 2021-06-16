local Emojis = {
    '1453543279/👑'
}

local SupportedEmojis = {'😬','🦇','⭐','🖤','💫','🌕','🥶','🥶🥵','🦋','✨','✅','🧐','💋','❄️','🌟','🏈','🌈','🔞','💦','💎','⚡','🌹','🌸','🤡','⛄','😋','😏','💀','😈','💯','✌','💖','👑','🌚','👻','🍑','😳','🍉',🐾','😇','🍆','🔫'}

function zennames()
    for _,Player in pairs(game:GetService('Players'):GetChildren()) do
        if Players:FindFirstChild(Player.Name) then
            if not Player.Character.UpperTorso:FindFirstChild('OriginalSize') then 
                if not string.find(Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName, '%[') then
                    Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎]' .. Player.DisplayName)
                end
            end
        end 
    end
    for _,Player in pairs(game:GetService('Players'):GetChildren()) do
        for i,v in pairs(SupportedEmojis) do
            local CheckEmoji = v
            if table.find(Emojis, (tostring(Player.UserId) .. '/' .. v)) then
                if Player.Character then
                    Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[' .. v .. '] ' .. Player.DisplayName)
                end
            end
        end
    end
end

local success,err = pcall(zennames)
