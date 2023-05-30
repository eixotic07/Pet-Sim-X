-- this script would not be made without Amity!!

local SharedData = getupvalue(getupvalue(getrawmetatable(require(game:GetService("ReplicatedStorage"):WaitForChild("Library"):WaitForChild("Client"):WaitForChild("Network"))).__index,1).Invoke,2)
local HashStorage = getupvalue(getupvalue(SharedData, 2), 1)
local RemoteStorage = getupvalue(getupvalue(SharedData, 1), 1)

local remotesTable = {
	["acf128bccecdf328cd5b35e8682c5c9b"] = "UseBoost",
	["1e17d558d7d4cd8a7ccd3f11ba55774c"] = "UseFuseMachine",
	["id4d540c83fbad445095f1ccea46ef43fa"] = "UseGoldMachine"
}

for i = 1,#SharedData do
    for i,v in next, HashStorage[i] do
        HashStorage[v] = i
    end
end

for i = 1,#RemoteStorage do
    for i,v in next, RemoteStorage[i] do
        if HashStorage[i] then
            v.Name = RemoteStorage[i]
        else
            for i2,k in pairs(remotesTable) do
            	if i == i2 then
            	v.Name = k
            end
        end
    end
end

return RemoteStorage
