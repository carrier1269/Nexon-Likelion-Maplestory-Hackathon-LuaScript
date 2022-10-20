--@ BeginProperty
--@ SyncDirection=None
number refreshTime = "0"
--@ EndProperty

--@ BeginProperty
--@ SyncDirection=None
Entity item = "nil"
--@ EndProperty

--@ BeginProperty
--@ SyncDirection=None
table itemTable = "{}"
--@ EndProperty

--@ BeginProperty
--@ SyncDirection=None
Component myRank = ":52"
--@ EndProperty

--@ BeginProperty
--@ SyncDirection=None
Component myName = ":52"
--@ EndProperty

--@ BeginProperty
--@ SyncDirection=None
Component myScore = ":52"
--@ EndProperty

--@ BeginMethod
--@ MethodExecSpace=ClientOnly
void OnBeginPlay()
{
local currentPath = self.Entity.Path
self.item = _EntityService:GetEntityByPath(currentPath .."/ScrollLayout/Item")
self.item.Enable = false
self.myRank = _EntityService:GetEntityByPath(currentPath.."/My_rank/Text_rank").TextComponent
self.myName = _EntityService:GetEntityByPath(currentPath.."/My_rank/Text_name").TextComponent
self.myScore = _EntityService:GetEntityByPath(currentPath.."/My_rank/Text_score").TextComponent
}
--@ EndMethod

--@ BeginMethod
--@ MethodExecSpace=ClientOnly
void OnUpdate(number delta)
{
if self.refreshTime > 0 then
    self.refreshTime = self.refreshTime - delta
    return
end
self.refreshTime = 1
local playerEntitiesDic = _UserService.UserEntities         -- 게임에 접속해 있는 모든 플레이어 엔티티를 딕셔너리 형태로 받아옵니다.
    if playerEntitiesDic.Count == 0 then
    return
end
local players = {}
for key, value in pairs(playerEntitiesDic) do
	if value ~=nil then
       table.insert(players, value)
	end
end
if #players > #self.itemTable then
	local addCnt = #players - #self.itemTable
	for i = 1,addCnt,1 
	do
		local tableIndex = #self.itemTable + 1
		self.itemTable[tableIndex] = self.item:Clone("Item"..tableIndex)
	end
elseif #players < #self.itemTable then
	for i = #players + 1,#self.itemTable,1 
	do
   		self.itemTable[i].Enable = false
	end
end
table.sort(players,function(a,b) return a.TransformComponent.Position.x> b.TransformComponent.Position.x  end);
local index = 1
for key, player in pairs(players) do
	local currentItem = self.itemTable[index]
	currentItem.Enable = true
	local textRank = _EntityService:GetEntityByPath(currentItem.Path .."/Text_rank")
	local textId = _EntityService:GetEntityByPath(currentItem.Path  .."/Text_name")
	local textScore =  _EntityService:GetEntityByPath(currentItem.Path  .."/Text_score")
	textRank.TextComponent.Text = tostring(index) 
	textId.TextComponent.Text = player.PlayerComponent.Nickname
	textScore.TextComponent.Text = math.ceil(player.TransformComponent.Position.x)	
	if player == _UserService.LocalPlayer then
		self.myRank.Text = textRank.TextComponent.Text
		self.myName.Text = textId.TextComponent.Text
		self.myScore.Text = textScore.TextComponent.Text		
	end
     --실제 스코어로 대체하세요
    index = index + 1
end


}
--@ EndMethod

