-- init 
local GetService, IsLoaded, Loaded = game.GetService, game.IsLoaded, game.Loaded; do 
    if not IsLoaded(game) then 
        Loaded.Wait(Loaded);
    end
end

-- variables
local Players, workspace = GetService(game, "Players"), GetService(game, "Workspace");
local Client, Camera = Players.LocalPlayer, workspace.CurrentCamera;

local FindFirstChild, FindFirstChildOfClass, IsA = game.FindFirstChild, game.FindFirstChildOfClass, game.IsA;
local WorldToViewportPoint, RaycastParameters, Raycast = Camera.WorldToViewportPoint, RaycastParams.new, workspace.Raycast;

local insert, find = table.insert, table.find;

-- functions
function IsPlayerVisible(Player)
    assert((Player or IsA(Player, "Player")), "oopsies");
    
    local ClientCharacter, PlayerCharacter = Client.Character, Player.Character;
    if not (ClientCharacter or PlayerCharacter) then return false end 
    
    local ClientHumanoid, PlayerHumanoid = FindFirstChildOfClass(ClientCharacter, "Humanoid"), FindFirstChildOfClass(PlayerCharacter, "Humanoid");
    if not (ClientHumanoid or PlayerHumanoid) or (ClientHumanoid and PlayerHumanoid and not (ClientHumanoid.Health > 0 or PlayerHumanoid.Health > 0)) then return false end
    
    local Root = FindFirstChild(PlayerCharacter, "HumanoidRootPart") or PlayerHumanoid.RootPart;
    if not Root then return false end 
    
    local RootToViewportPoint, IsOnScreen = WorldToViewportPoint(Camera, Root.Position);
    if not IsOnScreen then return false end 
    
    local RaycastConfiguration, RaycastOrigin = RaycastParameters(), Camera.CFrame.Position
    RaycastConfiguration.IgnoreWater = true -- I skidded this function off of the developer forum Lol, but who doesn't? (https://developer.roblox.com/en-us/api-reference/function/WorldRoot/Raycast)
    RaycastConfiguration.FilterType = Enum.RaycastFilterType.Blacklist -- "Blacklist"
    RaycastConfiguration.FilterDescendantsInstances = {ClientCharacter, Camera};

    local Matches = {};
    
    for Index, Limb in next, ({"Head", "HumanoidRootPart"}) do 
        local Part = FindFirstChild(PlayerCharacter, Limb);
        if not Part then continue end 
        
        local RaycastResult = Raycast(workspace, RaycastOrigin, (Part.Position - RaycastOrigin), RaycastConfiguration);
        
        if RaycastResult then
            local RaycastInstance = RaycastResult.Instance;
            
            insert(Matches, tostring(RaycastInstance.IsDescendantOf(RaycastInstance, PlayerCharacter)))
        end
    end
    
    return Matches[1] and Matches[2]
end 

return IsPlayerVisible
