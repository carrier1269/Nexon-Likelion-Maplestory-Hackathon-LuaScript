
 ?
 64fb80cce119414788c3a1697128f20c 49894c1087b7415daa3cc5d1c9929a600codeblock://0ff0ddbb-1dea-4b61-9392-b965afafe45c"x-mod/codeblock2??{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "0ff0ddbb-1dea-4b61-9392-b965afafe45c",
    "Language": 1,
    "Name": "MyUser",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-09-22T00:54:26.597172+09:00",
    "Properties": [],
    "Methods": [],
    "EntityEventHandlers": [
      {
        "Name": "HandleTriggerEnterEvent",
        "EventName": "TriggerEnterEvent",
        "Target": "self",
        "Code": "-- Parameters\nlocal TriggerBodyEntity = event.TriggerBodyEntity\n--------------------------------------------------------\nself.Entity.RigidbodyComponent:AddForce(Vector2(5,0))\n\nself.Entity.PlayerComponent.Hp = self.Entity.PlayerComponent.Hp - 100",
        "Scope": 0,
        "ExecSpace": 0
      }
    ]
  }X?;
 95a12d443be948dab07b5cd84966178a 49894c1087b7415daa3cc5d1c9929a600codeblock://15873444-8d16-4d28-9091-9c623fda5224"x-mod/codeblock2?:?:{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "15873444-8d16-4d28-9091-9c623fda5224",
    "Language": 1,
    "Name": "UIPopup",
    "Type": 5,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-09-17T16:11:36.5593132+09:00",
    "Properties": [
      {
        "Type": "Component",
        "DefaultValue": "3606e39d-32de-427e-8d23-b38af810a3b4:52",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "message"
      },
      {
        "Type": "Component",
        "DefaultValue": "94a274e4-4111-40f1-924d-c95a3a1f14d5:9",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "btnOk"
      },
      {
        "Type": "Component",
        "DefaultValue": "0f5de49b-2adc-409a-816d-15aa43df8e0d:9",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "btnCancel"
      },
      {
        "Type": "Entity",
        "DefaultValue": "fb7a3b06-7026-4590-8efe-bb33416dd8f9",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "popupGroup"
      },
      {
        "Type": "Entity",
        "DefaultValue": "aa954759-0e39-430f-85fa-80bf2e5fe31d",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "popup"
      },
      {
        "Type": "any",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "onOk"
      },
      {
        "Type": "any",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "onCancel"
      },
      {
        "Type": "number",
        "DefaultValue": "0.15",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "duration"
      },
      {
        "Type": "number",
        "DefaultValue": "0.5",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "from"
      },
      {
        "Type": "number",
        "DefaultValue": "1",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "to"
      },
      {
        "Type": "boolean",
        "DefaultValue": "false",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "isOpen"
      },
      {
        "Type": "boolean",
        "DefaultValue": "false",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "isTweenPlaying"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "tweenEventId"
      },
      {
        "Type": "any",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "okHandler"
      },
      {
        "Type": "any",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "cancelHandler"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "string",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "message"
          },
          {
            "Type": "any",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "onOk"
          },
          {
            "Type": "any",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "onCancel"
          }
        ],
        "Code": "if self.isOpen == true then\n\treturn\nend\nself.isOpen = true\nself.popupGroup.Enable = true\nself.message.Text = message\nself.onOk = onOk\nself.onCancel = onCancel\n\n\nself.okHandler = self.btnOk.Entity:ConnectEvent(ButtonClickEvent,self.OnClickOk)\nself.cancelHandler = self.btnCancel.Entity:ConnectEvent(ButtonClickEvent,self.OnClickCancel)\nself:StartTween(true)",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "Open"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "if self.isTweenPlaying == true then\n\treturn\nend\nif self.onOk ~= nil then\n\tself.onOk()\n\tself.onOk = nil\nend\nself:Close()",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "OnClickOk"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "if self.isTweenPlaying == true then\n\treturn\nend\nif self.onCancel ~= nil then\n\tself.onCancel()\n\tself.onCancel = nil\nend\nself:Close()",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "OnClickCancel"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "self.btnOk.Entity:DisconnectEvent(ButtonClickEvent,self.okHandler)\nself.btnCancel.Entity:DisconnectEvent(ButtonClickEvent,self.cancelHandler)\nself:StartTween(false)",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "Close"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "boolean",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "open"
          }
        ],
        "Code": "\nlocal transform = self.popup.UITransformComponent\nlocal canvasGroup = self.popupGroup.CanvasGroupComponent \nif open == true then\n\tcanvasGroup.GroupAlpha = 0\n\ttransform.UIScale = Vector3(self.from,self.from,1)\nelse\n\ttransform.UIScale = Vector3(self.to,self.to,1)\nend\nself.isTweenPlaying = true\nlocal time = 0\n\n\nlocal preTime = _UtilLogic.ElapsedSeconds\n\nlocal tween = function()\n\tlocal delta = _UtilLogic.ElapsedSeconds - preTime\n\ttime = time + delta\n\tlocal timeValue = time\t\n\tpreTime = _UtilLogic.ElapsedSeconds\n\n\tif time >= self.duration then\n\t\ttimeValue = self.duration\n\t\tif open == false then\n\t\t\tself.popupGroup.Enable = false\n\t\t\tself.isOpen = false\n\t\tend\n\t\tself.isTweenPlaying = false\n\t\t_TimerService:ClearTimer(self.tweenEventId)\n\n\tend\n\tif open == false then\n\t\ttimeValue = self.duration - timeValue\n\tend\n\tlocal tweenValue = _MODTweenLogic.Ease(EaseType.SineEaseIn,self.from,\n\t\tself.to - self.from,timeValue,self.duration)\n\ttransform.UIScale = Vector3(tweenValue,tweenValue,1)\n\tcanvasGroup.GroupAlpha = timeValue / self.duration\nend\nself.tweenEventId = _TimerService:SetTimerRepeat(tween,1/60)\n",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "StartTween"
      }
    ],
    "EntityEventHandlers": []
  }X?%
 d7b03ad395a6491c910d0865ea758b8e 49894c1087b7415daa3cc5d1c9929a600codeblock://15f009af-ba62-4ec2-8f02-4462e1207098"x-mod/codeblock2?#?#{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "15f009af-ba62-4ec2-8f02-4462e1207098",
    "Language": 1,
    "Name": "UILeaderboard",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-09-17T19:20:42.6151398+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "refreshTime"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "item"
      },
      {
        "Type": "table",
        "DefaultValue": "{}",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "itemTable"
      },
      {
        "Type": "Component",
        "DefaultValue": ":52",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "myRank"
      },
      {
        "Type": "Component",
        "DefaultValue": ":52",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "myName"
      },
      {
        "Type": "Component",
        "DefaultValue": ":52",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "myScore"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local currentPath = self.Entity.Path\nself.item = _EntityService:GetEntityByPath(currentPath ..\"/ScrollLayout/Item\")\nself.item.Enable = false\nself.myRank = _EntityService:GetEntityByPath(currentPath..\"/My_rank/Text_rank\").TextComponent\nself.myName = _EntityService:GetEntityByPath(currentPath..\"/My_rank/Text_name\").TextComponent\nself.myScore = _EntityService:GetEntityByPath(currentPath..\"/My_rank/Text_score\").TextComponent",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "number",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "delta"
          }
        ],
        "Code": "if self.refreshTime > 0 then\n    self.refreshTime = self.refreshTime - delta\n    return\nend\nself.refreshTime = 1\nlocal playerEntitiesDic = _UserService.UserEntities         -- 게임에 접속해 있는 모든 플레이어 엔티티를 딕셔너리 형태로 받아옵니다.\n    if playerEntitiesDic.Count == 0 then\n    return\nend\nlocal players = {}\nfor key, value in pairs(playerEntitiesDic) do\n\tif value ~=nil then\n       table.insert(players, value)\n\tend\nend\nif #players > #self.itemTable then\n\tlocal addCnt = #players - #self.itemTable\n\tfor i = 1,addCnt,1 \n\tdo\n\t\tlocal tableIndex = #self.itemTable + 1\n\t\tself.itemTable[tableIndex] = self.item:Clone(\"Item\"..tableIndex)\n\tend\nelseif #players < #self.itemTable then\n\tfor i = #players + 1,#self.itemTable,1 \n\tdo\n   \t\tself.itemTable[i].Enable = false\n\tend\nend\ntable.sort(players,function(a,b) return a.TransformComponent.Position.x> b.TransformComponent.Position.x  end);\nlocal index = 1\nfor key, player in pairs(players) do\n\tlocal currentItem = self.itemTable[index]\n\tcurrentItem.Enable = true\n\tlocal textRank = _EntityService:GetEntityByPath(currentItem.Path ..\"/Text_rank\")\n\tlocal textId = _EntityService:GetEntityByPath(currentItem.Path  ..\"/Text_name\")\n\tlocal textScore =  _EntityService:GetEntityByPath(currentItem.Path  ..\"/Text_score\")\n\ttextRank.TextComponent.Text = tostring(index) \n\ttextId.TextComponent.Text = player.PlayerComponent.Nickname\n\ttextScore.TextComponent.Text = math.ceil(player.TransformComponent.Position.x)\t\n\tif player == _UserService.LocalPlayer then\n\t\tself.myRank.Text = textRank.TextComponent.Text\n\t\tself.myName.Text = textId.TextComponent.Text\n\t\tself.myScore.Text = textScore.TextComponent.Text\t\t\n\tend\n     --실제 스코어로 대체하세요\n    index = index + 1\nend\n\n",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnUpdate"
      }
    ],
    "EntityEventHandlers": []
  }X?
 77774dbf7f714fc8a8417c3554c219ba 49894c1087b7415daa3cc5d1c9929a600codeblock://1effd604-74ee-404d-b4e5-a79b3554b7a6"x-mod/codeblock2??{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "1effd604-74ee-404d-b4e5-a79b3554b7a6",
    "Language": 1,
    "Name": "UIItemSlot",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-09-17T19:20:55.7842619+09:00",
    "Properties": [
      {
        "Type": "any",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "item"
      },
      {
        "Type": "string",
        "DefaultValue": "\"\"",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "itemGUID"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "any",
            "DefaultValue": "nil",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "item"
          }
        ],
        "Code": "self.item = item\n\nlocal imageEntity = self.Entity:GetChildByName(\"img_slot\")\nimageEntity.SpriteGUIRendererComponent.ImageRUID = item.IconRUID\n\nimageEntity:GetChildByName(\"item_count\").TextComponent.Text = tostring(item.ItemCount)\nself.itemGUID = item.GUID",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "SetData"
      }
    ],
    "EntityEventHandlers": [
      {
        "Name": "HandleButtonClickEvent",
        "EventName": "ButtonClickEvent",
        "Target": "self",
        "Code": "-- Parameters\nlocal Entity = event.Entity\n--------------------------------------------------------\n\nif self.item == nil then\n\treturn\nend\n\n-- TODO: item logic",
        "Scope": 0,
        "ExecSpace": 0
      }
    ]
  }X?#
 050d00df1bfe4063a3f4b7218258889f 49894c1087b7415daa3cc5d1c9929a600codeblock://3dea55df-7510-4514-8be8-ee91d353a1cc"x-mod/codeblock2?"?"{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 1
    },
    "Description": "",
    "Id": "3dea55df-7510-4514-8be8-ee91d353a1cc",
    "Language": 1,
    "Name": "UIInventory",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-09-17T19:20:55.7832618+09:00",
    "Properties": [
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "itemUI"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "scrollView"
      },
      {
        "Type": "dictionary",
        "DefaultValue": "string|Entity",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "SlotItems"
      },
      {
        "Type": "string",
        "DefaultValue": "\"/ui/DefaultGroup/RPGButtons/btn_inventory\"",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "inventoryBtnPath"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "self.itemUI =_EntityService:GetEntityByPath(self.Entity.Path .. \"/InventoryPanel/Inventory_ScrollView/item_slot\")\nself.itemUI:SetEnable(false)\nself.scrollView = _EntityService:GetEntityByPath(self.Entity.Path .. \"/InventoryPanel/Inventory_ScrollView\")\n\n-- add UI Preset/Buttons\nlocal inventoryButton = _EntityService:GetEntityByPath(self.inventoryBtnPath)\nif inventoryButton ~= nil then\n\tlocal openFunc = function()\n\t\tself.Entity.Enable = true\n\tend\n\tif inventoryButton.ButtonComponent == nil then\n\t\tinventoryButton:AddComponent(\"MOD.Core.ButtonComponent\", false)\n\tend\n\tinventoryButton:ConnectEvent(ButtonClickEvent, openFunc)\nend\n\n\nlocal closeButton = _EntityService:GetEntityByPath(self.Entity.Path .. \"/InventoryPanel/CloseButton\")\nlocal closeFunc = function()\n\tself.Entity.Enable = false\nend\n\ncloseButton:ConnectEvent(ButtonClickEvent, closeFunc)",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      }
    ],
    "EntityEventHandlers": [
      {
        "Name": "HandleInventoryItemInitEvent",
        "EventName": "InventoryItemInitEvent",
        "Target": "localPlayer",
        "Code": "-- Parameters\nlocal Entity = event.Entity\nlocal Items = event.Items\n--------------------------------------------------------\n\nfor i, item in pairs(Items) do\n\tlocal itemslot =_SpawnService:Clone(\"Item\", self.itemUI, self.scrollView)\n\titemslot.UIItemSlot:SetData(item)\n\tself.SlotItems[item.GUID] = itemslot\nend",
        "Scope": 0,
        "ExecSpace": 0
      },
      {
        "Name": "HandleInventoryItemAddedEvent",
        "EventName": "InventoryItemAddedEvent",
        "Target": "localPlayer",
        "Code": "-- Parameters\nlocal Entity = event.Entity\nlocal Items = event.Items\n--------------------------------------------------------\nfor i, item in pairs(Items) do\n\tlocal itemslot =_SpawnService:Clone(\"Item\", self.itemUI, self.scrollView)\n\titemslot.UIItemSlot:SetData(item)\n\tself.SlotItems[item.GUID] = itemslot\nend",
        "Scope": 0,
        "ExecSpace": 0
      },
      {
        "Name": "HandleInventoryItemRemovedEvent",
        "EventName": "InventoryItemRemovedEvent",
        "Target": "localPlayer",
        "Code": "-- Parameters\nlocal Entity = event.Entity\nlocal Items = event.Items\n--------------------------------------------------------\nfor\ti,item in pairs(Items) do\n\tif self.SlotItems[item.GUID] ~= nil then\n\t\tself.SlotItems[item.GUID]:Destroy()\n\tend\nend",
        "Scope": 0,
        "ExecSpace": 0
      },
      {
        "Name": "HandleInventoryItemModifiedEvent",
        "EventName": "InventoryItemModifiedEvent",
        "Target": "localPlayer",
        "Code": "-- Parameters\nlocal Entity = event.Entity\nlocal Items = event.Items\n--------------------------------------------------------\nfor\ti,item in pairs(Items) do\n\tif self.SlotItems[item.GUID] ~= nil then\n\t\tself.SlotItems[item.GUID].UIItemSlot:SetData(item)\n\tend\nend",
        "Scope": 0,
        "ExecSpace": 0
      }
    ]
  }X?!
 39a38e2122f44145a2aab229fb097f41 49894c1087b7415daa3cc5d1c9929a600codeblock://63fe07f0-2bcd-462c-8157-d6031e053b5e"x-mod/codeblock2? ? {
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "63fe07f0-2bcd-462c-8157-d6031e053b5e",
    "Language": 1,
    "Name": "UIToast",
    "Type": 5,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-09-17T16:11:36.6151639+09:00",
    "Properties": [
      {
        "Type": "Component",
        "DefaultValue": "7af9e538-1713-49f7-a83e-711c0f4b4a3c:52",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "message"
      },
      {
        "Type": "Entity",
        "DefaultValue": "0bc398f9-29cb-4d89-a78d-f24742b117e8",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "toastGroup"
      },
      {
        "Type": "number",
        "DefaultValue": "2",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "duration"
      },
      {
        "Type": "number",
        "DefaultValue": "0.1",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "tweenDuration"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "tweenEventId"
      },
      {
        "Type": "boolean",
        "DefaultValue": "false",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "isTweenPlaying"
      },
      {
        "Type": "boolean",
        "DefaultValue": "false",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "inited"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "offset"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "string",
            "DefaultValue": "\"\"",
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "message"
          }
        ],
        "Code": "if self.inited == false then\n\tself.inited = true\n\tself.offset = -self.message.Entity.UITransformComponent.anchoredPosition.y\nend\nself.message.Text = message\nself:StartTween()",
        "Scope": 2,
        "ExecSpace": 6,
        "Attributes": [],
        "Name": "ShowMessage"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local canvasGroup = self.message.Entity.CanvasGroupComponent\nlocal transform = self.message.Entity.UITransformComponent\nif self.tweenEventId > 0 then\n\t_TimerService:ClearTimer(self.tweenEventId)\n\tself.tweenEventId = 0\nelse\n\tcanvasGroup.GroupAlpha = 0\nend\nself.toastGroup.Enable = true\nlocal time = 0\n\nlocal preTime = _UtilLogic.ElapsedSeconds\n\nlocal tween = function()\n\tlocal delta = _UtilLogic.ElapsedSeconds - preTime\n\ttime = time + delta\n\tpreTime = _UtilLogic.ElapsedSeconds\n\n\tlocal alpha = canvasGroup.GroupAlpha \n\tif time >= (self.duration + self.tweenDuration) then\t\t\n\t\tself.toastGroup.Enable = false\n\t\t_TimerService:ClearTimer(self.tweenEventId)\n\t\tself.tweenEventId = 0\n\t\talpha = 0\n\telse\n\t\tif time > self.duration then\t\t\t\n\t\t\talpha = alpha - delta / self.tweenDuration\n\t\telse\n\t\t\talpha = alpha + delta / self.tweenDuration\n\t\tend\t\t\t\n\tend\t\n\talpha = math.min(1,math.max(alpha,0))\n\t\n\tcanvasGroup.GroupAlpha = alpha\n\tlocal tweenValue = _MODTweenLogic.Ease(EaseType.SineEaseIn,0,1,alpha,1)\t\n\ttransform.anchoredPosition = Vector2(0,-self.offset * tweenValue)\nend\n\nself.tweenEventId = _TimerService:SetTimerRepeat(tween,1/60)\n\n",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "StartTween"
      }
    ],
    "EntityEventHandlers": []
  }X?
 f8901612b27f4f609af0088e399242bc 49894c1087b7415daa3cc5d1c9929a600codeblock://6bd64af0-014e-4326-bf63-adde9d5f3530"x-mod/codeblock2??{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "6bd64af0-014e-4326-bf63-adde9d5f3530",
    "Language": 1,
    "Name": "UIMyInfoSimple",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-09-22T00:50:57.9894924+09:00",
    "Properties": [
      {
        "Type": "Component",
        "DefaultValue": ":52",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "myName"
      },
      {
        "Type": "Component",
        "DefaultValue": ":43",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "myHP"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local currentPath = self.Entity.Path\nself.myName = _EntityService:GetEntityByPath(currentPath .. \"/Text_name\").TextComponent\nself.myHP = _EntityService:GetEntityByPath(currentPath .. \"/HP_bar\").SliderComponent",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "number",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "delta"
          }
        ],
        "Code": "if _UserService.LocalPlayer == nil then\n\treturn\nend\nlocal player = _UserService.LocalPlayer.PlayerComponent\nif player == nil then\n\treturn\nend\nself.myName.Text = player.Nickname\nself.myHP.Value = player.Hp / player.MaxHp",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnUpdate"
      }
    ],
    "EntityEventHandlers": []
  }X?&
 75c6ad3f17af4e2cb32b5ade0ba1bf0d 49894c1087b7415daa3cc5d1c9929a600codeblock://814d04ec-1441-4768-8f0e-ac9fce078b0a"x-mod/codeblock2?%?%{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "814d04ec-1441-4768-8f0e-ac9fce078b0a",
    "Language": 1,
    "Name": "catnpctalkComponent",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-03T14:28:53.354213+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "count"
      },
      {
        "Type": "any",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "npcTalkData"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "uiNameEntity"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "uiMessageEntity"
      },
      {
        "Type": "Entity",
        "DefaultValue": "cb9d6619-8125-4991-8b9d-54bf71e86322",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "uiTalkPanel"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "uiPortraitEntity"
      },
      {
        "Type": "string",
        "DefaultValue": "\"\"",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "player1"
      },
      {
        "Type": "string",
        "DefaultValue": "\"catnpctalk\"",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "tableName"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "self.count = self.count + 1\nlocal isNameEnable = false\nlocal isPortraitEnable = false\n\nlocal message = self.npcTalkData:GetCell(self.count, \"text\")\n\nif message == nil then\nself.uiTalkPanel.Enable = false\nreturn\nelse\nself.uiTalkPanel.Enable = true\nself.uiMessageEntity.TextComponent.Text = message\nend\n\nlocal name = self.npcTalkData:GetCell(self.count, \"name\")\nlocal portrait = self.npcTalkData:GetCell(self.count, \"portrait\")\n\n\nif name ~= \"\" then\n\tisNameEnable = true\n\tif name == \"player1\" then\n\t\tself.player1 = _UserService.LocalPlayer.NameTagComponent.Name\n\t\tname = self.player1\n\tend\n\tself.uiNameEntity.TextComponent.Text = name\nend\n\n\nif portrait ~= \"\" then\nisPortraitEnable = true\nself.uiPortraitEntity.SpriteGUIRendererComponent.ImageRUID = portrait\nend\n\nself.uiNameEntity.Enable = isNameEnable\nself.uiPortraitEntity.Enable = isPortraitEnable\n\n",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "ShowNextText"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "self.count = 0\nself.npcTalkData = _DataService:GetTable(\"catnpctalk\")\nself.uiNameEntity = _EntityService:GetEntityByPath(\"/ui/UIGroup/TalkPanel/Name\")\nself.uiMessageEntity = _EntityService:GetEntityByPath(\"/ui/UIGroup/TalkPanel/Text\")\nself.uiTalkPanel = _EntityService:GetEntityByPath(\"/ui/UIGroup/TalkPanel\")\nself.uiPortraitEntity = _EntityService:GetEntityByPath(\"/ui/UIGroup/TalkPanel/Portrait\")\n\n",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "any",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "leftMap"
          }
        ],
        "Code": "if leftMap.Name == \"map03\" then\n        self.uiTalkPanel.Enable = false\nend",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnMapLeave"
      }
    ],
    "EntityEventHandlers": [
      {
        "Name": "HandleKeyDownEvent",
        "EventName": "KeyDownEvent",
        "Target": "service:InputService",
        "Code": "-- Parameters\nlocal key = event.key\n--------------------------------------------------------\nif key == KeyboardKey.Z then\n\tself:ShowNextText()\nend\n",
        "Scope": 0,
        "ExecSpace": 0
      }
    ]
  }X?/
 f5245833fc9944d890692443f5627304 49894c1087b7415daa3cc5d1c9929a600codeblock://dded0db0-fb40-4610-93a7-635ff9d97194"x-mod/codeblock2?.?.{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "",
    "Id": "dded0db0-fb40-4610-93a7-635ff9d97194",
    "Language": 1,
    "Name": "NPCTalk",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-10-03T14:28:35.2545617+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "count"
      },
      {
        "Type": "any",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "npcTalkData"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "uiNameEntity"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "uiMessageEntity"
      },
      {
        "Type": "Entity",
        "DefaultValue": "cb9d6619-8125-4991-8b9d-54bf71e86322",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "uiTalkPanel"
      },
      {
        "Type": "Entity",
        "DefaultValue": "nil",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "uiPortraitEntity"
      },
      {
        "Type": "string",
        "DefaultValue": "\"\"",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "player1"
      },
      {
        "Type": "string",
        "DefaultValue": "\"NPCTalk\"",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "tableName"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "self.count = 1\n--self.npcTalkData = _DataService:GetTable(\"NPCTalk\")\nself.npcTalkData = _DataService:GetTable(self.tableName)\nself.uiNameEntity = _EntityService:GetEntityByPath(\"/ui/UIGroup/TalkPanel/Name\")\nself.uiMessageEntity = _EntityService:GetEntityByPath(\"/ui/UIGroup/TalkPanel/Text\")\nself.uiTalkPanel = _EntityService:GetEntityByPath(\"/ui/UIGroup/TalkPanel\")\nself.uiPortraitEntity = _EntityService:GetEntityByPath(\"/ui/UIGroup/TalkPanel/Portrait\")\nif _DataService:GetTable(self.tableName) == nil then\n\tlog(\"올바른 테이블명이 아닙니다. 다시 확인해주세요. 입력된 테이블 명 : \"..self.tableName)\n\treturn\nend\n\nlocal isNameEnable = false\nlocal isPortraitEnable = false\n\n-- GetRowCount() 함수는 테이블의 Row(행) 갯수를 가져옴\nlocal rowCount = self.npcTalkData:GetRowCount()\n\nif rowCount < self.count then\n\t-- rowCount 보다 self.count가 큰 경우 -> 대화가 끝남\n\t-- 대화가 끝나면 대화창을 닫아주고 self.count를 1로 리셋시켜줌\n\t-- self.count 1로 초기화 안해주면 대화 프로세스 한번 끝나면 다시 대화창 안열림\n\tself.uiTalkPanel.Enable = false\n\tself.count = 1\n\treturn\nend\n\nlocal message = self.npcTalkData:GetCell(self.count, \"text\")\nlog(\"엔피씨 대사 : \"..message)\n\nif message == nil then\n\t-- 테이블에 'text' Column이 없는 경우 \n\t-- 대화창 강제로 닫음\n\tself.uiTalkPanel.Enable = false\n\tself.count = 1\n\treturn\nelse\n\tself.uiTalkPanel.Enable = true\n\tself.uiMessageEntity.TextComponent.Text = message\nend\n\nlocal name = self.npcTalkData:GetCell(self.count, \"name\")\nlocal portrait = self.npcTalkData:GetCell(self.count, \"portrait\")\n\nif name ~= \"\" then\n\tisNameEnable = true\n    self.uiNameEntity.TextComponent.Text = name\nend\n\nif portrait ~= \"\" then\n\tisPortraitEnable = true\n\tself.uiPortraitEntity.SpriteGUIRendererComponent.ImageRUID = portrait\nend\n\nself.uiNameEntity.Enable = isNameEnable\nself.uiPortraitEntity.Enable = isPortraitEnable\n\nself.count = self.count + 1",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "ShowNextText"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": null,
        "Code": "-- OnBeginPlay() [Client only]\nself.count = 1\nself.npcTalkData = _DataService:GetTable(\"NPCTalk\")\nself.uiNameEntity = _EntityService:GetEntityByPath(\"/ui/UIGroup/TalkPanel/Name\")\nself.uiMessageEntity = _EntityService:GetEntityByPath(\"/ui/UIGroup/TalkPanel/Text\")\nself.uiTalkPanel = _EntityService:GetEntityByPath(\"/ui/UIGroup/TalkPanel\")\nself.uiPortraitEntity = _EntityService:GetEntityByPath(\"/ui/UIGroup/TalkPanel/Portrait\")",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "any",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "leftMap"
          }
        ],
        "Code": "if leftMap.Name == \"map02\" then\n        self.uiTalkPanel.Enable = false\nend",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnMapLeave"
      }
    ],
    "EntityEventHandlers": [
      {
        "Name": "HandleKeyDownEvent",
        "EventName": "KeyDownEvent",
        "Target": "service:InputService",
        "Code": "-- Parameters\nlocal key = event.key\nif (key == KeyboardKey.Z) then\n\t\tself:ShowNextText()\n\t\nend",
        "Scope": 0,
        "ExecSpace": 0
      }
    ]
  }X?
 0c39f60161c1452fb6f9aa47863f91bc 49894c1087b7415daa3cc5d1c9929a60codeblock://monster"x-mod/codeblock2??{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 2
    },
    "Description": "",
    "Id": "Monster",
    "Language": 1,
    "Name": "Monster",
    "Type": 1,
    "Source": 1,
    "Target": null,
    "ModifyTime": "2022-09-19T22:05:21.1213818+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "100",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "MaxHp"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "Hp"
      },
      {
        "Type": "boolean",
        "DefaultValue": "false",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "RespawnOn"
      },
      {
        "Type": "boolean",
        "DefaultValue": "false",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "IsDead"
      },
      {
        "Type": "number",
        "DefaultValue": "5",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "RespawnDelay"
      },
      {
        "Type": "number",
        "DefaultValue": "0.6",
        "SyncDirection": 3,
        "Attributes": [],
        "Name": "DestroyDelay"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "self.Hp = self.MaxHp",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "OnBeginPlay"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "self.IsDead = true\nlocal stateComponent = self.Entity.StateComponent\nif stateComponent then\n\tstateComponent:ChangeState(\"DEAD\")\n\tlog(\"monster change state to DEAD\")\nend\n\nlocal delayHide = function()\n\tself.Entity:SetVisible(false)\n\tself.Entity:SetEnable(false)\n\t\n\tif self.RespawnOn == false then\n\t\tself.Entity:Destroy()\n\tend\nend\n\n_TimerService:SetTimerOnce(delayHide, self.DestroyDelay)",
        "Scope": 2,
        "ExecSpace": 1,
        "Attributes": [],
        "Name": "Dead"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "log(\"Respawn\")\nself.IsDead = false\nself.Entity:SetVisible(true)\nself.Entity:SetEnable(true)\n\nself.Hp = self.MaxHp\nlocal stateComponent = self.Entity.StateComponent\nif stateComponent then\n\tstateComponent:ChangeState(\"IDLE\")\nend",
        "Scope": 2,
        "ExecSpace": 1,
        "Attributes": [],
        "Name": "Respawn"
      }
    ],
    "EntityEventHandlers": [
      {
        "Name": "HandleHitEvent",
        "EventName": "HitEvent",
        "Target": "self",
        "Code": "-- Parameters\nlocal AttackCenter = event.AttackCenter\nlocal AttackerEntity = event.AttackerEntity\nlocal Damages = event.Damages\nlocal Extra = event.Extra\nlocal FeedbackAction = event.FeedbackAction\nlocal IsCritical = event.IsCritical\nlocal TotalDamage = event.TotalDamage\n--------------------------------------------------------\nif self:IsClient() then return end\n\nlocal originalHp = self.Hp\nself.Hp = self.Hp - TotalDamage\n\nif self.Hp > 0 or originalHp <= 0 then\n\treturn\t\nend\n\nself:Dead()\nlocal timerFunc = function() self:Respawn() end\n\nif self.RespawnOn then\n\t_TimerService:SetTimerOnce(timerFunc, self.RespawnDelay)\nend",
        "Scope": 0,
        "ExecSpace": 0
      }
    ]
  }X?
 a8dd74ae76c5492daa54298a147b7711 49894c1087b7415daa3cc5d1c9929a60codeblock://monsterattack"x-mod/codeblock2??{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 4
    },
    "Description": "",
    "Id": "MonsterAttack",
    "Language": 1,
    "Name": "MonsterAttack",
    "Type": 4,
    "Source": 1,
    "Target": "MOD.Core.AttackComponent",
    "ModifyTime": "2022-10-03T14:27:20.0025677+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "0.03",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "attackInterval"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local monster = self.Entity.Monster\nif not monster then\n\treturn\nend\n\nself._T.shape = BoxShape(Vector2.zero, Vector2.one, 0)\n\n-- sprite 사이즈를 가져와 공격 영역으로 사용한다\n_ResourceService:PreloadAsync({self.Entity.SpriteRendererComponent.SpriteRUID}, function()\n\tlocal clip = _ResourceService:LoadAnimationClipAndWait(self.Entity.SpriteRendererComponent.SpriteRUID)\n\tlocal firstFrameSprite = clip.Frames[1].FrameSprite\n\tlocal firstSpriteSizeInPixel = Vector2(firstFrameSprite.Width, firstFrameSprite.Height)\n\tlocal ppu = firstFrameSprite.PixelPerUnit\n\n\tself._T.spriteSize = firstSpriteSizeInPixel / ppu\n\tself._T.positionOffset = (firstSpriteSizeInPixel / 2 - firstFrameSprite.PivotPixel:ToVector2()) / ppu\n\t\n\t_TimerService:SetTimerRepeat(function() \n\t\tif monster.IsDead == false then\n\t\t\tself:AttackNear()\n\t\tend\n\tend, self.attackInterval)\nend)",
        "Scope": 2,
        "ExecSpace": 1,
        "Attributes": [],
        "Name": "OnBeginPlay"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local transformComponent = self.Entity.TransformComponent\n\nif isvalid(transformComponent) then\n\tlocal worldPosition = transformComponent.WorldPosition\n\tlocal scaleX = transformComponent.Scale.x\n\tlocal scaleY = transformComponent.Scale.y\n\tlocal radian = math.rad(transformComponent.ZRotation)\n\tlocal offsetX = math.cos(radian) * self._T.positionOffset.x * scaleX - math.sin(radian) * self._T.positionOffset.y * scaleY\n\tlocal offsetY = math.sin(radian) * self._T.positionOffset.x * scaleX + math.cos(radian) * self._T.positionOffset.y * scaleY\n\tself._T.shape.Size = Vector2(self._T.spriteSize.x * math.abs(scaleX), self._T.spriteSize.y * math.abs(scaleY))\n\tself._T.shape.Position = Vector2(worldPosition.x + offsetX, worldPosition.y + offsetY)\n\tself._T.shape.Angle = transformComponent.ZRotation\nend\n\nself:AttackFast(self._T.shape, nil, CollisionGroups.Player)",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "AttackNear"
      },
      {
        "Return": {
          "Type": "boolean",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "Entity",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "defender"
          },
          {
            "Type": "string",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "attackInfo"
          }
        ],
        "Code": "if isvalid(defender.PlayerComponent) == false then\n\treturn false\nend\n\nreturn __base:IsAttackTarget(defender, attackInfo)",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "IsAttackTarget"
      }
    ],
    "EntityEventHandlers": []
  }X?"
 41780de57572411ebd3b696de78de11b 49894c1087b7415daa3cc5d1c9929a60codeblock://playerattack"x-mod/codeblock2?"?!{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 3
    },
    "Description": "",
    "Id": "PlayerAttack",
    "Language": 1,
    "Name": "PlayerAttack",
    "Type": 4,
    "Source": 1,
    "Target": "MOD.Core.AttackComponent",
    "ModifyTime": "2022-09-20T17:21:32.4621717+09:00",
    "Properties": [],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "self._T.shape = BoxShape(Vector2.zero, Vector2.one, 0)",
        "Scope": 2,
        "ExecSpace": 1,
        "Attributes": [],
        "Name": "OnBeginPlay"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local playerController = self.Entity.PlayerControllerComponent\nlocal transform = self.Entity.TransformComponent\nif playerController and transform then\n\tlocal worldPosition = transform.WorldPosition\n\tlocal attackOffset = Vector2(worldPosition.x + 0.5 * playerController.LookDirectionX, worldPosition.y + 0.5)\n\tself._T.shape.Position = attackOffset\n\t\n\tself:AttackFast(self._T.shape, nil, CollisionGroups.Monster)\nend",
        "Scope": 2,
        "ExecSpace": 1,
        "Attributes": [],
        "Name": "AttackNormal"
      },
      {
        "Return": {
          "Type": "int",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "Entity",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "attacker"
          },
          {
            "Type": "Entity",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "defender"
          },
          {
            "Type": "string",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "attackInfo"
          }
        ],
        "Code": "return 50",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "CalcDamage"
      },
      {
        "Return": {
          "Type": "boolean",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "Entity",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "attacker"
          },
          {
            "Type": "Entity",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "defender"
          },
          {
            "Type": "string",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "attackInfo"
          }
        ],
        "Code": "return _UtilLogic:RandomDouble() < 0.3",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "CalcCritical"
      },
      {
        "Return": {
          "Type": "number",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "return 2",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "GetCriticalDamageRate"
      }
    ],
    "EntityEventHandlers": [
      {
        "Name": "HandlePlayerActionEvent",
        "EventName": "PlayerActionEvent",
        "Target": "self",
        "Code": "-- Parameters\nlocal ActionName = event.ActionName\nlocal PlayerEntity = event.PlayerEntity\n--------------------------------------------------------\nif self:IsClient() then return end\n\nif ActionName == \"Attack\" then\n\tself:AttackNormal()\nend",
        "Scope": 0,
        "ExecSpace": 0
      }
    ]
  }X?
 89d03b7869e14723a2d96a535f75b740 49894c1087b7415daa3cc5d1c9929a60codeblock://playerhit"x-mod/codeblock2?
?
{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 2
    },
    "Description": "",
    "Id": "PlayerHit",
    "Language": 1,
    "Name": "PlayerHit",
    "Type": 4,
    "Source": 1,
    "Target": "MOD.Core.HitComponent",
    "ModifyTime": "2022-09-19T22:05:16.6423923+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "1",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "ImmuneCooldown"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "LastHitTime"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "boolean",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local currentTime = _UtilLogic.ElapsedSeconds\nif self.LastHitTime + self.ImmuneCooldown < currentTime then\n\tself.LastHitTime = _UtilLogic.ElapsedSeconds\n\treturn true\nend\n\nreturn false",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "IsHitTarget"
      }
    ],
    "EntityEventHandlers": []
  }X?7
 bfd6ff2fd8a44e53ac1bdac59b4e3b08 49894c1087b7415daa3cc5d1c9929a60codeblock://playerskill"x-mod/codeblock2?6?6{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 2
    },
    "Description": "",
    "Id": "PlayerSkill",
    "Language": 1,
    "Name": "PlayerSkill",
    "Type": 4,
    "Source": 1,
    "Target": "MOD.Core.AttackComponent",
    "ModifyTime": "2022-10-03T14:26:26.6202124+09:00",
    "Properties": [
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "SkillCooldown"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "LastSkillUseTime"
      },
      {
        "Type": "Component",
        "DefaultValue": "8705e648-c52a-4744-b52e-6ed7b80acc75:25",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "SkillButtonImage"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "if self.Entity ~= _UserService.LocalPlayer then\n\treturn\nend\n\nlocal conditionFunc = function()\n\tif self.Entity.StateComponent.CurrentStateName == \"DEAD\" then\n\t\treturn false\n\tend\n\tlocal current = _UtilLogic.ElapsedSeconds\n\tif self.LastSkillUseTime + self.SkillCooldown < current then\n\t\treturn true\n\tend\n\treturn false\nend\n\nself.Entity.PlayerControllerComponent:SetActionKey(KeyboardKey.Q, \"Skill\", conditionFunc)",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "OnBeginPlay"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "-- Effect\nlocal position = self.Entity.TransformComponent.Position\nposition = Vector2(position.x, position.y)\n\nlocal playerController = self.Entity.PlayerControllerComponent\nlocal lookDirectionX = playerController.LookDirectionX\nposition = position + Vector2(lookDirectionX * 0.2, 0)\n\nlocal length = 0\n\nlocal flipX = false\nif lookDirectionX == 1 then flipX = true end\nlocal args = { [\"FlipX\"] = flipX }\n\t\n_EffectService:PlayEffect(\"a0ed97b38ce04e0ba8c2b6141a859d31\",\nself.Entity, position, 0, Vector2(1.5, 1.5), length, args)\nself:PlaySkillUseSound()\n\nlocal attackPosition = position + Vector2(lookDirectionX * 1.75, 0)\n-- Delay Attack\nlocal delayAttack = function()\n\tlocal size = Vector2(3.5, 1.5) \n\tlocal defenderComponents = self:AttackFrom(size, attackPosition, nil)\n\t\n\tfor i, component in pairs(defenderComponents) do\n\t\tlocal defenderEntity = component.Entity\n\t\tlocal position = defenderEntity.TransformComponent.Position\n\t\tposition = Vector2(position.x, position.y)\n\t\t_EffectService:PlayEffect(\"2e438afe70924bc1a6ae02d5f8a97444\",\ndefenderEntity, position, 0, Vector2(1, 1))\n\t\t\n\t\tself:PlaySkillHitSound()\n\tend\nend\n\n_TimerService:SetTimerOnce(delayAttack, 0.6)",
        "Scope": 2,
        "ExecSpace": 5,
        "Attributes": [],
        "Name": "UseSkill"
      },
      {
        "Return": {
          "Type": "int",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "string",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "attackInfo"
          }
        ],
        "Code": "return _UtilLogic:RandomIntegerRange(3, 6)",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "GetDisplayHitCount"
      },
      {
        "Return": {
          "Type": "int",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "Entity",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "attacker"
          },
          {
            "Type": "Entity",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "defender"
          },
          {
            "Type": "string",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "attackInfo"
          }
        ],
        "Code": "return 100",
        "Scope": 2,
        "ExecSpace": 0,
        "Attributes": [],
        "Name": "CalcDamage"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "_SoundService:PlaySound(\"afbb81b51fed47eaaee26cc403d59ccf\")",
        "Scope": 2,
        "ExecSpace": 6,
        "Attributes": [],
        "Name": "PlaySkillUseSound"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "_SoundService:PlaySound(\"ca35cb7d0652411395a5bb90a5beecd3\")",
        "Scope": 2,
        "ExecSpace": 6,
        "Attributes": [],
        "Name": "PlaySkillHitSound"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "number",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "delta"
          }
        ],
        "Code": "if self.SkillButtonImage then\n\tlocal ratio = (_UtilLogic.ElapsedSeconds - self.LastSkillUseTime) / self.SkillCooldown\n\tratio = math.min(ratio, 1)\n\tself.SkillButtonImage.FillAmount = ratio\nend",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnUpdate"
      }
    ],
    "EntityEventHandlers": [
      {
        "Name": "HandlePlayerActionEvent",
        "EventName": "PlayerActionEvent",
        "Target": "self",
        "Code": "-- Parameters\nlocal ActionName = event.ActionName\nlocal PlayerEntity = event.PlayerEntity\n--------------------------------------------------------\nif ActionName == \"Skill\" then\n\tself.LastSkillUseTime = _UtilLogic.ElapsedSeconds\n\tself.Entity.StateComponent:ChangeState(\"ATTACK\", true)\n\tself:UseSkill()\nend",
        "Scope": 0,
        "ExecSpace": 0
      }
    ]
  }X?
 46314ee6ded349a698f6dfb08a244557 49894c1087b7415daa3cc5d1c9929a60codeblock://uimyinfo"x-mod/codeblock2??{
    "CoreVersion": {
      "Major": 0,
      "Minor": 2
    },
    "ScriptVersion": {
      "Major": 1,
      "Minor": 0
    },
    "Description": "<여기에 설명을 추가합니다>",
    "Id": "UIMyInfo",
    "Language": 1,
    "Name": "UIMyInfo",
    "Type": 1,
    "Source": 0,
    "Target": null,
    "ModifyTime": "2022-09-17T19:20:34.4916564+09:00",
    "Properties": [
      {
        "Type": "Component",
        "DefaultValue": ":62",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "hpBar"
      },
      {
        "Type": "number",
        "DefaultValue": "0",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "maxWidth"
      },
      {
        "Type": "Component",
        "DefaultValue": ":52",
        "SyncDirection": 0,
        "Attributes": [],
        "Name": "hpText"
      }
    ],
    "Methods": [
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [],
        "Code": "local currentPath = self.Entity.Path\n\nlocal nameText = _EntityService:GetEntityByPath(currentPath .. \"/info_top/text_name\")\nnameText.TextComponent.Text = _UserService.LocalPlayer.PlayerComponent.Nickname\nself.hpText = _EntityService:GetEntityByPath(currentPath .. \"/info_bottom/Hp/text_value\").TextComponent\n\nself.hpBar = _EntityService:GetEntityByPath(currentPath .. \"/info_bottom/Hp/img_bar\").UITransformComponent\nself.maxWidth = self.hpBar.RectSize.x\n",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnBeginPlay"
      },
      {
        "Return": {
          "Type": "void",
          "DefaultValue": null,
          "SyncDirection": 0,
          "Attributes": [],
          "Name": null
        },
        "Arguments": [
          {
            "Type": "number",
            "DefaultValue": null,
            "SyncDirection": 0,
            "Attributes": [],
            "Name": "delta"
          }
        ],
        "Code": "if self.hpBar ~= nil then\n\tlocal hp = _UserService.LocalPlayer.PlayerComponent.Hp\n\tlocal maxhp = _UserService.LocalPlayer.PlayerComponent.MaxHp\n\tself.hpBar.RectSize = Vector2(hp / maxhp * self.maxWidth,self.hpBar.RectSize.y)\n\tself.hpText.Text = string.format(\"%d / %d\", hp,maxhp)\nend",
        "Scope": 2,
        "ExecSpace": 2,
        "Attributes": [],
        "Name": "OnUpdate"
      }
    ],
    "EntityEventHandlers": []
  }X?
 e6e400727dc1414ea257d3a09402907a 49894c1087b7415daa3cc5d1c9929a60collisiongroupset://unique"x-mod/collisiongroupset2??{
    "Groups": [
      {
        "Id": "b50b91e5253440d6b4f2bde70d5ec3e8",
        "Name": "Default"
      },
      {
        "Id": "MOD@TriggerBox",
        "Name": "TriggerBox"
      },
      {
        "Id": "MOD@HitBox",
        "Name": "HitBox"
      },
      {
        "Id": "MOD@Interaction",
        "Name": "Interaction"
      },
      {
        "Id": "MOD@Portal",
        "Name": "Portal"
      },
      {
        "Id": "MOD@Climbable",
        "Name": "Climbable"
      }
    ],
    "Matrix": {
      "b50b91e5253440d6b4f2bde70d5ec3e8": [
        "b50b91e5253440d6b4f2bde70d5ec3e8"
      ],
      "MOD@TriggerBox": [
        "MOD@TriggerBox"
      ],
      "MOD@HitBox": [
        "MOD@HitBox"
      ],
      "MOD@Interaction": [
        "MOD@Interaction"
      ],
      "MOD@Portal": [
        "MOD@Portal"
      ],
      "MOD@Climbable": [
        "MOD@Climbable"
      ]
    }
  }X?
 41588d000d5a43d1ba3e85fba7f11ea7 49894c1087b7415daa3cc5d1c9929a60,directory://33df5461446149fdb4d15d93932f9959"x-mod/directory2??{
    "entry_id": "directory://33df5461446149fdb4d15d93932f9959",
    "name": "MyDesk",
    "lock": false,
    "folding": false,
    "nameEditable": false,
    "child_list": [
      "codeblock://15873444-8d16-4d28-9091-9c623fda5224",
      "codeblock://63fe07f0-2bcd-462c-8157-d6031e053b5e",
      "codeblock://uimyinfo",
      "component://uimyinfo",
      "codeblock://15f009af-ba62-4ec2-8f02-4462e1207098",
      "component://uileaderboard",
      "codeblock://3dea55df-7510-4514-8be8-ee91d353a1cc",
      "component://uiinventory",
      "codeblock://1effd604-74ee-404d-b4e5-a79b3554b7a6",
      "component://uiitemslot",
      "codeblock://playerskill",
      "component://playerskill",
      "codeblock://playerhit",
      "component://playerhit",
      "codeblock://playerattack",
      "component://playerattack",
      "codeblock://monsterattack",
      "component://monsterattack",
      "codeblock://monster",
      "component://monster",
      "codeblock://dded0db0-fb40-4610-93a7-635ff9d97194",
      "component://npctalk",
      "codeblock://0ff0ddbb-1dea-4b61-9392-b965afafe45c",
      "component://myuser",
      "codeblock://6bd64af0-014e-4326-bf63-adde9d5f3530",
      "component://uimyinfosimple",
      "codeblock://814d04ec-1441-4768-8f0e-ac9fce078b0a",
      "component://catnpctalkcomponent",
      "userdataset://541574a6-da68-4fc6-94cd-7528c8e578bd",
      "userdataset://d236fc2e-9139-4f5b-8ff5-60694c0af51a",
      "gamelogic://755baa02ef814fd8b96c33386da774b0"
    ]
  }X?
 2b72751270a1434f8f7c829f8d33ba2f 49894c1087b7415daa3cc5d1c9929a60,directory://ffebf7f9f67a4855b678bca331878ddf"x-mod/directory2??{
    "entry_id": "directory://ffebf7f9f67a4855b678bca331878ddf",
    "name": "RootDesk",
    "lock": false,
    "folding": false,
    "nameEditable": false,
    "child_list": [
      "directory://33df5461446149fdb4d15d93932f9959"
    ]
  }X?
 a8dbde4868bb447c97c5b80fa7f239f3 49894c1087b7415daa3cc5d1c9929a60,gamelogic://755baa02ef814fd8b96c33386da774b0"x-mod/gamelogic2??
$722c7ada-b83c-421a-aff7-67c5612b1234/common?{"name":"common","path":"/common","nameEditable":false,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"/","revision":7,"modelId":null,"@components":[],"@version":1}X??
 70394b20ba0a4846b690ce4f5d202c97 49894c1087b7415daa3cc5d1c9929a60map://map01"	x-mod/map2????
$39ef1622-b654-4b81-842f-e196c643cfbe/maps/map01??{"name":"map01","path":"/maps/map01","nameEditable":false,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"//","revision":72,"modelId":null,"@components":[{"@type":"MOD.Core.MapComponent","IsInstanceMap":false,"TileMapMode":0,"Enable":true},{"@type":"MOD.Core.FootholdComponent","FootholdsByLayer":{"1":[{"Length":1.170001,"NextFootholdId":2,"PreviousFootholdId":51,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":1,"StartPoint":{"x":-16.92,"y":-4.90000057},"EndPoint":{"x":-15.749999,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":3,"PreviousFootholdId":1,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":2,"StartPoint":{"x":-15.75,"y":-4.90000057},"EndPoint":{"x":-14.85,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":4,"PreviousFootholdId":2,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":3,"StartPoint":{"x":-14.8499994,"y":-4.90000057},"EndPoint":{"x":-13.95,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":5,"PreviousFootholdId":3,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":4,"StartPoint":{"x":-13.95,"y":-4.90000057},"EndPoint":{"x":-13.05,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":6,"PreviousFootholdId":4,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":5,"StartPoint":{"x":-13.05,"y":-4.90000057},"EndPoint":{"x":-12.1500006,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":7,"PreviousFootholdId":5,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":6,"StartPoint":{"x":-12.15,"y":-4.90000057},"EndPoint":{"x":-11.25,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":8,"PreviousFootholdId":6,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":7,"StartPoint":{"x":-11.25,"y":-4.90000057},"EndPoint":{"x":-10.35,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":9,"PreviousFootholdId":7,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":8,"StartPoint":{"x":-10.35,"y":-4.90000057},"EndPoint":{"x":-9.450001,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":10,"PreviousFootholdId":8,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":9,"StartPoint":{"x":-9.45,"y":-4.90000057},"EndPoint":{"x":-8.55,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9000006,"NextFootholdId":11,"PreviousFootholdId":9,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":10,"StartPoint":{"x":-8.550001,"y":-4.90000057},"EndPoint":{"x":-7.65000057,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":12,"PreviousFootholdId":10,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":11,"StartPoint":{"x":-7.64999962,"y":-4.90000057},"EndPoint":{"x":-6.75,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":13,"PreviousFootholdId":11,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":12,"StartPoint":{"x":-6.74999952,"y":-4.90000057},"EndPoint":{"x":-5.85,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":14,"PreviousFootholdId":12,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":13,"StartPoint":{"x":-5.84999943,"y":-4.90000057},"EndPoint":{"x":-4.95,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":15,"PreviousFootholdId":13,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":14,"StartPoint":{"x":-4.95,"y":-4.90000057},"EndPoint":{"x":-4.05,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.900000334,"NextFootholdId":16,"PreviousFootholdId":14,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":15,"StartPoint":{"x":-4.05,"y":-4.90000057},"EndPoint":{"x":-3.14999986,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9000001,"NextFootholdId":17,"PreviousFootholdId":15,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":16,"StartPoint":{"x":-3.14999986,"y":-4.90000057},"EndPoint":{"x":-2.24999976,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.899999738,"NextFootholdId":18,"PreviousFootholdId":16,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":17,"StartPoint":{"x":-2.24999976,"y":-4.90000057},"EndPoint":{"x":-1.35,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9000001,"NextFootholdId":19,"PreviousFootholdId":17,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":18,"StartPoint":{"x":-1.35,"y":-4.90000057},"EndPoint":{"x":-0.449999958,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9,"NextFootholdId":20,"PreviousFootholdId":18,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":19,"StartPoint":{"x":-0.45,"y":-4.90000057},"EndPoint":{"x":0.449999958,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9,"NextFootholdId":21,"PreviousFootholdId":19,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":20,"StartPoint":{"x":0.450000018,"y":-4.90000057},"EndPoint":{"x":1.35,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9000002,"NextFootholdId":22,"PreviousFootholdId":20,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":21,"StartPoint":{"x":1.34999979,"y":-4.90000057},"EndPoint":{"x":2.25,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9000001,"NextFootholdId":23,"PreviousFootholdId":21,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":22,"StartPoint":{"x":2.25,"y":-4.90000057},"EndPoint":{"x":3.15,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.899999857,"NextFootholdId":24,"PreviousFootholdId":22,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":23,"StartPoint":{"x":3.14999986,"y":-4.90000057},"EndPoint":{"x":4.04999971,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":25,"PreviousFootholdId":23,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":24,"StartPoint":{"x":4.05,"y":-4.90000057},"EndPoint":{"x":4.95,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":26,"PreviousFootholdId":24,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":25,"StartPoint":{"x":4.95000029,"y":-4.90000057},"EndPoint":{"x":5.85,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":27,"PreviousFootholdId":25,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":26,"StartPoint":{"x":5.85,"y":-4.90000057},"EndPoint":{"x":6.74999952,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":28,"PreviousFootholdId":26,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":27,"StartPoint":{"x":6.75,"y":-4.90000057},"EndPoint":{"x":7.64999962,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.899999142,"NextFootholdId":29,"PreviousFootholdId":27,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":28,"StartPoint":{"x":7.65,"y":-4.90000057},"EndPoint":{"x":8.549999,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":30,"PreviousFootholdId":28,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":29,"StartPoint":{"x":8.549999,"y":-4.90000057},"EndPoint":{"x":9.449999,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":31,"PreviousFootholdId":29,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":30,"StartPoint":{"x":9.45,"y":-4.90000057},"EndPoint":{"x":10.3499994,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":32,"PreviousFootholdId":30,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":31,"StartPoint":{"x":10.3499994,"y":-4.90000057},"EndPoint":{"x":11.249999,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":33,"PreviousFootholdId":31,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":32,"StartPoint":{"x":11.249999,"y":-4.90000057},"EndPoint":{"x":12.1499987,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":34,"PreviousFootholdId":32,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":33,"StartPoint":{"x":12.15,"y":-4.90000057},"EndPoint":{"x":13.0499992,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":35,"PreviousFootholdId":33,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":34,"StartPoint":{"x":13.0499992,"y":-4.90000057},"EndPoint":{"x":13.9499989,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":36,"PreviousFootholdId":34,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":35,"StartPoint":{"x":13.95,"y":-4.90000057},"EndPoint":{"x":14.8499994,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":37,"PreviousFootholdId":35,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":36,"StartPoint":{"x":14.8499994,"y":-4.90000057},"EndPoint":{"x":15.749999,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9000006,"NextFootholdId":38,"PreviousFootholdId":36,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":37,"StartPoint":{"x":15.749999,"y":-4.90000057},"EndPoint":{"x":16.65,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9000015,"NextFootholdId":39,"PreviousFootholdId":37,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":38,"StartPoint":{"x":16.6499977,"y":-4.90000057},"EndPoint":{"x":17.55,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9000015,"NextFootholdId":40,"PreviousFootholdId":38,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":39,"StartPoint":{"x":17.55,"y":-4.90000057},"EndPoint":{"x":18.45,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9000015,"NextFootholdId":41,"PreviousFootholdId":39,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":40,"StartPoint":{"x":18.4499989,"y":-4.90000057},"EndPoint":{"x":19.35,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9000015,"NextFootholdId":42,"PreviousFootholdId":40,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":41,"StartPoint":{"x":19.3499985,"y":-4.90000057},"EndPoint":{"x":20.25,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9000015,"NextFootholdId":43,"PreviousFootholdId":41,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":42,"StartPoint":{"x":20.2499981,"y":-4.90000057},"EndPoint":{"x":21.15,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9000015,"NextFootholdId":44,"PreviousFootholdId":42,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":43,"StartPoint":{"x":21.1499977,"y":-4.90000057},"EndPoint":{"x":22.05,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.9000015,"NextFootholdId":45,"PreviousFootholdId":43,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":44,"StartPoint":{"x":22.0499973,"y":-4.90000057},"EndPoint":{"x":22.9499989,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":1.17000008,"NextFootholdId":47,"PreviousFootholdId":44,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":45,"StartPoint":{"x":22.9499989,"y":-4.90000057},"EndPoint":{"x":24.1199989,"y":-4.90000057},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.8999996,"NextFootholdId":53,"PreviousFootholdId":54,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":46,"StartPoint":{"x":-17.82,"y":-6.700001},"EndPoint":{"x":-16.92,"y":-6.700001},"Variance":{"x":1.0,"y":0.0},"IsDynamic":false},{"Length":0.7999997,"NextFootholdId":48,"PreviousFootholdId":45,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":47,"StartPoint":{"x":24.1199989,"y":-4.90000057},"EndPoint":{"x":24.1199989,"y":-5.70000029},"Variance":{"x":0.0,"y":-1.0},"IsDynamic":false},{"Length":0.6000004,"NextFootholdId":49,"PreviousFootholdId":47,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":48,"StartPoint":{"x":24.1199989,"y":-5.70000029},"EndPoint":{"x":24.1199989,"y":-6.30000067},"Variance":{"x":0.0,"y":-1.0},"IsDynamic":false},{"Length":0.6000004,"NextFootholdId":50,"PreviousFootholdId":48,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":49,"StartPoint":{"x":24.1199989,"y":-6.3},"EndPoint":{"x":24.1199989,"y":-6.90000057},"Variance":{"x":0.0,"y":-1.0},"IsDynamic":false},{"Length":0.6000004,"NextFootholdId":0,"PreviousFootholdId":49,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":50,"StartPoint":{"x":24.1199989,"y":-6.9},"EndPoint":{"x":24.1199989,"y":-7.50000048},"Variance":{"x":0.0,"y":-1.0},"IsDynamic":false},{"Length":0.7999997,"NextFootholdId":1,"PreviousFootholdId":52,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":51,"StartPoint":{"x":-16.92,"y":-5.70000029},"EndPoint":{"x":-16.92,"y":-4.90000057},"Variance":{"x":0.0,"y":1.0},"IsDynamic":false},{"Length":0.6000004,"NextFootholdId":51,"PreviousFootholdId":53,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":52,"StartPoint":{"x":-16.92,"y":-6.30000067},"EndPoint":{"x":-16.92,"y":-5.70000029},"Variance":{"x":0.0,"y":1.0},"IsDynamic":false},{"Length":0.400000572,"NextFootholdId":52,"PreviousFootholdId":46,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":53,"StartPoint":{"x":-16.92,"y":-6.700001},"EndPoint":{"x":-16.92,"y":-6.3},"Variance":{"x":0.0,"y":1.0},"IsDynamic":false},{"Length":0.7999997,"NextFootholdId":46,"PreviousFootholdId":0,"groupID":1,"layer":1,"sortingLayerName":"MapLayer0","attribute":{"walk":1.0,"force":0.0,"drag":2.5,"isDynamic":false,"isCustomFoothold":false,"inertiaOption":0},"OwnerId":"7302a402-2d67-4a99-9648-7703d0611bef","Id":54,"StartPoint":{"x":-17.82,"y":-7.50000048},"EndPoint":{"x":-17.82,"y":-6.700001},"Variance":{"x":0.0,"y":1.0},"IsDynamic":false}]},"Enable":true},{"@type":"MOD.Core.SoundComponent","AudioClipRUID":"a9f413a5d5754c289f6b0b4f4c3cd7e2","Bgm":true,"Loop":true,"PlayOnEnable":true,"Volume":1.0,"Enable":true}],"@version":1}"HMOD.Core.MapComponent,MOD.Core.FootholdComponent,MOD.Core.SoundComponent?
$dae93a9e-ec23-4741-8170-eb7ef4f6d0da/maps/map01/Background?{"name":"Background","path":"/maps/map01/Background","nameEditable":false,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"///","revision":4,"modelId":null,"@components":[{"@type":"MOD.Core.BackgroundComponent","TemplateRUID":"4e408b22cdd34bd3ac83c10bd771c067","Type":1,"Enable":true}],"@version":1}"MOD.Core.BackgroundComponent?U
$2c2edb20-4e5d-452a-b687-8df8271b9768/maps/map01/MapleMapLayer?T{"name":"MapleMapLayer","path":"/maps/map01/MapleMapLayer","nameEditable":false,"enable":true,"visible":true,"displayOrder":1,"pathConstraints":"///","revision":2,"origin":{"type":"Model","entry_id":"maplemaplayer","sub_entity_id":null},"modelId":"maplemaplayer","@components":[{"@type":"MOD.Core.MapLayerComponent","IsVisible":true,"LayerSortOrder":0,"Locked":false,"MapLayerName":"Layer1","Thumbnail":"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","Enable":true}],"@version":1}"MOD.Core.MapLayerComponent??
$7302a402-2d67-4a99-9648-7703d0611bef/maps/map01/TileMap??{"name":"TileMap","path":"/maps/map01/TileMap","nameEditable":false,"enable":true,"visible":true,"displayOrder":2,"pathConstraints":"///","revision":43,"origin":{"type":"Model","entry_id":"tilemap","sub_entity_id":null},"modelId":"tilemap","@components":[{"@type":"MOD.Core.TransformComponent","Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":-0.225,"y":-0.15,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.TileMapComponent","IsOddGridPosition":false,"SortingLayer":"MapLayer0","TileMapVersion":1,"TileSetRUID":{"DataId":"7f7fb070daaf446ca6534e08d8745456"},"Tiles":[{"type":0,"position":{"x":9,"y":-17},"tileIndex":-1},{"type":9,"position":{"x":10,"y":-17},"tileIndex":0},{"type":0,"position":{"x":11,"y":-17},"tileIndex":-1},{"type":0,"position":{"x":7,"y":-17},"tileIndex":0},{"type":9,"position":{"x":6,"y":-17},"tileIndex":0},{"type":0,"position":{"x":5,"y":-17},"tileIndex":0},{"type":9,"position":{"x":4,"y":-17},"tileIndex":0},{"type":0,"position":{"x":3,"y":-17},"tileIndex":0},{"type":9,"position":{"x":8,"y":-17},"tileIndex":0},{"type":9,"position":{"x":12,"y":-17},"tileIndex":1},{"type":0,"position":{"x":13,"y":-17},"tileIndex":0},{"type":9,"position":{"x":14,"y":-17},"tileIndex":0},{"type":0,"position":{"x":15,"y":-17},"tileIndex":0},{"type":0,"position":{"x":17,"y":-17},"tileIndex":-1},{"type":9,"position":{"x":16,"y":-17},"tileIndex":1},{"type":0,"position":{"x":19,"y":-17},"tileIndex":-1},{"type":9,"position":{"x":18,"y":-17},"tileIndex":1},{"type":0,"position":{"x":21,"y":-17},"tileIndex":-1},{"type":9,"position":{"x":20,"y":-17},"tileIndex":0},{"type":5,"position":{"x":14,"y":-18},"tileIndex":0},{"type":0,"position":{"x":13,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":14,"y":-19},"tileIndex":2},{"type":0,"position":{"x":15,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":13,"y":-18},"tileIndex":0},{"type":0,"position":{"x":15,"y":-18},"tileIndex":0},{"type":5,"position":{"x":12,"y":-18},"tileIndex":0},{"type":0,"position":{"x":11,"y":-18},"tileIndex":0},{"type":0,"position":{"x":11,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":12,"y":-19},"tileIndex":2},{"type":5,"position":{"x":10,"y":-18},"tileIndex":0},{"type":0,"position":{"x":9,"y":-18},"tileIndex":0},{"type":0,"position":{"x":9,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":10,"y":-19},"tileIndex":0},{"type":5,"position":{"x":8,"y":-18},"tileIndex":0},{"type":0,"position":{"x":7,"y":-18},"tileIndex":0},{"type":0,"position":{"x":7,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":8,"y":-19},"tileIndex":2},{"type":5,"position":{"x":6,"y":-18},"tileIndex":0},{"type":0,"position":{"x":5,"y":-18},"tileIndex":0},{"type":0,"position":{"x":5,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":6,"y":-19},"tileIndex":0},{"type":5,"position":{"x":4,"y":-18},"tileIndex":0},{"type":0,"position":{"x":3,"y":-18},"tileIndex":0},{"type":0,"position":{"x":3,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":4,"y":-19},"tileIndex":0},{"type":5,"position":{"x":16,"y":-18},"tileIndex":0},{"type":0,"position":{"x":17,"y":-18},"tileIndex":0},{"type":0,"position":{"x":17,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":16,"y":-19},"tileIndex":0},{"type":0,"position":{"x":19,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":18,"y":-19},"tileIndex":0},{"type":0,"position":{"x":21,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":20,"y":-19},"tileIndex":2},{"type":0,"position":{"x":22,"y":-19},"tileIndex":0},{"type":0,"position":{"x":23,"y":-19},"tileIndex":0},{"type":9,"position":{"x":22,"y":-17},"tileIndex":0},{"type":0,"position":{"x":23,"y":-17},"tileIndex":0},{"type":5,"position":{"x":8,"y":-20},"tileIndex":5},{"type":0,"position":{"x":7,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":8,"y":-21},"tileIndex":0},{"type":0,"position":{"x":9,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":7,"y":-20},"tileIndex":0},{"type":0,"position":{"x":9,"y":-20},"tileIndex":0},{"type":5,"position":{"x":10,"y":-20},"tileIndex":0},{"type":0,"position":{"x":10,"y":-21},"tileIndex":0},{"type":0,"position":{"x":11,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":11,"y":-20},"tileIndex":0},{"type":0,"position":{"x":12,"y":-21},"tileIndex":0},{"type":0,"position":{"x":13,"y":-21},"tileIndex":0},{"type":0,"position":{"x":14,"y":-21},"tileIndex":0},{"type":0,"position":{"x":15,"y":-21},"tileIndex":0},{"type":0,"position":{"x":15,"y":-20},"tileIndex":0},{"type":5,"position":{"x":14,"y":-20},"tileIndex":0},{"type":0,"position":{"x":13,"y":-20},"tileIndex":0},{"type":5,"position":{"x":12,"y":-20},"tileIndex":0},{"type":5,"position":{"x":8,"y":-22},"tileIndex":0},{"type":0,"position":{"x":7,"y":-23},"tileIndex":-1},{"type":0,"position":{"x":8,"y":-23},"tileIndex":2},{"type":0,"position":{"x":9,"y":-23},"tileIndex":-1},{"type":0,"position":{"x":7,"y":-22},"tileIndex":0},{"type":0,"position":{"x":9,"y":-22},"tileIndex":0},{"type":5,"position":{"x":10,"y":-22},"tileIndex":0},{"type":0,"position":{"x":11,"y":-22},"tileIndex":0},{"type":0,"position":{"x":11,"y":-23},"tileIndex":-1},{"type":0,"position":{"x":10,"y":-23},"tileIndex":1},{"type":5,"position":{"x":12,"y":-22},"tileIndex":0},{"type":0,"position":{"x":15,"y":-22},"tileIndex":0},{"type":0,"position":{"x":15,"y":-23},"tileIndex":-1},{"type":5,"position":{"x":14,"y":-22},"tileIndex":0},{"type":0,"position":{"x":13,"y":-22},"tileIndex":0},{"type":0,"position":{"x":13,"y":-23},"tileIndex":-1},{"type":0,"position":{"x":12,"y":-23},"tileIndex":0},{"type":0,"position":{"x":14,"y":-23},"tileIndex":1},{"type":0,"position":{"x":21,"y":-18},"tileIndex":0},{"type":5,"position":{"x":22,"y":-18},"tileIndex":0},{"type":0,"position":{"x":23,"y":-18},"tileIndex":0},{"type":0,"position":{"x":19,"y":-18},"tileIndex":0},{"type":5,"position":{"x":20,"y":-18},"tileIndex":0},{"type":5,"position":{"x":24,"y":-18},"tileIndex":0},{"type":0,"position":{"x":25,"y":-18},"tileIndex":0},{"type":0,"position":{"x":25,"y":-17},"tileIndex":-1},{"type":0,"position":{"x":25,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":24,"y":-19},"tileIndex":1},{"type":9,"position":{"x":24,"y":-17},"tileIndex":2},{"type":5,"position":{"x":26,"y":-18},"tileIndex":0},{"type":0,"position":{"x":27,"y":-18},"tileIndex":0},{"type":0,"position":{"x":27,"y":-17},"tileIndex":0},{"type":0,"position":{"x":27,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":26,"y":-19},"tileIndex":2},{"type":9,"position":{"x":26,"y":-17},"tileIndex":0},{"type":5,"position":{"x":28,"y":-18},"tileIndex":0},{"type":0,"position":{"x":28,"y":-19},"tileIndex":2},{"type":0,"position":{"x":29,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":29,"y":-18},"tileIndex":0},{"type":9,"position":{"x":28,"y":-17},"tileIndex":2},{"type":0,"position":{"x":29,"y":-17},"tileIndex":0},{"type":5,"position":{"x":18,"y":-18},"tileIndex":0},{"type":5,"position":{"x":30,"y":-18},"tileIndex":0},{"type":0,"position":{"x":30,"y":-19},"tileIndex":0},{"type":0,"position":{"x":31,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":31,"y":-18},"tileIndex":0},{"type":9,"position":{"x":30,"y":-17},"tileIndex":1},{"type":0,"position":{"x":31,"y":-17},"tileIndex":0},{"type":9,"position":{"x":32,"y":-17},"tileIndex":0},{"type":0,"position":{"x":33,"y":-17},"tileIndex":0},{"type":9,"position":{"x":34,"y":-17},"tileIndex":0},{"type":0,"position":{"x":35,"y":-17},"tileIndex":0},{"type":9,"position":{"x":36,"y":-17},"tileIndex":0},{"type":0,"position":{"x":37,"y":-17},"tileIndex":0},{"type":9,"position":{"x":38,"y":-17},"tileIndex":0},{"type":0,"position":{"x":39,"y":-17},"tileIndex":0},{"type":9,"position":{"x":40,"y":-17},"tileIndex":0},{"type":0,"position":{"x":41,"y":-17},"tileIndex":0},{"type":9,"position":{"x":42,"y":-17},"tileIndex":0},{"type":0,"position":{"x":43,"y":-17},"tileIndex":0},{"type":9,"position":{"x":44,"y":-17},"tileIndex":0},{"type":0,"position":{"x":45,"y":-17},"tileIndex":0},{"type":9,"position":{"x":46,"y":-17},"tileIndex":0},{"type":0,"position":{"x":47,"y":-17},"tileIndex":0},{"type":9,"position":{"x":48,"y":-17},"tileIndex":0},{"type":0,"position":{"x":49,"y":-17},"tileIndex":0},{"type":9,"position":{"x":50,"y":-17},"tileIndex":0},{"type":0,"position":{"x":51,"y":-17},"tileIndex":0},{"type":9,"position":{"x":52,"y":-17},"tileIndex":0},{"type":11,"position":{"x":53,"y":-17},"tileIndex":0},{"type":6,"position":{"x":53,"y":-18},"tileIndex":0},{"type":0,"position":{"x":53,"y":-19},"tileIndex":-1},{"type":6,"position":{"x":53,"y":-20},"tileIndex":0},{"type":0,"position":{"x":53,"y":-21},"tileIndex":-1},{"type":6,"position":{"x":53,"y":-22},"tileIndex":0},{"type":0,"position":{"x":53,"y":-23},"tileIndex":-1},{"type":5,"position":{"x":52,"y":-22},"tileIndex":0},{"type":0,"position":{"x":51,"y":-23},"tileIndex":-1},{"type":0,"position":{"x":52,"y":-23},"tileIndex":0},{"type":0,"position":{"x":51,"y":-22},"tileIndex":0},{"type":0,"position":{"x":51,"y":-21},"tileIndex":0},{"type":0,"position":{"x":52,"y":-21},"tileIndex":1},{"type":5,"position":{"x":50,"y":-22},"tileIndex":0},{"type":0,"position":{"x":49,"y":-22},"tileIndex":0},{"type":0,"position":{"x":49,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":49,"y":-23},"tileIndex":-1},{"type":0,"position":{"x":50,"y":-23},"tileIndex":1},{"type":0,"position":{"x":50,"y":-21},"tileIndex":1},{"type":5,"position":{"x":48,"y":-22},"tileIndex":0},{"type":0,"position":{"x":47,"y":-22},"tileIndex":0},{"type":0,"position":{"x":47,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":47,"y":-23},"tileIndex":-1},{"type":0,"position":{"x":48,"y":-23},"tileIndex":2},{"type":0,"position":{"x":48,"y":-21},"tileIndex":0},{"type":5,"position":{"x":46,"y":-22},"tileIndex":0},{"type":0,"position":{"x":45,"y":-22},"tileIndex":0},{"type":0,"position":{"x":45,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":45,"y":-23},"tileIndex":-1},{"type":0,"position":{"x":46,"y":-23},"tileIndex":2},{"type":0,"position":{"x":46,"y":-21},"tileIndex":0},{"type":5,"position":{"x":44,"y":-22},"tileIndex":0},{"type":0,"position":{"x":43,"y":-22},"tileIndex":0},{"type":0,"position":{"x":43,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":43,"y":-23},"tileIndex":-1},{"type":0,"position":{"x":44,"y":-23},"tileIndex":1},{"type":0,"position":{"x":44,"y":-21},"tileIndex":1},{"type":0,"position":{"x":42,"y":-21},"tileIndex":0},{"type":0,"position":{"x":41,"y":-21},"tileIndex":0},{"type":0,"position":{"x":40,"y":-21},"tileIndex":0},{"type":0,"position":{"x":39,"y":-21},"tileIndex":0},{"type":0,"position":{"x":38,"y":-21},"tileIndex":0},{"type":0,"position":{"x":37,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":36,"y":-21},"tileIndex":0},{"type":0,"position":{"x":35,"y":-21},"tileIndex":0},{"type":0,"position":{"x":34,"y":-21},"tileIndex":0},{"type":0,"position":{"x":33,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":32,"y":-21},"tileIndex":0},{"type":0,"position":{"x":31,"y":-21},"tileIndex":0},{"type":0,"position":{"x":30,"y":-21},"tileIndex":0},{"type":0,"position":{"x":29,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":28,"y":-21},"tileIndex":0},{"type":0,"position":{"x":27,"y":-21},"tileIndex":0},{"type":0,"position":{"x":26,"y":-21},"tileIndex":0},{"type":0,"position":{"x":25,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":24,"y":-21},"tileIndex":0},{"type":0,"position":{"x":23,"y":-21},"tileIndex":0},{"type":0,"position":{"x":22,"y":-21},"tileIndex":0},{"type":0,"position":{"x":21,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":20,"y":-21},"tileIndex":0},{"type":0,"position":{"x":19,"y":-21},"tileIndex":0},{"type":0,"position":{"x":18,"y":-21},"tileIndex":0},{"type":0,"position":{"x":17,"y":-21},"tileIndex":0},{"type":0,"position":{"x":16,"y":-21},"tileIndex":0},{"type":5,"position":{"x":16,"y":-22},"tileIndex":0},{"type":0,"position":{"x":17,"y":-22},"tileIndex":0},{"type":0,"position":{"x":17,"y":-23},"tileIndex":-1},{"type":0,"position":{"x":16,"y":-23},"tileIndex":0},{"type":5,"position":{"x":18,"y":-22},"tileIndex":0},{"type":0,"position":{"x":19,"y":-23},"tileIndex":0},{"type":0,"position":{"x":20,"y":-23},"tileIndex":0},{"type":0,"position":{"x":21,"y":-23},"tileIndex":0},{"type":0,"position":{"x":22,"y":-23},"tileIndex":0},{"type":0,"position":{"x":23,"y":-23},"tileIndex":0},{"type":0,"position":{"x":18,"y":-23},"tileIndex":0},{"type":0,"position":{"x":19,"y":-22},"tileIndex":0},{"type":5,"position":{"x":20,"y":-22},"tileIndex":0},{"type":0,"position":{"x":21,"y":-22},"tileIndex":0},{"type":5,"position":{"x":22,"y":-22},"tileIndex":0},{"type":0,"position":{"x":23,"y":-22},"tileIndex":0},{"type":5,"position":{"x":24,"y":-22},"tileIndex":0},{"type":0,"position":{"x":25,"y":-22},"tileIndex":0},{"type":5,"position":{"x":26,"y":-22},"tileIndex":0},{"type":0,"position":{"x":25,"y":-23},"tileIndex":-1},{"type":0,"position":{"x":24,"y":-23},"tileIndex":0},{"type":0,"position":{"x":27,"y":-23},"tileIndex":0},{"type":0,"position":{"x":28,"y":-23},"tileIndex":0},{"type":0,"position":{"x":29,"y":-23},"tileIndex":0},{"type":0,"position":{"x":30,"y":-23},"tileIndex":0},{"type":0,"position":{"x":31,"y":-23},"tileIndex":0},{"type":0,"position":{"x":32,"y":-23},"tileIndex":0},{"type":0,"position":{"x":33,"y":-23},"tileIndex":0},{"type":0,"position":{"x":34,"y":-23},"tileIndex":0},{"type":0,"position":{"x":35,"y":-23},"tileIndex":0},{"type":0,"position":{"x":36,"y":-23},"tileIndex":0},{"type":0,"position":{"x":37,"y":-23},"tileIndex":0},{"type":0,"position":{"x":26,"y":-23},"tileIndex":0},{"type":0,"position":{"x":27,"y":-22},"tileIndex":0},{"type":0,"position":{"x":38,"y":-23},"tileIndex":0},{"type":0,"position":{"x":39,"y":-23},"tileIndex":0},{"type":0,"position":{"x":40,"y":-23},"tileIndex":2},{"type":0,"position":{"x":41,"y":-23},"tileIndex":0},{"type":0,"position":{"x":42,"y":-23},"tileIndex":0},{"type":0,"position":{"x":37,"y":-22},"tileIndex":0},{"type":5,"position":{"x":36,"y":-22},"tileIndex":0},{"type":0,"position":{"x":35,"y":-22},"tileIndex":0},{"type":5,"position":{"x":30,"y":-22},"tileIndex":0},{"type":0,"position":{"x":29,"y":-22},"tileIndex":0},{"type":0,"position":{"x":31,"y":-22},"tileIndex":-1},{"type":5,"position":{"x":32,"y":-22},"tileIndex":0},{"type":0,"position":{"x":33,"y":-22},"tileIndex":-1},{"type":5,"position":{"x":34,"y":-22},"tileIndex":0},{"type":5,"position":{"x":38,"y":-22},"tileIndex":0},{"type":0,"position":{"x":39,"y":-22},"tileIndex":0},{"type":5,"position":{"x":28,"y":-22},"tileIndex":0},{"type":5,"position":{"x":40,"y":-22},"tileIndex":0},{"type":0,"position":{"x":41,"y":-22},"tileIndex":0},{"type":5,"position":{"x":42,"y":-22},"tileIndex":0},{"type":0,"position":{"x":25,"y":-20},"tileIndex":0},{"type":5,"position":{"x":26,"y":-20},"tileIndex":0},{"type":0,"position":{"x":27,"y":-20},"tileIndex":0},{"type":5,"position":{"x":28,"y":-20},"tileIndex":0},{"type":0,"position":{"x":29,"y":-20},"tileIndex":0},{"type":5,"position":{"x":30,"y":-20},"tileIndex":0},{"type":0,"position":{"x":31,"y":-20},"tileIndex":0},{"type":5,"position":{"x":32,"y":-20},"tileIndex":0},{"type":0,"position":{"x":33,"y":-19},"tileIndex":0},{"type":0,"position":{"x":34,"y":-19},"tileIndex":0},{"type":0,"position":{"x":35,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":36,"y":-19},"tileIndex":0},{"type":0,"position":{"x":37,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":37,"y":-20},"tileIndex":0},{"type":5,"position":{"x":38,"y":-20},"tileIndex":0},{"type":5,"position":{"x":36,"y":-20},"tileIndex":0},{"type":0,"position":{"x":35,"y":-20},"tileIndex":0},{"type":5,"position":{"x":34,"y":-20},"tileIndex":0},{"type":0,"position":{"x":33,"y":-20},"tileIndex":0},{"type":0,"position":{"x":32,"y":-19},"tileIndex":2},{"type":5,"position":{"x":24,"y":-20},"tileIndex":0},{"type":0,"position":{"x":23,"y":-20},"tileIndex":0},{"type":5,"position":{"x":22,"y":-20},"tileIndex":0},{"type":0,"position":{"x":21,"y":-20},"tileIndex":0},{"type":5,"position":{"x":20,"y":-20},"tileIndex":0},{"type":0,"position":{"x":19,"y":-20},"tileIndex":0},{"type":5,"position":{"x":18,"y":-20},"tileIndex":0},{"type":0,"position":{"x":17,"y":-20},"tileIndex":0},{"type":5,"position":{"x":16,"y":-20},"tileIndex":0},{"type":5,"position":{"x":34,"y":-18},"tileIndex":0},{"type":0,"position":{"x":33,"y":-18},"tileIndex":1},{"type":0,"position":{"x":35,"y":-18},"tileIndex":1},{"type":5,"position":{"x":36,"y":-18},"tileIndex":0},{"type":0,"position":{"x":37,"y":-18},"tileIndex":1},{"type":5,"position":{"x":32,"y":-18},"tileIndex":0},{"type":5,"position":{"x":38,"y":-18},"tileIndex":0},{"type":0,"position":{"x":39,"y":-18},"tileIndex":0},{"type":0,"position":{"x":39,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":38,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":39,"y":-20},"tileIndex":0},{"type":5,"position":{"x":40,"y":-18},"tileIndex":0},{"type":0,"position":{"x":41,"y":-18},"tileIndex":0},{"type":0,"position":{"x":41,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":40,"y":-19},"tileIndex":1},{"type":5,"position":{"x":42,"y":-18},"tileIndex":0},{"type":0,"position":{"x":43,"y":-18},"tileIndex":0},{"type":0,"position":{"x":43,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":42,"y":-19},"tileIndex":2},{"type":0,"position":{"x":47,"y":-18},"tileIndex":0},{"type":0,"position":{"x":47,"y":-19},"tileIndex":-1},{"type":5,"position":{"x":46,"y":-18},"tileIndex":0},{"type":0,"position":{"x":45,"y":-18},"tileIndex":0},{"type":5,"position":{"x":44,"y":-18},"tileIndex":0},{"type":0,"position":{"x":45,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":44,"y":-19},"tileIndex":1},{"type":0,"position":{"x":46,"y":-19},"tileIndex":0},{"type":5,"position":{"x":48,"y":-18},"tileIndex":0},{"type":0,"position":{"x":49,"y":-18},"tileIndex":0},{"type":0,"position":{"x":49,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":48,"y":-19},"tileIndex":0},{"type":5,"position":{"x":50,"y":-18},"tileIndex":0},{"type":0,"position":{"x":51,"y":-18},"tileIndex":0},{"type":0,"position":{"x":51,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":50,"y":-19},"tileIndex":1},{"type":0,"position":{"x":52,"y":-19},"tileIndex":0},{"type":5,"position":{"x":52,"y":-18},"tileIndex":0},{"type":5,"position":{"x":48,"y":-20},"tileIndex":0},{"type":0,"position":{"x":47,"y":-20},"tileIndex":0},{"type":0,"position":{"x":49,"y":-20},"tileIndex":1},{"type":5,"position":{"x":46,"y":-20},"tileIndex":0},{"type":0,"position":{"x":45,"y":-20},"tileIndex":0},{"type":5,"position":{"x":44,"y":-20},"tileIndex":0},{"type":0,"position":{"x":43,"y":-20},"tileIndex":0},{"type":0,"position":{"x":41,"y":-20},"tileIndex":0},{"type":5,"position":{"x":42,"y":-20},"tileIndex":0},{"type":5,"position":{"x":50,"y":-20},"tileIndex":0},{"type":0,"position":{"x":51,"y":-20},"tileIndex":0},{"type":5,"position":{"x":52,"y":-20},"tileIndex":0},{"type":5,"position":{"x":40,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-13,"y":-17},"tileIndex":0},{"type":9,"position":{"x":-14,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-15,"y":-17},"tileIndex":0},{"type":9,"position":{"x":-16,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-17,"y":-17},"tileIndex":0},{"type":9,"position":{"x":-18,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-19,"y":-17},"tileIndex":0},{"type":9,"position":{"x":-20,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-21,"y":-17},"tileIndex":0},{"type":9,"position":{"x":-22,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-23,"y":-17},"tileIndex":0},{"type":9,"position":{"x":-24,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-25,"y":-17},"tileIndex":0},{"type":9,"position":{"x":-26,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-27,"y":-17},"tileIndex":0},{"type":9,"position":{"x":-28,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-29,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-31,"y":-17},"tileIndex":0},{"type":9,"position":{"x":-32,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-33,"y":-17},"tileIndex":0},{"type":9,"position":{"x":-34,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-35,"y":-17},"tileIndex":0},{"type":9,"position":{"x":-36,"y":-17},"tileIndex":0},{"type":11,"position":{"x":-37,"y":-17},"tileIndex":0},{"type":6,"position":{"x":-37,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-37,"y":-19},"tileIndex":-1},{"type":6,"position":{"x":-37,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-37,"y":-21},"tileIndex":-1},{"type":6,"position":{"x":-37,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-37,"y":-23},"tileIndex":-1},{"type":0,"position":{"x":-36,"y":-23},"tileIndex":2},{"type":0,"position":{"x":-35,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-34,"y":-23},"tileIndex":2},{"type":0,"position":{"x":-33,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-31,"y":-23},"tileIndex":-1},{"type":0,"position":{"x":-32,"y":-23},"tileIndex":2},{"type":0,"position":{"x":-29,"y":-23},"tileIndex":-1},{"type":0,"position":{"x":-30,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-28,"y":-23},"tileIndex":1},{"type":0,"position":{"x":-27,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-26,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-25,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-24,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-23,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-22,"y":-23},"tileIndex":2},{"type":0,"position":{"x":-21,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-20,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-19,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-18,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-17,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-16,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-15,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-14,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-13,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-12,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-11,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-10,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-9,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-8,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-7,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-6,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-5,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-4,"y":-23},"tileIndex":1},{"type":0,"position":{"x":-3,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-2,"y":-23},"tileIndex":0},{"type":0,"position":{"x":-1,"y":-23},"tileIndex":0},{"type":0,"position":{"x":0,"y":-23},"tileIndex":1},{"type":0,"position":{"x":1,"y":-23},"tileIndex":0},{"type":0,"position":{"x":2,"y":-23},"tileIndex":1},{"type":0,"position":{"x":3,"y":-23},"tileIndex":0},{"type":0,"position":{"x":4,"y":-23},"tileIndex":1},{"type":0,"position":{"x":5,"y":-23},"tileIndex":0},{"type":0,"position":{"x":6,"y":-23},"tileIndex":0},{"type":5,"position":{"x":6,"y":-22},"tileIndex":0},{"type":0,"position":{"x":5,"y":-22},"tileIndex":0},{"type":0,"position":{"x":5,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":6,"y":-21},"tileIndex":0},{"type":5,"position":{"x":4,"y":-22},"tileIndex":0},{"type":0,"position":{"x":3,"y":-22},"tileIndex":0},{"type":0,"position":{"x":3,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":4,"y":-21},"tileIndex":2},{"type":5,"position":{"x":2,"y":-22},"tileIndex":0},{"type":0,"position":{"x":1,"y":-22},"tileIndex":0},{"type":0,"position":{"x":1,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":2,"y":-21},"tileIndex":2},{"type":5,"position":{"x":0,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-1,"y":-22},"tileIndex":0},{"type":5,"position":{"x":-2,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-1,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":0,"y":-21},"tileIndex":0},{"type":0,"position":{"x":-3,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-3,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":-2,"y":-21},"tileIndex":1},{"type":5,"position":{"x":-4,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-5,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-5,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":-4,"y":-21},"tileIndex":2},{"type":5,"position":{"x":-6,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-7,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-7,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":-6,"y":-21},"tileIndex":2},{"type":5,"position":{"x":-8,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-9,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-9,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":-8,"y":-21},"tileIndex":1},{"type":5,"position":{"x":-10,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-11,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-11,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":-10,"y":-21},"tileIndex":1},{"type":5,"position":{"x":-12,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-13,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-13,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":-12,"y":-21},"tileIndex":2},{"type":5,"position":{"x":-14,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-15,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-15,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":-14,"y":-21},"tileIndex":0},{"type":5,"position":{"x":-16,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-17,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-17,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":-16,"y":-21},"tileIndex":2},{"type":5,"position":{"x":-18,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-19,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-19,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":-18,"y":-21},"tileIndex":0},{"type":5,"position":{"x":-20,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-21,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-21,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":-20,"y":-21},"tileIndex":2},{"type":5,"position":{"x":-22,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-23,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-23,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":-22,"y":-21},"tileIndex":1},{"type":5,"position":{"x":-24,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-25,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-25,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":-24,"y":-21},"tileIndex":2},{"type":5,"position":{"x":-26,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-27,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-27,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":-26,"y":-21},"tileIndex":0},{"type":5,"position":{"x":-28,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-29,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-29,"y":-21},"tileIndex":0},{"type":0,"position":{"x":-28,"y":-21},"tileIndex":1},{"type":5,"position":{"x":-30,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-31,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-31,"y":-21},"tileIndex":-1},{"type":0,"position":{"x":-30,"y":-21},"tileIndex":2},{"type":5,"position":{"x":-32,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-33,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-33,"y":-21},"tileIndex":0},{"type":0,"position":{"x":-32,"y":-21},"tileIndex":1},{"type":5,"position":{"x":-34,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-35,"y":-22},"tileIndex":0},{"type":0,"position":{"x":-35,"y":-21},"tileIndex":0},{"type":0,"position":{"x":-34,"y":-21},"tileIndex":2},{"type":0,"position":{"x":-35,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-35,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-36,"y":-19},"tileIndex":0},{"type":5,"position":{"x":-36,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-36,"y":-21},"tileIndex":2},{"type":5,"position":{"x":-36,"y":-22},"tileIndex":0},{"type":5,"position":{"x":-36,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-35,"y":-18},"tileIndex":1},{"type":5,"position":{"x":-34,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-33,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-33,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":-34,"y":-19},"tileIndex":1},{"type":5,"position":{"x":-32,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-7,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":-5,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":-6,"y":-19},"tileIndex":1},{"type":0,"position":{"x":-3,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":-4,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-1,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":-2,"y":-19},"tileIndex":0},{"type":0,"position":{"x":1,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":0,"y":-19},"tileIndex":0},{"type":0,"position":{"x":2,"y":-19},"tileIndex":2},{"type":0,"position":{"x":-8,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-9,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":-10,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-11,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-12,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-13,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-14,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-15,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":-16,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-17,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-18,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-19,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-20,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-21,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-22,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-23,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-24,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-25,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-26,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-27,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-28,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-29,"y":-19},"tileIndex":0},{"type":5,"position":{"x":-30,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-31,"y":-20},"tileIndex":1},{"type":0,"position":{"x":-29,"y":-20},"tileIndex":1},{"type":0,"position":{"x":-31,"y":-19},"tileIndex":0},{"type":0,"position":{"x":-30,"y":-19},"tileIndex":0},{"type":5,"position":{"x":-32,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-33,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-32,"y":-19},"tileIndex":-1},{"type":0,"position":{"x":-31,"y":-18},"tileIndex":0},{"type":5,"position":{"x":-34,"y":-20},"tileIndex":0},{"type":5,"position":{"x":-28,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-27,"y":-20},"tileIndex":0},{"type":5,"position":{"x":-26,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-25,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-15,"y":-20},"tileIndex":0},{"type":5,"position":{"x":-14,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-13,"y":-20},"tileIndex":0},{"type":5,"position":{"x":-12,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-11,"y":-20},"tileIndex":1},{"type":5,"position":{"x":-10,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-9,"y":-20},"tileIndex":1},{"type":5,"position":{"x":-8,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-7,"y":-20},"tileIndex":0},{"type":5,"position":{"x":-6,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-5,"y":-20},"tileIndex":-1},{"type":5,"position":{"x":-4,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-3,"y":-20},"tileIndex":0},{"type":5,"position":{"x":-2,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-1,"y":-20},"tileIndex":-1},{"type":5,"position":{"x":0,"y":-20},"tileIndex":0},{"type":0,"position":{"x":1,"y":-20},"tileIndex":1},{"type":5,"position":{"x":2,"y":-20},"tileIndex":0},{"type":0,"position":{"x":3,"y":-20},"tileIndex":1},{"type":5,"position":{"x":4,"y":-20},"tileIndex":0},{"type":0,"position":{"x":5,"y":-20},"tileIndex":0},{"type":5,"position":{"x":-16,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-17,"y":-20},"tileIndex":0},{"type":5,"position":{"x":-18,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-19,"y":-20},"tileIndex":-1},{"type":5,"position":{"x":-20,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-21,"y":-20},"tileIndex":1},{"type":5,"position":{"x":-22,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-23,"y":-20},"tileIndex":1},{"type":5,"position":{"x":-24,"y":-20},"tileIndex":0},{"type":0,"position":{"x":-29,"y":-18},"tileIndex":0},{"type":5,"position":{"x":-28,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-27,"y":-18},"tileIndex":1},{"type":5,"position":{"x":-26,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-25,"y":-18},"tileIndex":0},{"type":5,"position":{"x":-24,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-23,"y":-18},"tileIndex":1},{"type":5,"position":{"x":-22,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-21,"y":-18},"tileIndex":1},{"type":5,"position":{"x":-20,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-19,"y":-18},"tileIndex":0},{"type":5,"position":{"x":-18,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-17,"y":-18},"tileIndex":0},{"type":5,"position":{"x":-16,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-15,"y":-18},"tileIndex":1},{"type":5,"position":{"x":-14,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-13,"y":-18},"tileIndex":1},{"type":5,"position":{"x":-12,"y":-18},"tileIndex":0},{"type":5,"position":{"x":6,"y":-20},"tileIndex":0},{"type":9,"position":{"x":-30,"y":-17},"tileIndex":0},{"type":5,"position":{"x":-30,"y":-18},"tileIndex":0},{"type":9,"position":{"x":-12,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-11,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-11,"y":-18},"tileIndex":0},{"type":9,"position":{"x":-10,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-9,"y":-17},"tileIndex":0},{"type":9,"position":{"x":-8,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-7,"y":-17},"tileIndex":0},{"type":9,"position":{"x":-6,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-5,"y":-17},"tileIndex":0},{"type":9,"position":{"x":-4,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-3,"y":-17},"tileIndex":0},{"type":0,"position":{"x":-3,"y":-18},"tileIndex":0},{"type":5,"position":{"x":-2,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-1,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-1,"y":-17},"tileIndex":-1},{"type":9,"position":{"x":-2,"y":-17},"tileIndex":1},{"type":5,"position":{"x":0,"y":-18},"tileIndex":0},{"type":0,"position":{"x":1,"y":-18},"tileIndex":0},{"type":0,"position":{"x":1,"y":-17},"tileIndex":0},{"type":9,"position":{"x":0,"y":-17},"tileIndex":0},{"type":5,"position":{"x":2,"y":-18},"tileIndex":0},{"type":9,"position":{"x":2,"y":-17},"tileIndex":0},{"type":5,"position":{"x":-10,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-9,"y":-18},"tileIndex":0},{"type":5,"position":{"x":-8,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-7,"y":-18},"tileIndex":0},{"type":5,"position":{"x":-6,"y":-18},"tileIndex":0},{"type":0,"position":{"x":-5,"y":-18},"tileIndex":0},{"type":5,"position":{"x":-4,"y":-18},"tileIndex":0},{"type":0,"position":{"x":13,"y":-24},"tileIndex":0},{"type":0,"position":{"x":13,"y":-25},"tileIndex":-1},{"type":5,"position":{"x":14,"y":-24},"tileIndex":0},{"type":0,"position":{"x":15,"y":-24},"tileIndex":0},{"type":0,"position":{"x":15,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":14,"y":-25},"tileIndex":2},{"type":5,"position":{"x":16,"y":-24},"tileIndex":0},{"type":5,"position":{"x":12,"y":-24},"tileIndex":0},{"type":0,"position":{"x":11,"y":-24},"tileIndex":0},{"type":0,"position":{"x":11,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":12,"y":-25},"tileIndex":2},{"type":5,"position":{"x":10,"y":-24},"tileIndex":0},{"type":0,"position":{"x":9,"y":-24},"tileIndex":0},{"type":0,"position":{"x":9,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":10,"y":-25},"tileIndex":2},{"type":5,"position":{"x":8,"y":-24},"tileIndex":0},{"type":0,"position":{"x":7,"y":-24},"tileIndex":0},{"type":0,"position":{"x":7,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":8,"y":-25},"tileIndex":1},{"type":7,"position":{"x":6,"y":-25},"tileIndex":0},{"type":0,"position":{"x":5,"y":-25},"tileIndex":0},{"type":0,"position":{"x":5,"y":-24},"tileIndex":0},{"type":5,"position":{"x":4,"y":-24},"tileIndex":0},{"type":0,"position":{"x":3,"y":-24},"tileIndex":0},{"type":0,"position":{"x":3,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":4,"y":-25},"tileIndex":1},{"type":5,"position":{"x":2,"y":-24},"tileIndex":0},{"type":7,"position":{"x":2,"y":-25},"tileIndex":0},{"type":0,"position":{"x":1,"y":-25},"tileIndex":-1},{"type":0,"position":{"x":1,"y":-24},"tileIndex":0},{"type":7,"position":{"x":0,"y":-25},"tileIndex":0},{"type":0,"position":{"x":-1,"y":-25},"tileIndex":0},{"type":7,"position":{"x":-2,"y":-25},"tileIndex":0},{"type":0,"position":{"x":-3,"y":-25},"tileIndex":0},{"type":5,"position":{"x":0,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-1,"y":-24},"tileIndex":0},{"type":5,"position":{"x":6,"y":-24},"tileIndex":0},{"type":0,"position":{"x":17,"y":-24},"tileIndex":0},{"type":0,"position":{"x":17,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":16,"y":-25},"tileIndex":1},{"type":5,"position":{"x":18,"y":-24},"tileIndex":0},{"type":0,"position":{"x":19,"y":-24},"tileIndex":0},{"type":0,"position":{"x":19,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":18,"y":-25},"tileIndex":0},{"type":5,"position":{"x":20,"y":-24},"tileIndex":0},{"type":0,"position":{"x":21,"y":-24},"tileIndex":0},{"type":0,"position":{"x":21,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":20,"y":-25},"tileIndex":2},{"type":0,"position":{"x":23,"y":-24},"tileIndex":0},{"type":0,"position":{"x":23,"y":-25},"tileIndex":-1},{"type":5,"position":{"x":22,"y":-24},"tileIndex":0},{"type":7,"position":{"x":22,"y":-25},"tileIndex":2},{"type":7,"position":{"x":24,"y":-25},"tileIndex":0},{"type":0,"position":{"x":25,"y":-25},"tileIndex":0},{"type":7,"position":{"x":26,"y":-25},"tileIndex":0},{"type":0,"position":{"x":27,"y":-25},"tileIndex":0},{"type":5,"position":{"x":26,"y":-24},"tileIndex":0},{"type":0,"position":{"x":25,"y":-24},"tileIndex":0},{"type":0,"position":{"x":27,"y":-24},"tileIndex":0},{"type":5,"position":{"x":28,"y":-24},"tileIndex":0},{"type":0,"position":{"x":29,"y":-24},"tileIndex":0},{"type":0,"position":{"x":29,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":28,"y":-25},"tileIndex":0},{"type":5,"position":{"x":30,"y":-24},"tileIndex":0},{"type":0,"position":{"x":31,"y":-24},"tileIndex":0},{"type":0,"position":{"x":31,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":30,"y":-25},"tileIndex":1},{"type":5,"position":{"x":32,"y":-24},"tileIndex":0},{"type":0,"position":{"x":33,"y":-24},"tileIndex":0},{"type":0,"position":{"x":33,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":32,"y":-25},"tileIndex":2},{"type":5,"position":{"x":34,"y":-24},"tileIndex":0},{"type":0,"position":{"x":35,"y":-24},"tileIndex":0},{"type":0,"position":{"x":35,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":34,"y":-25},"tileIndex":0},{"type":5,"position":{"x":24,"y":-24},"tileIndex":0},{"type":7,"position":{"x":36,"y":-25},"tileIndex":0},{"type":0,"position":{"x":37,"y":-25},"tileIndex":0},{"type":7,"position":{"x":38,"y":-25},"tileIndex":0},{"type":0,"position":{"x":39,"y":-25},"tileIndex":0},{"type":7,"position":{"x":40,"y":-25},"tileIndex":0},{"type":0,"position":{"x":41,"y":-25},"tileIndex":0},{"type":7,"position":{"x":42,"y":-25},"tileIndex":0},{"type":0,"position":{"x":43,"y":-25},"tileIndex":0},{"type":7,"position":{"x":44,"y":-25},"tileIndex":0},{"type":0,"position":{"x":45,"y":-25},"tileIndex":0},{"type":0,"position":{"x":45,"y":-24},"tileIndex":0},{"type":5,"position":{"x":44,"y":-24},"tileIndex":0},{"type":0,"position":{"x":43,"y":-24},"tileIndex":0},{"type":5,"position":{"x":42,"y":-24},"tileIndex":0},{"type":0,"position":{"x":41,"y":-24},"tileIndex":-1},{"type":5,"position":{"x":40,"y":-24},"tileIndex":0},{"type":0,"position":{"x":39,"y":-24},"tileIndex":0},{"type":5,"position":{"x":38,"y":-24},"tileIndex":0},{"type":0,"position":{"x":37,"y":-24},"tileIndex":-1},{"type":5,"position":{"x":36,"y":-24},"tileIndex":0},{"type":5,"position":{"x":46,"y":-24},"tileIndex":0},{"type":0,"position":{"x":47,"y":-24},"tileIndex":0},{"type":0,"position":{"x":47,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":46,"y":-25},"tileIndex":1},{"type":7,"position":{"x":48,"y":-25},"tileIndex":0},{"type":0,"position":{"x":49,"y":-25},"tileIndex":0},{"type":7,"position":{"x":50,"y":-25},"tileIndex":0},{"type":0,"position":{"x":51,"y":-25},"tileIndex":0},{"type":5,"position":{"x":50,"y":-24},"tileIndex":0},{"type":0,"position":{"x":49,"y":-24},"tileIndex":0},{"type":0,"position":{"x":51,"y":-24},"tileIndex":0},{"type":5,"position":{"x":52,"y":-24},"tileIndex":0},{"type":8,"position":{"x":53,"y":-24},"tileIndex":0},{"type":0,"position":{"x":53,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":52,"y":-25},"tileIndex":1},{"type":5,"position":{"x":48,"y":-24},"tileIndex":0},{"type":5,"position":{"x":-2,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-3,"y":-24},"tileIndex":0},{"type":5,"position":{"x":-4,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-5,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-5,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":-4,"y":-25},"tileIndex":1},{"type":5,"position":{"x":-6,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-7,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-7,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":-6,"y":-25},"tileIndex":0},{"type":7,"position":{"x":-8,"y":-25},"tileIndex":0},{"type":0,"position":{"x":-9,"y":-25},"tileIndex":0},{"type":7,"position":{"x":-10,"y":-25},"tileIndex":0},{"type":0,"position":{"x":-11,"y":-25},"tileIndex":0},{"type":7,"position":{"x":-12,"y":-25},"tileIndex":0},{"type":0,"position":{"x":-13,"y":-25},"tileIndex":0},{"type":7,"position":{"x":-14,"y":-25},"tileIndex":0},{"type":0,"position":{"x":-15,"y":-25},"tileIndex":0},{"type":7,"position":{"x":-16,"y":-25},"tileIndex":0},{"type":0,"position":{"x":-17,"y":-25},"tileIndex":0},{"type":0,"position":{"x":-17,"y":-24},"tileIndex":0},{"type":5,"position":{"x":-18,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-19,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-19,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":-18,"y":-25},"tileIndex":2},{"type":5,"position":{"x":-20,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-21,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-21,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":-20,"y":-25},"tileIndex":0},{"type":5,"position":{"x":-22,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-23,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-23,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":-22,"y":-25},"tileIndex":2},{"type":5,"position":{"x":-24,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-25,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-25,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":-24,"y":-25},"tileIndex":1},{"type":5,"position":{"x":-26,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-27,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-27,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":-26,"y":-25},"tileIndex":0},{"type":5,"position":{"x":-28,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-29,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-29,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":-28,"y":-25},"tileIndex":2},{"type":5,"position":{"x":-30,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-31,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-31,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":-30,"y":-25},"tileIndex":0},{"type":5,"position":{"x":-32,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-33,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-33,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":-32,"y":-25},"tileIndex":1},{"type":5,"position":{"x":-34,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-35,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-35,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":-34,"y":-25},"tileIndex":0},{"type":5,"position":{"x":-36,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-37,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-37,"y":-25},"tileIndex":-1},{"type":7,"position":{"x":-36,"y":-25},"tileIndex":2},{"type":5,"position":{"x":-38,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-39,"y":-25},"tileIndex":0},{"type":7,"position":{"x":-38,"y":-25},"tileIndex":0},{"type":8,"position":{"x":-39,"y":-24},"tileIndex":0},{"type":11,"position":{"x":-39,"y":-23},"tileIndex":0},{"type":9,"position":{"x":-38,"y":-23},"tileIndex":2},{"type":5,"position":{"x":-16,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-15,"y":-24},"tileIndex":0},{"type":5,"position":{"x":-10,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-11,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-9,"y":-24},"tileIndex":0},{"type":5,"position":{"x":-12,"y":-24},"tileIndex":0},{"type":0,"position":{"x":-13,"y":-24},"tileIndex":0},{"type":5,"position":{"x":-14,"y":-24},"tileIndex":0},{"type":5,"position":{"x":-8,"y":-24},"tileIndex":0}],"Enable":true}],"@version":1}"5MOD.Core.TransformComponent,MOD.Core.TileMapComponent?
$31bb1acd-4ffa-4cee-a356-574248380716/maps/map01/문지기?{"name":"문지기","path":"/maps/map01/문지기","nameEditable":true,"enable":true,"visible":true,"displayOrder":3,"pathConstraints":"///","revision":4,"origin":{"type":"Model","entry_id":"StaticNPC","sub_entity_id":null},"modelId":"staticnpc","@components":[{"@type":"MOD.Core.TransformComponent","Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":2.97622323,"y":-4.84500074,"z":999.999},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.68578756,"y":1.96279061,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteRendererComponent","ActionSheet":{},"EndFrameIndex":0,"RenderSetting":1,"SortingLayer":"MapLayer0","SpriteRUID":"ab987182c4e24cbcaf87f5d155f86593","StartFrameIndex":0,"Enable":true},{"@type":"MOD.Core.RigidbodyComponent","MoveVelocity":{"x":0.0,"y":0.0},"RealMoveVelocity":{"x":0.0,"y":0.0},"Enable":true},{"@type":"MOD.Core.StateComponent","Enable":true},{"@type":"MOD.Core.ChatBalloonComponent","AutoShowEnabled":true,"ChatBalloonRUID":{"DataId":"7b6bd117bd0446a5bacec8ea6831c997"},"ChatModeEnabled":false,"FontColor":{"r":0.427624226,"g":0.281524658,"b":0.48046875,"a":1.0},"FontSize":2.0,"Message":"크응....","Offset":-5.0,"Enable":true},{"@type":"MOD.Core.StateAnimationComponent","ActionSheet":{"stand":"ab987182c4e24cbcaf87f5d155f86593","say":"6a137a04d9bb405f81118bb36ae93ece","eye":"7c5eb45b6ceb40e3bc90c82adbb35c75","laugh":"50f7de318ca14f26a979bda5e067e024"},"Enable":true},{"@type":"MOD.Core.NameTagComponent","Name":"문지기","NameTagRUID":{"DataId":"9bf18287398c44699c20fc5123d1a1ae"},"Enable":true}],"@version":1}"?MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.RigidbodyComponent,MOD.Core.StateComponent,MOD.Core.ChatBalloonComponent,MOD.Core.StateAnimationComponent,MOD.Core.NameTagComponent?
$fea6e9a2-d68f-4de0-8e90-e122507bc4af/maps/map01/루시드?{"name":"루시드","path":"/maps/map01/루시드","nameEditable":true,"enable":true,"visible":true,"displayOrder":4,"pathConstraints":"///","revision":11,"origin":{"type":"Model","entry_id":"StaticMonster","sub_entity_id":null},"modelId":"staticmonster","@components":[{"@type":"MOD.Core.TransformComponent","Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":8.238269,"y":-4.87935,"z":999.999},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.StateAnimationComponent","ActionSheet":{"fly":"7d6915d162074fbdba004f4a5e7bbafd","hit":"8d06319f56fe427e9568fc4d9095448d","die":"ea2f7c0f10c84703ae8d1d3fb61faf30","skill":"e4a63122686b407ca0e73f5dbecabeb5","skill2":"f4c436458e964829ac2638883965e5c9","skill3":"73223623210a4c00b0eb46586b3444ef","skill4":"cb4f8139eac249a8939466adcd57f7a6","skill5":"b873d999b1e848f19b78e0a3dd154a96","skill6":"da2b5984f385427f90ed28c6e0f26505","attack":"158cdeb123bc4bc4a83425b1f7d5eaf4","attack2":"bce23477c14347c1973ca3102d9985c5","attack3":"2175116b7731423f9757b8deee379d44","attack4":"7e85064137e94dc8b23d49e5bddbddcd","attack5":"778a3bcec1284e72ab236e643e6ed326","attack6":"fa0a8998f2084ce190462e3f40adb0a9"},"Enable":true},{"@type":"MOD.Core.SpriteRendererComponent","ActionSheet":{},"EndFrameIndex":0,"RenderSetting":1,"SortingLayer":"MapLayer0","SpriteRUID":"7d6915d162074fbdba004f4a5e7bbafd","StartFrameIndex":0,"Enable":true},{"@type":"MOD.Core.ChatBalloonComponent","AutoShowEnabled":true,"BalloonScale":1.3,"ChatBalloonRUID":{"DataId":"141038e128dc4acdb19bf3eefb91e708"},"FontColor":{"r":1.0,"g":0.224609375,"b":0.224609375,"a":1.0},"FontSize":1.3,"HideDuration":0.0,"Message":"결국 여기까지 오셨네요..","Offset":2.0,"ShowDuration":20.0,"Enable":true},{"@type":"MOD.Core.NameTagComponent","FontColor":{"r":0.7340548,"g":0.256919861,"b":0.8769531,"a":1.0},"Name":"루시드","NameTagRUID":{"DataId":"0a3f0a8ece2f42b1a6f3de91b03daddc"},"Enable":true},{"@type":"MOD.Core.TweenLineComponent","Duration":5.0,"Positions":[{"x":3.0,"y":0.0}],"StopType":2,"AutoDestroy":true,"Enable":true}],"@version":1}"?MOD.Core.TransformComponent,MOD.Core.StateAnimationComponent,MOD.Core.SpriteRendererComponent,MOD.Core.ChatBalloonComponent,MOD.Core.NameTagComponent,MOD.Core.TweenLineComponent?	
$48fb0e88-057a-4424-8242-19f163748425/maps/map01/portal-5?{"name":"portal-5","path":"/maps/map01/portal-5","nameEditable":true,"enable":true,"visible":true,"displayOrder":5,"pathConstraints":"///","revision":2,"origin":{"type":"Model","entry_id":"Portal","sub_entity_id":null},"modelId":"portal","@components":[{"@type":"MOD.Core.TransformComponent","Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.208396912,"y":-4.7429285,"z":999.999},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteRendererComponent","ActionSheet":{},"EndFrameIndex":2147483647,"RenderSetting":0,"SortingLayer":"MapLayer0","SpriteRUID":"1748bf90482d427d841d9c594145df7f","StartFrameIndex":0,"Enable":true},{"@type":"MOD.Core.PortalComponent","BoxOffset":{"x":-0.01999998,"y":0.539999962},"BoxSize":{"x":1.2,"y":1.76},"IsLegacy":false,"PortalEntityRef":{"IsRelative":false,"EntityId":"97833481-25ad-4e33-86f9-61fffab0ae96"},"Enable":true},{"@type":"MOD.Core.TagComponent","Tags":["MODRespawnArea"],"Enable":true}],"@version":1}"kMOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.PortalComponent,MOD.Core.TagComponent?	
$97833481-25ad-4e33-86f9-61fffab0ae96/maps/map01/portal-1?{"name":"portal-1","path":"/maps/map01/portal-1","nameEditable":true,"enable":true,"visible":true,"displayOrder":6,"pathConstraints":"///","revision":3,"origin":{"type":"Model","entry_id":"Portal","sub_entity_id":null},"modelId":"portal","@components":[{"@type":"MOD.Core.TransformComponent","Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":12.1817083,"y":-4.70602846,"z":999.999},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteRendererComponent","ActionSheet":{},"EndFrameIndex":2147483647,"RenderSetting":0,"SortingLayer":"MapLayer0","SpriteRUID":"edd691cd6ce2417c81f1aee6b6ebedd3","StartFrameIndex":0,"Enable":true},{"@type":"MOD.Core.PortalComponent","BoxOffset":{"x":0.0149999857,"y":0.63},"BoxSize":{"x":1.01,"y":1.42},"IsLegacy":false,"PortalEntityRef":{"IsRelative":false,"EntityId":"48fb0e88-057a-4424-8242-19f163748425"},"Enable":true},{"@type":"MOD.Core.TagComponent","Tags":["MODRespawnArea"],"Enable":true}],"@version":1}"kMOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.PortalComponent,MOD.Core.TagComponent?
$b6069c8e-aefb-4fe1-9937-fc9f0d15d5fd/maps/map01/object-251?{"name":"object-251","path":"/maps/map01/object-251","nameEditable":true,"enable":true,"visible":true,"displayOrder":7,"pathConstraints":"///","revision":1,"origin":{"type":"Model","entry_id":"MapObject","sub_entity_id":null},"modelId":"mapobject","@components":[{"@type":"MOD.Core.TransformComponent","Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":13.3077106,"y":-3.74017,"z":999.999},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteRendererComponent","ActionSheet":{},"EndFrameIndex":2147483647,"RenderSetting":0,"SortingLayer":"MapLayer0","SpriteRUID":"1eb744d98d934366b1cf4fdb35711532","StartFrameIndex":0,"Enable":true}],"@version":1}"<MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent?
$dfa3b118-ea1e-4629-b761-f0e83a000552/maps/map01/object-572?{"name":"object-572","path":"/maps/map01/object-572","nameEditable":true,"enable":true,"visible":true,"displayOrder":8,"pathConstraints":"///","revision":2,"origin":{"type":"Model","entry_id":"MapObject","sub_entity_id":null},"modelId":"mapobject","@components":[{"@type":"MOD.Core.TransformComponent","Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":15.71612,"y":-5.39377165,"z":999.999},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteRendererComponent","ActionSheet":{},"EndFrameIndex":2147483647,"OrderInLayer":2,"RenderSetting":0,"SortingLayer":"MapLayer0","SpriteRUID":"947194de63d04aeb904f559d019d5c12","StartFrameIndex":0,"Enable":true}],"@version":1}"<MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent?
$f5208247-3272-46f4-9ef3-a54c408008f8/maps/map01/object-640?{"name":"object-640","path":"/maps/map01/object-640","nameEditable":true,"enable":true,"visible":true,"displayOrder":9,"pathConstraints":"///","revision":2,"origin":{"type":"Model","entry_id":"MapObject","sub_entity_id":null},"modelId":"mapobject","@components":[{"@type":"MOD.Core.TransformComponent","Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":16.7482719,"y":-4.2300005,"z":999.999},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteRendererComponent","ActionSheet":{},"EndFrameIndex":2147483647,"RenderSetting":0,"SortingLayer":"MapLayer0","SpriteRUID":"d3190c1b6ee84156a21593ecaf6aae51","StartFrameIndex":0,"Enable":true}],"@version":1}"<MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent?
$526dc4f0-2cc9-42b1-8f13-9349404b8fe0/maps/map01/object-640_1?{"name":"object-640_1","path":"/maps/map01/object-640_1","nameEditable":true,"enable":true,"visible":true,"displayOrder":10,"pathConstraints":"///","revision":2,"origin":{"type":"Model","entry_id":"MapObject","sub_entity_id":null},"modelId":"mapobject","@components":[{"@type":"MOD.Core.TransformComponent","Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":14.8158836,"y":-4.2300005,"z":999.999},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteRendererComponent","ActionSheet":{},"EndFrameIndex":2147483647,"RenderSetting":0,"SortingLayer":"MapLayer0","SpriteRUID":"d3190c1b6ee84156a21593ecaf6aae51","StartFrameIndex":0,"Enable":true}],"@version":1}"<MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent?
$29ae2e0c-605e-4928-84f5-91b15d9225a4/maps/map01/object-8?{"name":"object-8","path":"/maps/map01/object-8","nameEditable":true,"enable":true,"visible":true,"displayOrder":11,"pathConstraints":"///","revision":2,"origin":{"type":"Model","entry_id":"MapObject","sub_entity_id":null},"modelId":"mapobject","@components":[{"@type":"MOD.Core.TransformComponent","Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":-0.104506493,"y":-0.9652667,"z":999.999},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteRendererComponent","ActionSheet":{},"EndFrameIndex":2147483647,"RenderSetting":0,"SortingLayer":"MapLayer0","SpriteRUID":"2ce666dc527843e197522153acb00aa6","StartFrameIndex":0,"Enable":true},{"@type":"MOD.Core.ClimbableComponent","BoxOffset":{"x":0.004999995,"y":-0.00500011444},"BoxSize":{"x":3.67,"y":4.89},"Enable":true}],"@version":1}"XMOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.ClimbableComponent?	
$c6459ab0-f958-4557-bfbb-72f10f2ec9c5/maps/map01/portal-2?{"name":"portal-2","path":"/maps/map01/portal-2","nameEditable":true,"enable":true,"visible":true,"displayOrder":12,"pathConstraints":"///","revision":2,"origin":{"type":"Model","entry_id":"Portal","sub_entity_id":null},"modelId":"portal","@components":[{"@type":"MOD.Core.TransformComponent","Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":19.61001,"y":-4.83620739,"z":999.999},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteRendererComponent","ActionSheet":{},"EndFrameIndex":2147483647,"RenderSetting":0,"SortingLayer":"MapLayer0","SpriteRUID":"0d6a5e8c750f4ec6aa2a9d9f68741840","StartFrameIndex":0,"Enable":true},{"@type":"MOD.Core.PortalComponent","BoxOffset":{"x":0.004999995,"y":0.745},"BoxSize":{"x":1.17,"y":1.65},"IsLegacy":false,"PortalEntityRef":{"IsRelative":false,"EntityId":"3a36d3d2-5af3-4d3a-98c8-1ad81958272b"},"Enable":true},{"@type":"MOD.Core.TagComponent","Tags":["MODRespawnArea"],"Enable":true}],"@version":1}"kMOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.PortalComponent,MOD.Core.TagComponent?
$9402c5d8-174d-4de5-8f91-bbc440bd7533/maps/map01/trap-27?{"name":"trap-27","path":"/maps/map01/trap-27","nameEditable":true,"enable":true,"visible":true,"displayOrder":13,"pathConstraints":"///","revision":2,"origin":{"type":"Model","entry_id":"StaticMonster","sub_entity_id":null},"modelId":"staticmonster","@components":[{"@type":"MOD.Core.TransformComponent","Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":-2.10092187,"y":-4.477986,"z":999.999},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.StateAnimationComponent","Enable":true},{"@type":"MOD.Core.SpriteRendererComponent","ActionSheet":{},"EndFrameIndex":2147483647,"RenderSetting":0,"SortingLayer":"MapLayer0","SpriteRUID":"d2b1a6e53ed34c4ba90f716b3af734fd","StartFrameIndex":0,"Enable":true},{"@type":"MOD.Core.TriggerComponent","BoxSize":{"x":1.29,"y":1.29},"CircleRadius":0.645,"ColliderOffset":{"x":-0.0450000167,"y":-0.0150000453},"ColliderType":1,"IsLegacy":false,"Enable":true}],"@version":1}"wMOD.Core.TransformComponent,MOD.Core.StateAnimationComponent,MOD.Core.SpriteRendererComponent,MOD.Core.TriggerComponent?	
$e8f76121-a74f-4018-9e93-50aae5e0227d/maps/map01/마이룸 포탈?{"name":"마이룸 포탈","path":"/maps/map01/마이룸 포탈","nameEditable":true,"enable":true,"visible":true,"displayOrder":14,"pathConstraints":"///","revision":4,"origin":{"type":"Model","entry_id":"Portal","sub_entity_id":null},"modelId":"portal","@components":[{"@type":"MOD.Core.TransformComponent","Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":5.575843,"y":-4.78855,"z":999.999},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteRendererComponent","ActionSheet":{},"EndFrameIndex":2147483647,"RenderSetting":0,"SortingLayer":"MapLayer0","SpriteRUID":"49df57e35835412fafbc217d366d3480","StartFrameIndex":0,"Enable":true},{"@type":"MOD.Core.PortalComponent","BoxOffset":{"x":0.00999999,"y":0.98},"BoxSize":{"x":2.44,"y":2.92},"IsLegacy":false,"PortalEntityRef":{"IsRelative":false,"EntityId":"6b51955f-e09b-491c-be8b-9cb05ccaab86"},"Enable":true},{"@type":"MOD.Core.TagComponent","Tags":["MODRespawnArea"],"Enable":true}],"@version":1}"kMOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.PortalComponent,MOD.Core.TagComponentX??
 e1be6b9454ea4923b6b06132f6c42fda 49894c1087b7415daa3cc5d1c9929a60map://map02"	x-mod/map2??֚
$fddcfbab-bd33-4968-b0b6-d0d6472e512e/maps/map02ƙ{
          "name": "map02",
          "path": "/maps/map02",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "//",
          "revision": 9,
          "modelId": null,
          "@components": [
            {
              "@type": "MOD.Core.MapComponent",
              "IsInstanceMap": false,
              "TileMapMode": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.FootholdComponent",
              "FootholdsByLayer": {
                "1": [
                  {
                    "Length": 0.5400009,
                    "NextFootholdId": 29,
                    "PreviousFootholdId": 28,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 1,
                    "StartPoint": {
                      "x": 19.08,
                      "y": 2.85000014
                    },
                    "EndPoint": {
                      "x": 19.62,
                      "y": 2.85000014
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6300001,
                    "NextFootholdId": 3,
                    "PreviousFootholdId": 43,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 2,
                    "StartPoint": {
                      "x": -2.87999988,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": -2.24999976,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9,
                    "NextFootholdId": 4,
                    "PreviousFootholdId": 2,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 3,
                    "StartPoint": {
                      "x": -2.24999976,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": -1.34999979,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000001,
                    "NextFootholdId": 5,
                    "PreviousFootholdId": 3,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 4,
                    "StartPoint": {
                      "x": -1.35,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": -0.449999958,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9,
                    "NextFootholdId": 6,
                    "PreviousFootholdId": 4,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 5,
                    "StartPoint": {
                      "x": -0.45,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 0.449999958,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9,
                    "NextFootholdId": 7,
                    "PreviousFootholdId": 5,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 6,
                    "StartPoint": {
                      "x": 0.450000018,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 1.35,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000002,
                    "NextFootholdId": 8,
                    "PreviousFootholdId": 6,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 7,
                    "StartPoint": {
                      "x": 1.34999979,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 2.25,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000001,
                    "NextFootholdId": 9,
                    "PreviousFootholdId": 7,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 8,
                    "StartPoint": {
                      "x": 2.24999976,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 3.14999986,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.899999857,
                    "NextFootholdId": 10,
                    "PreviousFootholdId": 8,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 9,
                    "StartPoint": {
                      "x": 3.14999986,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 4.04999971,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 11,
                    "PreviousFootholdId": 9,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 10,
                    "StartPoint": {
                      "x": 4.05,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 4.95,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 12,
                    "PreviousFootholdId": 10,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 11,
                    "StartPoint": {
                      "x": 4.95,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 5.84999943,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 13,
                    "PreviousFootholdId": 11,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 12,
                    "StartPoint": {
                      "x": 5.85,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 6.74999952,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 14,
                    "PreviousFootholdId": 12,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 13,
                    "StartPoint": {
                      "x": 6.75,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 7.64999962,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.899999142,
                    "NextFootholdId": 15,
                    "PreviousFootholdId": 13,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 14,
                    "StartPoint": {
                      "x": 7.65,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 8.549999,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 16,
                    "PreviousFootholdId": 14,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 15,
                    "StartPoint": {
                      "x": 8.55,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 9.45,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 17,
                    "PreviousFootholdId": 15,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 16,
                    "StartPoint": {
                      "x": 9.45,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 10.3499994,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 18,
                    "PreviousFootholdId": 16,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 17,
                    "StartPoint": {
                      "x": 10.3499994,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 11.249999,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 19,
                    "PreviousFootholdId": 17,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 18,
                    "StartPoint": {
                      "x": 11.25,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 12.15,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 20,
                    "PreviousFootholdId": 18,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 19,
                    "StartPoint": {
                      "x": 12.15,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 13.0499992,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 21,
                    "PreviousFootholdId": 19,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 20,
                    "StartPoint": {
                      "x": 13.05,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 13.95,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 22,
                    "PreviousFootholdId": 20,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 21,
                    "StartPoint": {
                      "x": 13.95,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 14.8499994,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 23,
                    "PreviousFootholdId": 21,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 22,
                    "StartPoint": {
                      "x": 14.8499994,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 15.749999,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000006,
                    "NextFootholdId": 24,
                    "PreviousFootholdId": 22,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 23,
                    "StartPoint": {
                      "x": 15.749999,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 16.65,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000015,
                    "NextFootholdId": 25,
                    "PreviousFootholdId": 23,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 24,
                    "StartPoint": {
                      "x": 16.65,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 17.5500011,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000015,
                    "NextFootholdId": 26,
                    "PreviousFootholdId": 24,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 25,
                    "StartPoint": {
                      "x": 17.55,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 18.45,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.630001068,
                    "NextFootholdId": 34,
                    "PreviousFootholdId": 25,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 26,
                    "StartPoint": {
                      "x": 18.4499989,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 19.08,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.539999962,
                    "NextFootholdId": 38,
                    "PreviousFootholdId": 37,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 27,
                    "StartPoint": {
                      "x": -3.41999984,
                      "y": 2.85000014
                    },
                    "EndPoint": {
                      "x": -2.87999988,
                      "y": 2.85000014
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.75,
                    "NextFootholdId": 1,
                    "PreviousFootholdId": 30,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 28,
                    "StartPoint": {
                      "x": 19.08,
                      "y": 2.10000014
                    },
                    "EndPoint": {
                      "x": 19.08,
                      "y": 2.85000014
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.75,
                    "NextFootholdId": 31,
                    "PreviousFootholdId": 1,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 29,
                    "StartPoint": {
                      "x": 19.62,
                      "y": 2.85000014
                    },
                    "EndPoint": {
                      "x": 19.62,
                      "y": 2.10000014
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5999998,
                    "NextFootholdId": 28,
                    "PreviousFootholdId": 32,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 30,
                    "StartPoint": {
                      "x": 19.08,
                      "y": 1.50000012
                    },
                    "EndPoint": {
                      "x": 19.08,
                      "y": 2.1
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5999998,
                    "NextFootholdId": 33,
                    "PreviousFootholdId": 29,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 31,
                    "StartPoint": {
                      "x": 19.62,
                      "y": 2.1
                    },
                    "EndPoint": {
                      "x": 19.62,
                      "y": 1.50000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.600000143,
                    "NextFootholdId": 30,
                    "PreviousFootholdId": 34,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 32,
                    "StartPoint": {
                      "x": 19.08,
                      "y": 0.9
                    },
                    "EndPoint": {
                      "x": 19.08,
                      "y": 1.50000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.600000143,
                    "NextFootholdId": 35,
                    "PreviousFootholdId": 31,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 33,
                    "StartPoint": {
                      "x": 19.62,
                      "y": 1.50000012
                    },
                    "EndPoint": {
                      "x": 19.62,
                      "y": 0.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.449999958,
                    "NextFootholdId": 32,
                    "PreviousFootholdId": 26,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 34,
                    "StartPoint": {
                      "x": 19.08,
                      "y": 0.450000018
                    },
                    "EndPoint": {
                      "x": 19.08,
                      "y": 0.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 36,
                    "PreviousFootholdId": 33,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 35,
                    "StartPoint": {
                      "x": 19.62,
                      "y": 0.9
                    },
                    "EndPoint": {
                      "x": 19.62,
                      "y": 0.299999982
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 35,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 36,
                    "StartPoint": {
                      "x": 19.62,
                      "y": 0.3
                    },
                    "EndPoint": {
                      "x": 19.62,
                      "y": -0.3
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.75,
                    "NextFootholdId": 27,
                    "PreviousFootholdId": 39,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 37,
                    "StartPoint": {
                      "x": -3.41999984,
                      "y": 2.10000014
                    },
                    "EndPoint": {
                      "x": -3.41999984,
                      "y": 2.85000014
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.75,
                    "NextFootholdId": 40,
                    "PreviousFootholdId": 27,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 38,
                    "StartPoint": {
                      "x": -2.87999988,
                      "y": 2.85000014
                    },
                    "EndPoint": {
                      "x": -2.87999988,
                      "y": 2.10000014
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5999998,
                    "NextFootholdId": 37,
                    "PreviousFootholdId": 41,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 39,
                    "StartPoint": {
                      "x": -3.41999984,
                      "y": 1.50000012
                    },
                    "EndPoint": {
                      "x": -3.41999984,
                      "y": 2.1
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5999998,
                    "NextFootholdId": 42,
                    "PreviousFootholdId": 38,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 40,
                    "StartPoint": {
                      "x": -2.87999988,
                      "y": 2.1
                    },
                    "EndPoint": {
                      "x": -2.87999988,
                      "y": 1.50000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.600000143,
                    "NextFootholdId": 39,
                    "PreviousFootholdId": 44,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 41,
                    "StartPoint": {
                      "x": -3.41999984,
                      "y": 0.9
                    },
                    "EndPoint": {
                      "x": -3.41999984,
                      "y": 1.50000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.600000143,
                    "NextFootholdId": 43,
                    "PreviousFootholdId": 40,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 42,
                    "StartPoint": {
                      "x": -2.87999988,
                      "y": 1.50000012
                    },
                    "EndPoint": {
                      "x": -2.87999988,
                      "y": 0.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.449999958,
                    "NextFootholdId": 2,
                    "PreviousFootholdId": 42,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 43,
                    "StartPoint": {
                      "x": -2.87999988,
                      "y": 0.9
                    },
                    "EndPoint": {
                      "x": -2.87999988,
                      "y": 0.450000018
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 41,
                    "PreviousFootholdId": 45,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 44,
                    "StartPoint": {
                      "x": -3.41999984,
                      "y": 0.299999982
                    },
                    "EndPoint": {
                      "x": -3.41999984,
                      "y": 0.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 44,
                    "PreviousFootholdId": 0,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "efb52cf8-0044-4d41-884f-2303d9a3e5a3",
                    "Id": 45,
                    "StartPoint": {
                      "x": -3.41999984,
                      "y": -0.3
                    },
                    "EndPoint": {
                      "x": -3.41999984,
                      "y": 0.3
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  }
                ]
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.SoundComponent",
              "AudioClipRUID": "4cb9a18f1ed540ada6f40e7cd1612a65",
              "Bgm": true,
              "PlayOnEnable": true,
              "Volume": 0.4,
              "Enable": true
            },
            {
              "@type": "script.NPCTalk",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "fddcfbab-bd33-4968-b0b6-d0d6472e512e"
        }"WMOD.Core.MapComponent,MOD.Core.FootholdComponent,MOD.Core.SoundComponent,script.NPCTalk?
$520f921a-f30d-4210-8d42-d15af0cf151f/maps/map02/Background?{
          "name": "Background",
          "path": "/maps/map02/Background",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "///",
          "revision": 3,
          "modelId": null,
          "@components": [
            {
              "@type": "MOD.Core.BackgroundComponent",
              "TemplateRUID": "069749a963fc49a384269147abd615a4",
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "520f921a-f30d-4210-8d42-d15af0cf151f"
        }"MOD.Core.BackgroundComponent?9
$afd85fcd-cf4f-4245-94ca-70d38c67525f/maps/map02/MapleMapLayer?8{
          "name": "MapleMapLayer",
          "path": "/maps/map02/MapleMapLayer",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "///",
          "revision": 1,
          "origin": {
            "type": "Model",
            "entry_id": "maplemaplayer",
            "sub_entity_id": null
          },
          "modelId": "maplemaplayer",
          "@components": [
            {
              "@type": "MOD.Core.MapLayerComponent",
              "IsVisible": true,
              "LayerSortOrder": 0,
              "Locked": false,
              "MapLayerName": "Layer1",
              "Thumbnail": "iVBORw0KGgoAAAANSUhEUgAAAMgAAABkCAYAAADDhn8LAAASW0lEQVR4Ae2cf3BU13XHv7tPb/2WJ612tUKgQcGSxcCAMRgNFIPtccwYk9jxj9CBSe16Uo8znnbi1J6p20zHafJPZjqpM+k0caae1iROOm0ySU1cp4EkpMRxUgg2hokhkouFBELKIqHVrlYs+9int9vvuauVhXD4ZQQmc65G2t33zrvv3M89v+59C4A2JaAElIASUAJKQAkoASWgBJSAElACSkAJKAEloASUgBJQAkpACSgBJaAElIASUAJKQAkoASWgBJSAElACSkAJKAEloASUgBJQAkpACSgBJaAElIASUAJKQAkoASWgBJSAElACSkAJKAEloASUgBJQAkpACSgBJaAElIASUAJKQAkoASWgBJSAElACSkAJKAEloASUgBJQAkpACSgBJaAElIASUAJKQAkoASWgBJSAElACSkAJKAEloASUgBJQAkpACSgBJaAElIASUAJKQAkoASWgBJSAElACSkAJKAEloASUgBJQAkpACSgBJaAElIASUAJKQAkoASWgBJSAElACSkAJKIErTSB0pW/4fu43/1+Gy+6bL/666JfLwdpH1xz9i3nLyv7pA++nT71WCZyLgHWukx+kcyH7uptam+M3W4NHIre2NVrHf/lSau6df3Lv2Olg8fhgz08/SLqqLn84BK4ZB2l/YXBw1ck3h1pnJ3HqtI9kXS3gjVjO/GVzTvx2dzfGi31/ONOiI/mgEAh/UBQ5nx7ukV09H17SglsWz8VHVrRgaDSPEH9y77wdXfIPu7ed73o9rwQuhcA14yCloFR+/cgJ2NR4d88JPHDrEmRP+qiddR2w7+XXL2Xweo0SOB+Ba8dBmhbM+aPW2WY8r77eie17OtFYF8WcOUn4HX98y/kGqueVwKUQuGYcpGakL/1v239rxvip++/AQH8Gfmkcw4NZ+O7sWZcyeL1GCZyPwLWxSA/XtK5bPO/WI4P93tz6iPfCy3s8O/C99GjOK532PNcfHhw6+KsuLtSPnW/Ael4JXAyBa8JBEn/67I+t/n1vH+8byNTWjGcKY6OZUimfaZoVZE78biBTGuwZKt3y0Gav89VvXczgVVYJnI/ANeEg48cOZGsXrr6lfF2d6zYkXbs27g6XHLcQdt2a+kY3cvsja/pffPozmkHON916/mIJ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",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "afd85fcd-cf4f-4245-94ca-70d38c67525f"
        }"MOD.Core.MapLayerComponent??
$efb52cf8-0044-4d41-884f-2303d9a3e5a3/maps/map02/TileMap??{
          "name": "TileMap",
          "path": "/maps/map02/TileMap",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "///",
          "revision": 2,
          "origin": {
            "type": "Model",
            "entry_id": "tilemap",
            "sub_entity_id": null
          },
          "modelId": "tilemap",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -0.225,
                "y": -0.15,
                "z": 1000.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TileMapComponent",
              "IsOddGridPosition": false,
              "SortingLayer": "MapLayer0",
              "TileMapVersion": 1,
              "TileSetRUID": {
                "DataId": "899e3eb057974c3fb82924cfc9ad3d20"
              },
              "Tiles": [
                {
                  "type": 5,
                  "position": {
                    "x": 14,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 14,
                    "y": -1
                  },
                  "tileIndex": 4
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 14,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 16,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 16,
                    "y": -1
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 17,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 17,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 16,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 17,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 18,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 18,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 19,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 19,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 18,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 19,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 20,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 20,
                    "y": -1
                  },
                  "tileIndex": 4
                },
                {
                  "type": 0,
                  "position": {
                    "x": 21,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 21,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 20,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 21,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 22,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 22,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 23,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 23,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 22,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 23,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 24,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 24,
                    "y": -1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 25,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 25,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 24,
                    "y": 1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 25,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 26,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 26,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 27,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 27,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 26,
                    "y": 1
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 27,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 28,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 28,
                    "y": -1
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 29,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 29,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 28,
                    "y": 1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 29,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 30,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 30,
                    "y": -1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 31,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 31,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 30,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 31,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 32,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 32,
                    "y": -1
                  },
                  "tileIndex": 4
                },
                {
                  "type": 0,
                  "position": {
                    "x": 33,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 33,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 32,
                    "y": 1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 33,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 34,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 34,
                    "y": -1
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 35,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 35,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 34,
                    "y": 1
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 35,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 36,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 36,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 37,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 37,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 36,
                    "y": 1
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 37,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 38,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 38,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 39,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 39,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 38,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 39,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 40,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 40,
                    "y": -1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 41,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 41,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 40,
                    "y": 1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 41,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 42,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 42,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 43,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 8,
                  "position": {
                    "x": 43,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 42,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 43,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 10,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 10,
                    "y": -1
                  },
                  "tileIndex": 3
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 10,
                    "y": 1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 12,
                    "y": 0
                  },
                  "tileIndex": 7
                },
                {
                  "type": 7,
                  "position": {
                    "x": 12,
                    "y": -1
                  },
                  "tileIndex": 3
                },
                {
                  "type": 9,
                  "position": {
                    "x": 12,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 8,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 8,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 8,
                    "y": 1
                  },
                  "tileIndex": 2
                },
                {
                  "type": 5,
                  "position": {
                    "x": 6,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 6,
                    "y": -1
                  },
                  "tileIndex": 3
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 6,
                    "y": 1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 4,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 4,
                    "y": -1
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 4,
                    "y": 1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 2,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 2,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 2,
                    "y": 1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 0,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 0,
                    "y": -1
                  },
                  "tileIndex": 3
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 0,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": -2,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": -2,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": -2,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 43,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 43,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 43,
                    "y": 5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 43,
                    "y": 6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 43,
                    "y": 7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 43,
                    "y": 8
                  },
                  "tileIndex": 0
                },
                {
                  "type": 11,
                  "position": {
                    "x": 43,
                    "y": 9
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 43,
                    "y": 2
                  },
                  "tileIndex": 1
                },
                {
                  "type": 5,
                  "position": {
                    "x": -4,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": -4,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": -4,
                    "y": 1
                  },
                  "tileIndex": 2
                },
                {
                  "type": 5,
                  "position": {
                    "x": -6,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": -6,
                    "y": -1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 8,
                  "position": {
                    "x": -7,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": -6,
                    "y": 1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 6,
                  "position": {
                    "x": -7,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": -7,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": 5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": -7,
                    "y": 6
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": -7,
                    "y": 7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": -7,
                    "y": 8
                  },
                  "tileIndex": 0
                },
                {
                  "type": 11,
                  "position": {
                    "x": -7,
                    "y": 9
                  },
                  "tileIndex": 0
                }
              ],
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "efb52cf8-0044-4d41-884f-2303d9a3e5a3"
        }"5MOD.Core.TransformComponent,MOD.Core.TileMapComponent?
$2dc7c12d-4433-4615-895a-bbc48718148c/maps/map02/npc-5745?{
          "name": "npc-5745",
          "path": "/maps/map02/npc-5745",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 3,
          "pathConstraints": "///",
          "revision": 3,
          "origin": {
            "type": "Model",
            "entry_id": "StaticNPC",
            "sub_entity_id": null
          },
          "modelId": "staticnpc",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 3.181344,
                "y": 0.525,
                "z": 999.999
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "EndFrameIndex": 0,
              "RenderSetting": 1,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "715638ceca4f430fa91794bdfa6de32c",
              "StartFrameIndex": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.RigidbodyComponent",
              "MoveVelocity": {
                "x": 0.0,
                "y": 0.0
              },
              "RealMoveVelocity": {
                "x": 0.0,
                "y": 0.0
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.StateComponent",
              "Enable": true
            },
            {
              "@type": "MOD.Core.ChatBalloonComponent",
              "ChatBalloonRUID": {
                "DataId": "7b6bd117bd0446a5bacec8ea6831c997"
              },
              "ChatModeEnabled": false,
              "Enable": true
            },
            {
              "@type": "MOD.Core.StateAnimationComponent",
              "ActionSheet": {
                "stand": "715638ceca4f430fa91794bdfa6de32c"
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.NameTagComponent",
              "Name": "왕비 이피아",
              "NameTagRUID": {
                "DataId": "9bf18287398c44699c20fc5123d1a1ae"
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.TouchReceiveComponent",
              "Enable": true
            },
            {
              "@type": "script.NPCTalk",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "2dc7c12d-4433-4615-895a-bbc48718148c"
        }"?MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.RigidbodyComponent,MOD.Core.StateComponent,MOD.Core.ChatBalloonComponent,MOD.Core.StateAnimationComponent,MOD.Core.NameTagComponent,MOD.Core.TouchReceiveComponent,script.NPCTalk?
$3a36d3d2-5af3-4d3a-98c8-1ad81958272b/maps/map02/portal-1?{
          "name": "portal-1",
          "path": "/maps/map02/portal-1",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 4,
          "pathConstraints": "///",
          "revision": 3,
          "origin": {
            "type": "Model",
            "entry_id": "Portal",
            "sub_entity_id": null
          },
          "modelId": "portal",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -2.07164955,
                "y": 0.51379323,
                "z": 999.999
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "EndFrameIndex": 2147483647,
              "RenderSetting": 0,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "edd691cd6ce2417c81f1aee6b6ebedd3",
              "StartFrameIndex": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.PortalComponent",
              "BoxOffset": {
                "x": 0.0149999857,
                "y": 0.63
              },
              "BoxSize": {
                "x": 1.01,
                "y": 1.42
              },
              "IsLegacy": false,
              "PortalEntityRef": {
                "IsRelative": false,
                "EntityId": "c6459ab0-f958-4557-bfbb-72f10f2ec9c5"
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.TagComponent",
              "Tags": [
                "MODRespawnArea"
              ],
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "3a36d3d2-5af3-4d3a-98c8-1ad81958272b"
        }"kMOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.PortalComponent,MOD.Core.TagComponentX??
 ac00d9d09bd54d7185932fa9fd1200c6 49894c1087b7415daa3cc5d1c9929a60map://map03"	x-mod/map2????
$9a20652d-c555-4977-9a09-56c4f814a91e/maps/map03??{
          "name": "map03",
          "path": "/maps/map03",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "//",
          "revision": 14,
          "modelId": null,
          "@components": [
            {
              "@type": "MOD.Core.MapComponent",
              "IsInstanceMap": false,
              "TileMapMode": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.FootholdComponent",
              "FootholdsByLayer": {
                "1": [
                  {
                    "Length": 1.09000015,
                    "NextFootholdId": 2,
                    "PreviousFootholdId": 17,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 1,
                    "StartPoint": {
                      "x": -3.34,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": -2.24999976,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.899999738,
                    "NextFootholdId": 3,
                    "PreviousFootholdId": 1,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 2,
                    "StartPoint": {
                      "x": -2.24999976,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": -1.35,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000001,
                    "NextFootholdId": 4,
                    "PreviousFootholdId": 2,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 3,
                    "StartPoint": {
                      "x": -1.35,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": -0.449999958,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9,
                    "NextFootholdId": 5,
                    "PreviousFootholdId": 3,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 4,
                    "StartPoint": {
                      "x": -0.45,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": 0.449999958,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9,
                    "NextFootholdId": 6,
                    "PreviousFootholdId": 4,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 5,
                    "StartPoint": {
                      "x": 0.450000018,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": 1.35,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000002,
                    "NextFootholdId": 7,
                    "PreviousFootholdId": 5,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 6,
                    "StartPoint": {
                      "x": 1.34999979,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": 2.25,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000001,
                    "NextFootholdId": 8,
                    "PreviousFootholdId": 6,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 7,
                    "StartPoint": {
                      "x": 2.25,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": 3.15,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.899999857,
                    "NextFootholdId": 9,
                    "PreviousFootholdId": 7,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 8,
                    "StartPoint": {
                      "x": 3.14999986,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": 4.04999971,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 10,
                    "PreviousFootholdId": 8,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 9,
                    "StartPoint": {
                      "x": 4.05,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": 4.95,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 11,
                    "PreviousFootholdId": 9,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 10,
                    "StartPoint": {
                      "x": 4.95000029,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": 5.85,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 12,
                    "PreviousFootholdId": 10,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 11,
                    "StartPoint": {
                      "x": 5.85,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": 6.74999952,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 13,
                    "PreviousFootholdId": 11,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 12,
                    "StartPoint": {
                      "x": 6.75,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": 7.64999962,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.899999142,
                    "NextFootholdId": 14,
                    "PreviousFootholdId": 12,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 13,
                    "StartPoint": {
                      "x": 7.65,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": 8.549999,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 1.11000061,
                    "NextFootholdId": 16,
                    "PreviousFootholdId": 13,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 14,
                    "StartPoint": {
                      "x": 8.549999,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": 9.66,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.4000001,
                    "NextFootholdId": 19,
                    "PreviousFootholdId": 18,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 15,
                    "StartPoint": {
                      "x": 7.46,
                      "y": -0.100000009
                    },
                    "EndPoint": {
                      "x": 7.86,
                      "y": -0.100000009
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.200000048,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 14,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 16,
                    "StartPoint": {
                      "x": 9.66,
                      "y": -1.3
                    },
                    "EndPoint": {
                      "x": 9.66,
                      "y": -1.5
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.200000048,
                    "NextFootholdId": 1,
                    "PreviousFootholdId": 0,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 17,
                    "StartPoint": {
                      "x": -3.34,
                      "y": -1.5
                    },
                    "EndPoint": {
                      "x": -3.34,
                      "y": -1.3
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.799999952,
                    "NextFootholdId": 15,
                    "PreviousFootholdId": 0,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 18,
                    "StartPoint": {
                      "x": 7.46,
                      "y": -0.9
                    },
                    "EndPoint": {
                      "x": 7.46,
                      "y": -0.100000009
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.799999952,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 15,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "92fbf6f1-f734-4c3a-912e-cecc66a6b427",
                    "Id": 19,
                    "StartPoint": {
                      "x": 7.86,
                      "y": -0.100000009
                    },
                    "EndPoint": {
                      "x": 7.86,
                      "y": -0.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  }
                ]
              },
              "Enable": true
            },
            {
              "@type": "script.catnpctalkComponent",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "9a20652d-c555-4977-9a09-56c4f814a91e"
        }"KMOD.Core.MapComponent,MOD.Core.FootholdComponent,script.catnpctalkComponent?
$8cbba49d-1d75-4983-be87-de6bc3f4bd56/maps/map03/Background?{
          "name": "Background",
          "path": "/maps/map03/Background",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "///",
          "revision": 3,
          "modelId": null,
          "@components": [
            {
              "@type": "MOD.Core.BackgroundComponent",
              "TemplateRUID": "d08c86e7c3a342b4bde5815e2c14c1cf",
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "8cbba49d-1d75-4983-be87-de6bc3f4bd56"
        }"MOD.Core.BackgroundComponent?_
$e4498e8f-9cd3-4efb-ab73-4c510f0414f5/maps/map03/MapleMapLayer?_{
          "name": "MapleMapLayer",
          "path": "/maps/map03/MapleMapLayer",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "///",
          "revision": 1,
          "origin": {
            "type": "Model",
            "entry_id": "maplemaplayer",
            "sub_entity_id": null
          },
          "modelId": "maplemaplayer",
          "@components": [
            {
              "@type": "MOD.Core.MapLayerComponent",
              "IsVisible": true,
              "LayerSortOrder": 0,
              "Locked": false,
              "MapLayerName": "Layer1",
              "Thumbnail": "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",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "e4498e8f-9cd3-4efb-ab73-4c510f0414f5"
        }"MOD.Core.MapLayerComponent?C
$92fbf6f1-f734-4c3a-912e-cecc66a6b427/maps/map03/TileMap?B{
          "name": "TileMap",
          "path": "/maps/map03/TileMap",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "///",
          "revision": 5,
          "origin": {
            "type": "Model",
            "entry_id": "tilemap",
            "sub_entity_id": null
          },
          "modelId": "tilemap",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -0.225,
                "y": -0.15,
                "z": 1000.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TileMapComponent",
              "IsOddGridPosition": false,
              "SortingLayer": "MapLayer0",
              "TileMapVersion": 1,
              "TileSetRUID": {
                "DataId": "e0dc449d9a71413da005f42b1638df72"
              },
              "Tiles": [
                {
                  "type": 9,
                  "position": {
                    "x": -4,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": -2,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 0,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 2,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 4,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 6,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -5
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 8,
                    "y": -5
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -5
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 10,
                    "y": -5
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -5
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 12,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -5
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 14,
                    "y": -5
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -5
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 16,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 17,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 18,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 19,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 20,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 11,
                  "position": {
                    "x": 21,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": -6,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 11,
                  "position": {
                    "x": -7,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 17,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 8,
                  "position": {
                    "x": 17,
                    "y": -2
                  },
                  "tileIndex": 2
                },
                {
                  "type": 11,
                  "position": {
                    "x": 17,
                    "y": -1
                  },
                  "tileIndex": 3
                }
              ],
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "92fbf6f1-f734-4c3a-912e-cecc66a6b427"
        }"5MOD.Core.TransformComponent,MOD.Core.TileMapComponent?
$6b51955f-e09b-491c-be8b-9cb05ccaab86/maps/map03/portal-1?{
          "name": "portal-1",
          "path": "/maps/map03/portal-1",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 3,
          "pathConstraints": "///",
          "revision": 4,
          "origin": {
            "type": "Model",
            "entry_id": "Portal",
            "sub_entity_id": null
          },
          "modelId": "portal",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -1.63690543,
                "y": -1.171752,
                "z": 999.999
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "EndFrameIndex": 2147483647,
              "RenderSetting": 0,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "edd691cd6ce2417c81f1aee6b6ebedd3",
              "StartFrameIndex": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.PortalComponent",
              "BoxOffset": {
                "x": 0.0149999857,
                "y": 0.63
              },
              "BoxSize": {
                "x": 1.01,
                "y": 1.42
              },
              "IsLegacy": false,
              "PortalEntityRef": {
                "IsRelative": false,
                "EntityId": "e8f76121-a74f-4018-9e93-50aae5e0227d"
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.TagComponent",
              "Tags": [
                "MODRespawnArea"
              ],
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "6b51955f-e09b-491c-be8b-9cb05ccaab86"
        }"kMOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.PortalComponent,MOD.Core.TagComponent?
$0379fce1-fa2e-4d5a-b524-814bc36319ac/maps/map03/npc-1089?{
          "name": "npc-1089",
          "path": "/maps/map03/npc-1089",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 4,
          "pathConstraints": "///",
          "revision": 6,
          "origin": {
            "type": "Model",
            "entry_id": "StaticNPC",
            "sub_entity_id": null
          },
          "modelId": "staticnpc",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 6.529724,
                "y": -1.2249999,
                "z": 999.999
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.64813292,
                "y": 1.37464225,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "EndFrameIndex": 0,
              "RenderSetting": 1,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "efc528e89c324a359711e33e7814500d",
              "StartFrameIndex": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.RigidbodyComponent",
              "MoveVelocity": {
                "x": 0.0,
                "y": 0.0
              },
              "RealMoveVelocity": {
                "x": 0.0,
                "y": 0.0
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.StateComponent",
              "Enable": true
            },
            {
              "@type": "MOD.Core.ChatBalloonComponent",
              "AutoShowEnabled": true,
              "BalloonScale": 2.0,
              "ChatBalloonRUID": {
                "DataId": "4431d3dea8fa4286a7c8adf75e676c72"
              },
              "ChatModeEnabled": false,
              "FontColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "Message": "이게 다 내가 직접 만든 옷일세. 한번 보겠나?",
              "Offset": -3.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.StateAnimationComponent",
              "ActionSheet": {
                "stand": "efc528e89c324a359711e33e7814500d",
                "say": "3e3048897836419d96bb018e2f60c909",
                "eye": "12d491a3267a4719a8c8b8d8cffcdcee",
                "action": "89af5292681e48b88547a48458b6691d"
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.NameTagComponent",
              "FontSize": 1.5,
              "Name": "슈피겔만",
              "NameTagRUID": {
                "DataId": "9bf18287398c44699c20fc5123d1a1ae"
              },
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "0379fce1-fa2e-4d5a-b524-814bc36319ac"
        }"?MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.RigidbodyComponent,MOD.Core.StateComponent,MOD.Core.ChatBalloonComponent,MOD.Core.StateAnimationComponent,MOD.Core.NameTagComponent?
$44da1e1b-6ddf-40cb-98b6-62aafb05e87c/maps/map03/npc-798?{
          "name": "npc-798",
          "path": "/maps/map03/npc-798",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 5,
          "pathConstraints": "///",
          "revision": 3,
          "origin": {
            "type": "Model",
            "entry_id": "StaticNPC",
            "sub_entity_id": null
          },
          "modelId": "staticnpc",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.895038068,
                "y": -1.2249999,
                "z": 999.999
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 2.82373977,
                "y": 2.82373977,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "EndFrameIndex": 0,
              "RenderSetting": 1,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "e249183d9a54401cab95383d57bc9e88",
              "StartFrameIndex": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.RigidbodyComponent",
              "MoveVelocity": {
                "x": 0.0,
                "y": 0.0
              },
              "RealMoveVelocity": {
                "x": 0.0,
                "y": 0.0
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.StateComponent",
              "Enable": true
            },
            {
              "@type": "MOD.Core.ChatBalloonComponent",
              "AutoShowEnabled": true,
              "BalloonScale": 2.0,
              "ChatBalloonRUID": {
                "DataId": "7b6bd117bd0446a5bacec8ea6831c997"
              },
              "ChatModeEnabled": false,
              "FontColor": {
                "r": 0.0,
                "g": 0.0,
                "b": 0.0,
                "a": 1.0
              },
              "Message": "마이홈에 대해 궁금하면 날 클릭해라냥!",
              "Offset": -7.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.StateAnimationComponent",
              "ActionSheet": {
                "stand": "e249183d9a54401cab95383d57bc9e88"
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.NameTagComponent",
              "FontSize": 1.5,
              "Name": "탈리",
              "NameTagRUID": {
                "DataId": "9bf18287398c44699c20fc5123d1a1ae"
              },
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "44da1e1b-6ddf-40cb-98b6-62aafb05e87c"
        }"?MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.RigidbodyComponent,MOD.Core.StateComponent,MOD.Core.ChatBalloonComponent,MOD.Core.StateAnimationComponent,MOD.Core.NameTagComponent?
$616402f0-dbd8-43a6-832e-0e09e5ddf33d/maps/map03/npc-735?{
          "name": "npc-735",
          "path": "/maps/map03/npc-735",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 6,
          "pathConstraints": "///",
          "revision": 2,
          "origin": {
            "type": "Model",
            "entry_id": "StaticNPC",
            "sub_entity_id": null
          },
          "modelId": "staticnpc",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 0.76143384,
                "y": -0.239840865,
                "z": 999.999
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "EndFrameIndex": 0,
              "RenderSetting": 1,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "739075e9354140dbb187e9e963ddedb2",
              "StartFrameIndex": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.RigidbodyComponent",
              "MoveVelocity": {
                "x": 0.0,
                "y": 0.0
              },
              "RealMoveVelocity": {
                "x": 0.0,
                "y": 0.0
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.StateComponent",
              "Enable": true
            },
            {
              "@type": "MOD.Core.ChatBalloonComponent",
              "ChatBalloonRUID": {
                "DataId": "7b6bd117bd0446a5bacec8ea6831c997"
              },
              "ChatModeEnabled": false,
              "Enable": true
            },
            {
              "@type": "MOD.Core.StateAnimationComponent",
              "ActionSheet": {
                "stand": "739075e9354140dbb187e9e963ddedb2"
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.NameTagComponent",
              "Name": "npc-735",
              "NameTagRUID": {
                "DataId": "9bf18287398c44699c20fc5123d1a1ae"
              },
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "616402f0-dbd8-43a6-832e-0e09e5ddf33d"
        }"?MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.RigidbodyComponent,MOD.Core.StateComponent,MOD.Core.ChatBalloonComponent,MOD.Core.StateAnimationComponent,MOD.Core.NameTagComponent?
$91dd7549-9343-4d31-ae2c-fe9e5ff1d718/maps/map03/portal-9?{
          "name": "portal-9",
          "path": "/maps/map03/portal-9",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 7,
          "pathConstraints": "///",
          "revision": 3,
          "origin": {
            "type": "Model",
            "entry_id": "Portal",
            "sub_entity_id": null
          },
          "modelId": "portal",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 8.948219,
                "y": -1.12398994,
                "z": 999.999
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "EndFrameIndex": 2147483647,
              "RenderSetting": 0,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "9de1fea7841a470da2c1c2d1ac024201",
              "StartFrameIndex": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.PortalComponent",
              "BoxOffset": {
                "x": 0.04000002,
                "y": 0.58
              },
              "BoxSize": {
                "x": 1.76,
                "y": 1.8
              },
              "IsLegacy": false,
              "PortalEntityRef": {
                "IsRelative": false,
                "EntityId": "ebbabe64-7d93-46e7-8c20-bf40cb969d20"
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.TagComponent",
              "Tags": [
                "MODRespawnArea"
              ],
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "91dd7549-9343-4d31-ae2c-fe9e5ff1d718"
        }"kMOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.PortalComponent,MOD.Core.TagComponentX??
 b81279061cb94e2da473dc4cb23d4feb 49894c1087b7415daa3cc5d1c9929a60map://map04"	x-mod/map2????
$9eceaee3-366b-4731-a2f1-6287562e1daa/maps/map04ߕ{
          "name": "map04",
          "path": "/maps/map04",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "//",
          "revision": 3,
          "modelId": null,
          "@components": [
            {
              "@type": "MOD.Core.MapComponent",
              "IsInstanceMap": false,
              "TileMapMode": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.FootholdComponent",
              "FootholdsByLayer": {
                "1": [
                  {
                    "Length": 1.29000008,
                    "NextFootholdId": 2,
                    "PreviousFootholdId": 15,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 1,
                    "StartPoint": {
                      "x": -2.63999987,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": -1.34999979,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000001,
                    "NextFootholdId": 3,
                    "PreviousFootholdId": 1,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 2,
                    "StartPoint": {
                      "x": -1.35,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": -0.449999958,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9,
                    "NextFootholdId": 4,
                    "PreviousFootholdId": 2,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 3,
                    "StartPoint": {
                      "x": -0.45,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": 0.449999958,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9,
                    "NextFootholdId": 5,
                    "PreviousFootholdId": 3,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 4,
                    "StartPoint": {
                      "x": 0.450000018,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": 1.35,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000002,
                    "NextFootholdId": 6,
                    "PreviousFootholdId": 4,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 5,
                    "StartPoint": {
                      "x": 1.34999979,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": 2.25,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000001,
                    "NextFootholdId": 7,
                    "PreviousFootholdId": 5,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 6,
                    "StartPoint": {
                      "x": 2.24999976,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": 3.14999986,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.899999857,
                    "NextFootholdId": 8,
                    "PreviousFootholdId": 6,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 7,
                    "StartPoint": {
                      "x": 3.14999986,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": 4.04999971,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 9,
                    "PreviousFootholdId": 7,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 8,
                    "StartPoint": {
                      "x": 4.05,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": 4.95,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 10,
                    "PreviousFootholdId": 8,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 9,
                    "StartPoint": {
                      "x": 4.95,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": 5.84999943,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 11,
                    "PreviousFootholdId": 9,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 10,
                    "StartPoint": {
                      "x": 5.85,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": 6.74999952,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 12,
                    "PreviousFootholdId": 10,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 11,
                    "StartPoint": {
                      "x": 6.75,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": 7.64999962,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.899999142,
                    "NextFootholdId": 13,
                    "PreviousFootholdId": 11,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 12,
                    "StartPoint": {
                      "x": 7.65,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": 8.549999,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 14,
                    "PreviousFootholdId": 12,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 13,
                    "StartPoint": {
                      "x": 8.55,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": 9.45,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 1.29,
                    "NextFootholdId": 16,
                    "PreviousFootholdId": 13,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 14,
                    "StartPoint": {
                      "x": 9.45,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": 10.74,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8500004,
                    "NextFootholdId": 1,
                    "PreviousFootholdId": 0,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 15,
                    "StartPoint": {
                      "x": -2.63999987,
                      "y": -4.50000048
                    },
                    "EndPoint": {
                      "x": -2.63999987,
                      "y": -3.65
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8500004,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 14,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "b9db6a71-64d0-4aea-b8ee-44507c20b592",
                    "Id": 16,
                    "StartPoint": {
                      "x": 10.74,
                      "y": -3.65
                    },
                    "EndPoint": {
                      "x": 10.74,
                      "y": -4.50000048
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  }
                ]
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.SoundComponent",
              "AudioClipRUID": "087646b059894dc0b68448d8ea41da1d",
              "Bgm": true,
              "Loop": true,
              "PlayOnEnable": true,
              "Volume": 1.0,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "9eceaee3-366b-4731-a2f1-6287562e1daa"
        }"HMOD.Core.MapComponent,MOD.Core.FootholdComponent,MOD.Core.SoundComponent?
$897179a6-2ae9-4c1c-9eaa-427c79fdd433/maps/map04/Background?{
          "name": "Background",
          "path": "/maps/map04/Background",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "///",
          "revision": 2,
          "modelId": null,
          "@components": [
            {
              "@type": "MOD.Core.BackgroundComponent",
              "TemplateRUID": "27c5f63e53b542f0b985469a4ed20071",
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "897179a6-2ae9-4c1c-9eaa-427c79fdd433"
        }"MOD.Core.BackgroundComponent??
$03a0cf47-425a-45ec-880e-ca2b4efe0d54/maps/map04/MapleMapLayerα{
          "name": "MapleMapLayer",
          "path": "/maps/map04/MapleMapLayer",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "///",
          "revision": 1,
          "origin": {
            "type": "Model",
            "entry_id": "maplemaplayer",
            "sub_entity_id": null
          },
          "modelId": "maplemaplayer",
          "@components": [
            {
              "@type": "MOD.Core.MapLayerComponent",
              "IsVisible": true,
              "LayerSortOrder": 0,
              "Locked": false,
              "MapLayerName": "Layer1",
              "Thumbnail": "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",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "03a0cf47-425a-45ec-880e-ca2b4efe0d54"
        }"MOD.Core.MapLayerComponent??
$b9db6a71-64d0-4aea-b8ee-44507c20b592/maps/map04/TileMap??{
          "name": "TileMap",
          "path": "/maps/map04/TileMap",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "///",
          "revision": 2,
          "origin": {
            "type": "Model",
            "entry_id": "tilemap",
            "sub_entity_id": null
          },
          "modelId": "tilemap",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -0.225,
                "y": -0.15,
                "z": 1000.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TileMapComponent",
              "IsOddGridPosition": false,
              "SortingLayer": "MapLayer0",
              "TileMapVersion": 1,
              "TileSetRUID": {
                "DataId": "e65563a7c2b54570972873eb6cc88fc0"
              },
              "Tiles": [
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -13
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": -3,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 5,
                  "position": {
                    "x": -4,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -5,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": -4,
                    "y": -15
                  },
                  "tileIndex": 2
                },
                {
                  "type": 8,
                  "position": {
                    "x": -5,
                    "y": -14
                  },
                  "tileIndex": 1
                },
                {
                  "type": 11,
                  "position": {
                    "x": -5,
                    "y": -13
                  },
                  "tileIndex": 1
                },
                {
                  "type": 9,
                  "position": {
                    "x": -4,
                    "y": -13
                  },
                  "tileIndex": 2
                },
                {
                  "type": 7,
                  "position": {
                    "x": -2,
                    "y": -15
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -15
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 0,
                    "y": -15
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -15
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 0,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -14
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": -1,
                    "y": -13
                  },
                  "tileIndex": 1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 0,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 1,
                    "y": -13
                  },
                  "tileIndex": 1
                },
                {
                  "type": 9,
                  "position": {
                    "x": -2,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 2,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 4,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 6,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -13
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 4,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 4,
                    "y": -15
                  },
                  "tileIndex": 2
                },
                {
                  "type": 5,
                  "position": {
                    "x": 2,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 2,
                    "y": -15
                  },
                  "tileIndex": 2
                },
                {
                  "type": 5,
                  "position": {
                    "x": 6,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 8,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 6,
                    "y": -15
                  },
                  "tileIndex": 2
                },
                {
                  "type": 7,
                  "position": {
                    "x": 8,
                    "y": -15
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 8,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -13
                  },
                  "tileIndex": 1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 10,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 10,
                    "y": -15
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 10,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -13
                  },
                  "tileIndex": 1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 12,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 12,
                    "y": -15
                  },
                  "tileIndex": 3
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 12,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -13
                  },
                  "tileIndex": 1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 14,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 16,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 17,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 18,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 19,
                    "y": -13
                  },
                  "tileIndex": 1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 20,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 21,
                    "y": -13
                  },
                  "tileIndex": 1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 22,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 11,
                  "position": {
                    "x": 23,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 19,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 19,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 18,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 17,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 17,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 18,
                    "y": -15
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 16,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 16,
                    "y": -15
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 14,
                    "y": -15
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 20,
                    "y": -15
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 21,
                    "y": -15
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 22,
                    "y": -15
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 23,
                    "y": -15
                  },
                  "tileIndex": 1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 20,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 21,
                    "y": -14
                  },
                  "tileIndex": 1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 22,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 8,
                  "position": {
                    "x": 23,
                    "y": -14
                  },
                  "tileIndex": 1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 14,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": -2,
                    "y": -14
                  },
                  "tileIndex": 0
                }
              ],
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "b9db6a71-64d0-4aea-b8ee-44507c20b592"
        }"5MOD.Core.TransformComponent,MOD.Core.TileMapComponent?
$ebbabe64-7d93-46e7-8c20-bf40cb969d20/maps/map04/portal-1?{
          "name": "portal-1",
          "path": "/maps/map04/portal-1",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 3,
          "pathConstraints": "///",
          "revision": 2,
          "origin": {
            "type": "Model",
            "entry_id": "Portal",
            "sub_entity_id": null
          },
          "modelId": "portal",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -1.297019,
                "y": -3.57172942,
                "z": 999.999
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "EndFrameIndex": 2147483647,
              "RenderSetting": 0,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "edd691cd6ce2417c81f1aee6b6ebedd3",
              "StartFrameIndex": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.PortalComponent",
              "BoxOffset": {
                "x": 0.0149999857,
                "y": 0.63
              },
              "BoxSize": {
                "x": 1.01,
                "y": 1.42
              },
              "IsLegacy": false,
              "PortalEntityRef": {
                "IsRelative": false,
                "EntityId": "91dd7549-9343-4d31-ae2c-fe9e5ff1d718"
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.TagComponent",
              "Tags": [
                "MODRespawnArea"
              ],
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "ebbabe64-7d93-46e7-8c20-bf40cb969d20"
        }"kMOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.PortalComponent,MOD.Core.TagComponent?
$764a407a-a25b-4932-a5d2-22dee7770282/maps/map04/object-1228?{
          "name": "object-1228",
          "path": "/maps/map04/object-1228",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 4,
          "pathConstraints": "///",
          "revision": 2,
          "origin": {
            "type": "Model",
            "entry_id": "MapObject",
            "sub_entity_id": null
          },
          "modelId": "mapobject",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 2.48557615,
                "y": -2.203008,
                "z": 999.999
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "EndFrameIndex": 2147483647,
              "RenderSetting": 0,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "fa67af20f7b94d4ab24ca154ac73005f",
              "StartFrameIndex": 0,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "764a407a-a25b-4932-a5d2-22dee7770282"
        }"<MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent?
$85ad1338-4a6d-4def-80a4-d6f52bd9ccff/maps/map04/portal-3?{
          "name": "portal-3",
          "path": "/maps/map04/portal-3",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 5,
          "pathConstraints": "///",
          "revision": 2,
          "origin": {
            "type": "Model",
            "entry_id": "Portal",
            "sub_entity_id": null
          },
          "modelId": "portal",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 2.455255,
                "y": -3.54433823,
                "z": 999.998047
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "EndFrameIndex": 2147483647,
              "RenderSetting": 0,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "2c200582b13649069a1f8149c6430a49",
              "StartFrameIndex": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.PortalComponent",
              "BoxOffset": {
                "x": -0.004999995,
                "y": 0.78
              },
              "BoxSize": {
                "x": 1.27,
                "y": 1.78
              },
              "IsLegacy": false,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TagComponent",
              "Tags": [
                "MODRespawnArea"
              ],
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "85ad1338-4a6d-4def-80a4-d6f52bd9ccff"
        }"kMOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.PortalComponent,MOD.Core.TagComponent?
$babda518-664d-43a5-816c-8957ab7311b3/maps/map04/object-17627?{
          "name": "object-17627",
          "path": "/maps/map04/object-17627",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 6,
          "pathConstraints": "///",
          "revision": 2,
          "origin": {
            "type": "Model",
            "entry_id": "MapObject",
            "sub_entity_id": null
          },
          "modelId": "mapobject",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 6.78829241,
                "y": -2.036824,
                "z": 999.999
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.04807365,
                "y": 0.959219635,
                "z": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "EndFrameIndex": 2147483647,
              "RenderSetting": 0,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "e7b56a2fe2754791803e8401d43b24d0",
              "StartFrameIndex": 0,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "babda518-664d-43a5-816c-8957ab7311b3"
        }"<MOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent?
$0427a3e9-0c39-497e-86da-b56b49304787/maps/map04/portal-3_1?{
          "name": "portal-3_1",
          "path": "/maps/map04/portal-3_1",
          "nameEditable": true,
          "enable": true,
          "visible": true,
          "displayOrder": 7,
          "pathConstraints": "///",
          "revision": 2,
          "origin": {
            "type": "Model",
            "entry_id": "Portal",
            "sub_entity_id": null
          },
          "modelId": "portal",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": 6.889761,
                "y": -3.58437443,
                "z": 999.998047
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "Scale": {
                "x": 1.0,
                "y": 1.0,
                "z": 1.0
              },
              "Enable": true
            },
            {
              "@type": "MOD.Core.SpriteRendererComponent",
              "ActionSheet": {},
              "EndFrameIndex": 2147483647,
              "RenderSetting": 0,
              "SortingLayer": "MapLayer0",
              "SpriteRUID": "2c200582b13649069a1f8149c6430a49",
              "StartFrameIndex": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.PortalComponent",
              "BoxOffset": {
                "x": -0.004999995,
                "y": 0.78
              },
              "BoxSize": {
                "x": 1.27,
                "y": 1.78
              },
              "IsLegacy": false,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TagComponent",
              "Tags": [
                "MODRespawnArea"
              ],
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "0427a3e9-0c39-497e-86da-b56b49304787"
        }"kMOD.Core.TransformComponent,MOD.Core.SpriteRendererComponent,MOD.Core.PortalComponent,MOD.Core.TagComponentX??	
 b480ba6b96f146f2a8980211526c87d8 49894c1087b7415daa3cc5d1c9929a60map://map05"	x-mod/map2??	߱
$a2875216-b0ac-4673-8675-f84f3f8e36a2/maps/map05??{
          "name": "map05",
          "path": "/maps/map05",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "//",
          "revision": 3,
          "modelId": null,
          "@components": [
            {
              "@type": "MOD.Core.MapComponent",
              "IsInstanceMap": false,
              "TileMapMode": 0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.FootholdComponent",
              "FootholdsByLayer": {
                "1": [
                  {
                    "Length": 0.5100002,
                    "NextFootholdId": 2,
                    "PreviousFootholdId": 24,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 1,
                    "StartPoint": {
                      "x": 5.33999968,
                      "y": -3.72000027
                    },
                    "EndPoint": {
                      "x": 5.85,
                      "y": -3.72000027
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 3,
                    "PreviousFootholdId": 1,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 2,
                    "StartPoint": {
                      "x": 5.85,
                      "y": -3.72000027
                    },
                    "EndPoint": {
                      "x": 6.74999952,
                      "y": -3.72000027
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 4,
                    "PreviousFootholdId": 2,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 3,
                    "StartPoint": {
                      "x": 6.75,
                      "y": -3.72000027
                    },
                    "EndPoint": {
                      "x": 7.64999962,
                      "y": -3.72000027
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6199994,
                    "NextFootholdId": 76,
                    "PreviousFootholdId": 3,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 4,
                    "StartPoint": {
                      "x": 7.65,
                      "y": -3.72000027
                    },
                    "EndPoint": {
                      "x": 8.2699995,
                      "y": -3.72000027
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5100002,
                    "NextFootholdId": 6,
                    "PreviousFootholdId": 27,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 5,
                    "StartPoint": {
                      "x": 3.54,
                      "y": -2.52000022
                    },
                    "EndPoint": {
                      "x": 4.05,
                      "y": -2.52000022
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 1.081665,
                    "NextFootholdId": 7,
                    "PreviousFootholdId": 5,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 6,
                    "StartPoint": {
                      "x": 4.05,
                      "y": -2.52000022
                    },
                    "EndPoint": {
                      "x": 4.95,
                      "y": -3.12000012
                    },
                    "Variance": {
                      "x": 0.8320502,
                      "y": -0.554700255
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.389999866,
                    "NextFootholdId": 24,
                    "PreviousFootholdId": 6,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 7,
                    "StartPoint": {
                      "x": 4.95,
                      "y": -3.12000012
                    },
                    "EndPoint": {
                      "x": 5.33999968,
                      "y": -3.12000012
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000001,
                    "NextFootholdId": 27,
                    "PreviousFootholdId": 41,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 8,
                    "StartPoint": {
                      "x": 2.63999987,
                      "y": -1.9200002
                    },
                    "EndPoint": {
                      "x": 3.54,
                      "y": -1.9200002
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 1.18000007,
                    "NextFootholdId": 10,
                    "PreviousFootholdId": 28,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 9,
                    "StartPoint": {
                      "x": 1.06999993,
                      "y": 2.28
                    },
                    "EndPoint": {
                      "x": 2.25,
                      "y": 2.28
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000001,
                    "NextFootholdId": 11,
                    "PreviousFootholdId": 9,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 10,
                    "StartPoint": {
                      "x": 2.25,
                      "y": 2.28
                    },
                    "EndPoint": {
                      "x": 3.15,
                      "y": 2.28
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 1.2900002,
                    "NextFootholdId": 45,
                    "PreviousFootholdId": 10,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 11,
                    "StartPoint": {
                      "x": 3.14999986,
                      "y": 2.28
                    },
                    "EndPoint": {
                      "x": 4.44,
                      "y": 2.28
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 49,
                    "PreviousFootholdId": 46,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 12,
                    "StartPoint": {
                      "x": 4.44,
                      "y": 1.08
                    },
                    "EndPoint": {
                      "x": 5.33999968,
                      "y": 1.08
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5100002,
                    "NextFootholdId": 14,
                    "PreviousFootholdId": 49,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 13,
                    "StartPoint": {
                      "x": 5.33999968,
                      "y": 0.48
                    },
                    "EndPoint": {
                      "x": 5.85,
                      "y": 0.48
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 15,
                    "PreviousFootholdId": 13,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 14,
                    "StartPoint": {
                      "x": 5.85,
                      "y": 0.48
                    },
                    "EndPoint": {
                      "x": 6.74999952,
                      "y": 0.48
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6199999,
                    "NextFootholdId": 52,
                    "PreviousFootholdId": 14,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 15,
                    "StartPoint": {
                      "x": 6.75,
                      "y": 0.48
                    },
                    "EndPoint": {
                      "x": 7.37,
                      "y": 0.48
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 55,
                    "PreviousFootholdId": 52,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 16,
                    "StartPoint": {
                      "x": 7.37,
                      "y": 1.08
                    },
                    "EndPoint": {
                      "x": 8.2699995,
                      "y": 1.08
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 1.17999935,
                    "NextFootholdId": 18,
                    "PreviousFootholdId": 54,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 17,
                    "StartPoint": {
                      "x": 8.2699995,
                      "y": 2.28
                    },
                    "EndPoint": {
                      "x": 9.449999,
                      "y": 2.28
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 19,
                    "PreviousFootholdId": 17,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 18,
                    "StartPoint": {
                      "x": 9.45,
                      "y": 2.28
                    },
                    "EndPoint": {
                      "x": 10.3499994,
                      "y": 2.28
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 1.29,
                    "NextFootholdId": 60,
                    "PreviousFootholdId": 18,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 19,
                    "StartPoint": {
                      "x": 10.3499994,
                      "y": 2.28
                    },
                    "EndPoint": {
                      "x": 11.6399994,
                      "y": 2.28
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 68,
                    "PreviousFootholdId": 71,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 20,
                    "StartPoint": {
                      "x": 10.07,
                      "y": -1.32
                    },
                    "EndPoint": {
                      "x": 10.9699993,
                      "y": -1.32
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.8999996,
                    "NextFootholdId": 72,
                    "PreviousFootholdId": 74,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 21,
                    "StartPoint": {
                      "x": 9.17,
                      "y": -2.52000022
                    },
                    "EndPoint": {
                      "x": 10.07,
                      "y": -2.52000022
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.9000006,
                    "NextFootholdId": 74,
                    "PreviousFootholdId": 76,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 22,
                    "StartPoint": {
                      "x": 8.2699995,
                      "y": -3.12000012
                    },
                    "EndPoint": {
                      "x": 9.17,
                      "y": -3.12000012
                    },
                    "Variance": {
                      "x": 1.0,
                      "y": 0.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.600000143,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 0,
                    "groupID": 3,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 23,
                    "StartPoint": {
                      "x": 8.04,
                      "y": -3.90000033
                    },
                    "EndPoint": {
                      "x": 8.04,
                      "y": -4.50000048
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.600000143,
                    "NextFootholdId": 1,
                    "PreviousFootholdId": 7,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 24,
                    "StartPoint": {
                      "x": 5.33999968,
                      "y": -3.12000012
                    },
                    "EndPoint": {
                      "x": 5.33999968,
                      "y": -3.72000027
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.600000143,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 0,
                    "groupID": 4,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 25,
                    "StartPoint": {
                      "x": 4.6699996,
                      "y": -4.50000048
                    },
                    "EndPoint": {
                      "x": 4.6699996,
                      "y": -3.90000033
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5999999,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 0,
                    "groupID": 5,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 26,
                    "StartPoint": {
                      "x": 3.77000022,
                      "y": -3.9
                    },
                    "EndPoint": {
                      "x": 3.77000022,
                      "y": -3.30000019
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 5,
                    "PreviousFootholdId": 8,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 27,
                    "StartPoint": {
                      "x": 3.54,
                      "y": -1.9200002
                    },
                    "EndPoint": {
                      "x": 3.54,
                      "y": -2.52000022
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.779999852,
                    "NextFootholdId": 9,
                    "PreviousFootholdId": 29,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 28,
                    "StartPoint": {
                      "x": 1.06999993,
                      "y": 1.50000012
                    },
                    "EndPoint": {
                      "x": 1.06999993,
                      "y": 2.28
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.600000143,
                    "NextFootholdId": 28,
                    "PreviousFootholdId": 30,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 29,
                    "StartPoint": {
                      "x": 1.06999993,
                      "y": 0.9
                    },
                    "EndPoint": {
                      "x": 1.06999993,
                      "y": 1.50000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 29,
                    "PreviousFootholdId": 31,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 30,
                    "StartPoint": {
                      "x": 1.06999993,
                      "y": 0.299999982
                    },
                    "EndPoint": {
                      "x": 1.06999993,
                      "y": 0.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 30,
                    "PreviousFootholdId": 32,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 31,
                    "StartPoint": {
                      "x": 1.06999993,
                      "y": -0.3
                    },
                    "EndPoint": {
                      "x": 1.06999993,
                      "y": 0.3
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.599999964,
                    "NextFootholdId": 31,
                    "PreviousFootholdId": 33,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 32,
                    "StartPoint": {
                      "x": 1.06999993,
                      "y": -0.9
                    },
                    "EndPoint": {
                      "x": 1.06999993,
                      "y": -0.3
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 32,
                    "PreviousFootholdId": 34,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 33,
                    "StartPoint": {
                      "x": 1.06999993,
                      "y": -1.50000012
                    },
                    "EndPoint": {
                      "x": 1.06999993,
                      "y": -0.9000001
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 33,
                    "PreviousFootholdId": 0,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 34,
                    "StartPoint": {
                      "x": 1.06999993,
                      "y": -2.10000014
                    },
                    "EndPoint": {
                      "x": 1.06999993,
                      "y": -1.50000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5999998,
                    "NextFootholdId": 36,
                    "PreviousFootholdId": 0,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 35,
                    "StartPoint": {
                      "x": 2.63999987,
                      "y": 2.1
                    },
                    "EndPoint": {
                      "x": 2.63999987,
                      "y": 1.50000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.600000143,
                    "NextFootholdId": 37,
                    "PreviousFootholdId": 35,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 36,
                    "StartPoint": {
                      "x": 2.63999987,
                      "y": 1.50000012
                    },
                    "EndPoint": {
                      "x": 2.63999987,
                      "y": 0.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 38,
                    "PreviousFootholdId": 36,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 37,
                    "StartPoint": {
                      "x": 2.63999987,
                      "y": 0.9
                    },
                    "EndPoint": {
                      "x": 2.63999987,
                      "y": 0.299999982
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 39,
                    "PreviousFootholdId": 37,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 38,
                    "StartPoint": {
                      "x": 2.63999987,
                      "y": 0.3
                    },
                    "EndPoint": {
                      "x": 2.63999987,
                      "y": -0.3
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.599999964,
                    "NextFootholdId": 40,
                    "PreviousFootholdId": 38,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 39,
                    "StartPoint": {
                      "x": 2.63999987,
                      "y": -0.3
                    },
                    "EndPoint": {
                      "x": 2.63999987,
                      "y": -0.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 41,
                    "PreviousFootholdId": 39,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 40,
                    "StartPoint": {
                      "x": 2.63999987,
                      "y": -0.9000001
                    },
                    "EndPoint": {
                      "x": 2.63999987,
                      "y": -1.50000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.420000076,
                    "NextFootholdId": 8,
                    "PreviousFootholdId": 40,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 41,
                    "StartPoint": {
                      "x": 2.63999987,
                      "y": -1.50000012
                    },
                    "EndPoint": {
                      "x": 2.63999987,
                      "y": -1.9200002
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5999999,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 43,
                    "groupID": 6,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 42,
                    "StartPoint": {
                      "x": 1.96999991,
                      "y": -2.7
                    },
                    "EndPoint": {
                      "x": 1.96999991,
                      "y": -2.10000014
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5999999,
                    "NextFootholdId": 42,
                    "PreviousFootholdId": 0,
                    "groupID": 6,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 43,
                    "StartPoint": {
                      "x": 1.96999991,
                      "y": -3.30000019
                    },
                    "EndPoint": {
                      "x": 1.96999991,
                      "y": -2.70000029
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5999998,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 47,
                    "groupID": 7,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 44,
                    "StartPoint": {
                      "x": 3.77000022,
                      "y": 1.50000012
                    },
                    "EndPoint": {
                      "x": 3.77000022,
                      "y": 2.1
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.779999852,
                    "NextFootholdId": 46,
                    "PreviousFootholdId": 11,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 45,
                    "StartPoint": {
                      "x": 4.44,
                      "y": 2.28
                    },
                    "EndPoint": {
                      "x": 4.44,
                      "y": 1.50000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.420000076,
                    "NextFootholdId": 12,
                    "PreviousFootholdId": 45,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 46,
                    "StartPoint": {
                      "x": 4.44,
                      "y": 1.50000012
                    },
                    "EndPoint": {
                      "x": 4.44,
                      "y": 1.08
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.600000143,
                    "NextFootholdId": 44,
                    "PreviousFootholdId": 48,
                    "groupID": 7,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 47,
                    "StartPoint": {
                      "x": 3.77000022,
                      "y": 0.9
                    },
                    "EndPoint": {
                      "x": 3.77000022,
                      "y": 1.50000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 47,
                    "PreviousFootholdId": 0,
                    "groupID": 7,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 48,
                    "StartPoint": {
                      "x": 3.77000022,
                      "y": 0.299999982
                    },
                    "EndPoint": {
                      "x": 3.77000022,
                      "y": 0.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 13,
                    "PreviousFootholdId": 12,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 49,
                    "StartPoint": {
                      "x": 5.33999968,
                      "y": 1.08
                    },
                    "EndPoint": {
                      "x": 5.33999968,
                      "y": 0.48
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 51,
                    "groupID": 8,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 50,
                    "StartPoint": {
                      "x": 4.6699996,
                      "y": -0.3
                    },
                    "EndPoint": {
                      "x": 4.6699996,
                      "y": 0.3
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.599999964,
                    "NextFootholdId": 50,
                    "PreviousFootholdId": 0,
                    "groupID": 8,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 51,
                    "StartPoint": {
                      "x": 4.6699996,
                      "y": -0.9
                    },
                    "EndPoint": {
                      "x": 4.6699996,
                      "y": -0.3
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 16,
                    "PreviousFootholdId": 15,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 52,
                    "StartPoint": {
                      "x": 7.37,
                      "y": 0.48
                    },
                    "EndPoint": {
                      "x": 7.37,
                      "y": 1.08
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.599999964,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 0,
                    "groupID": 9,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 53,
                    "StartPoint": {
                      "x": 8.04,
                      "y": -0.3
                    },
                    "EndPoint": {
                      "x": 8.04,
                      "y": -0.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.779999852,
                    "NextFootholdId": 17,
                    "PreviousFootholdId": 55,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 54,
                    "StartPoint": {
                      "x": 8.2699995,
                      "y": 1.50000012
                    },
                    "EndPoint": {
                      "x": 8.2699995,
                      "y": 2.28
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.420000076,
                    "NextFootholdId": 54,
                    "PreviousFootholdId": 16,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 55,
                    "StartPoint": {
                      "x": 8.2699995,
                      "y": 1.08
                    },
                    "EndPoint": {
                      "x": 8.2699995,
                      "y": 1.50000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 57,
                    "PreviousFootholdId": 0,
                    "groupID": 10,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 56,
                    "StartPoint": {
                      "x": 8.94,
                      "y": 0.9
                    },
                    "EndPoint": {
                      "x": 8.94,
                      "y": 0.299999982
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 56,
                    "groupID": 10,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 57,
                    "StartPoint": {
                      "x": 8.94,
                      "y": 0.3
                    },
                    "EndPoint": {
                      "x": 8.94,
                      "y": -0.3
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.600000143,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 0,
                    "groupID": 11,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 58,
                    "StartPoint": {
                      "x": 9.84,
                      "y": 1.50000012
                    },
                    "EndPoint": {
                      "x": 9.84,
                      "y": 0.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.600000143,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 0,
                    "groupID": 12,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 59,
                    "StartPoint": {
                      "x": 10.07,
                      "y": 0.9
                    },
                    "EndPoint": {
                      "x": 10.07,
                      "y": 1.50000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.779999852,
                    "NextFootholdId": 61,
                    "PreviousFootholdId": 19,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 60,
                    "StartPoint": {
                      "x": 11.6399994,
                      "y": 2.28
                    },
                    "EndPoint": {
                      "x": 11.6399994,
                      "y": 1.50000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.600000143,
                    "NextFootholdId": 63,
                    "PreviousFootholdId": 60,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 61,
                    "StartPoint": {
                      "x": 11.6399994,
                      "y": 1.50000012
                    },
                    "EndPoint": {
                      "x": 11.6399994,
                      "y": 0.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 64,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 62,
                    "StartPoint": {
                      "x": 10.9699993,
                      "y": 0.299999982
                    },
                    "EndPoint": {
                      "x": 10.9699993,
                      "y": 0.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 65,
                    "PreviousFootholdId": 61,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 63,
                    "StartPoint": {
                      "x": 11.6399994,
                      "y": 0.9
                    },
                    "EndPoint": {
                      "x": 11.6399994,
                      "y": 0.299999982
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 62,
                    "PreviousFootholdId": 66,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 64,
                    "StartPoint": {
                      "x": 10.9699993,
                      "y": -0.3
                    },
                    "EndPoint": {
                      "x": 10.9699993,
                      "y": 0.3
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 67,
                    "PreviousFootholdId": 63,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 65,
                    "StartPoint": {
                      "x": 11.6399994,
                      "y": 0.3
                    },
                    "EndPoint": {
                      "x": 11.6399994,
                      "y": -0.3
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.599999964,
                    "NextFootholdId": 64,
                    "PreviousFootholdId": 68,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 66,
                    "StartPoint": {
                      "x": 10.9699993,
                      "y": -0.9
                    },
                    "EndPoint": {
                      "x": 10.9699993,
                      "y": -0.3
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.599999964,
                    "NextFootholdId": 69,
                    "PreviousFootholdId": 65,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 67,
                    "StartPoint": {
                      "x": 11.6399994,
                      "y": -0.3
                    },
                    "EndPoint": {
                      "x": 11.6399994,
                      "y": -0.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.419999957,
                    "NextFootholdId": 66,
                    "PreviousFootholdId": 20,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 68,
                    "StartPoint": {
                      "x": 10.9699993,
                      "y": -1.32
                    },
                    "EndPoint": {
                      "x": 10.9699993,
                      "y": -0.9000001
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 70,
                    "PreviousFootholdId": 67,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 69,
                    "StartPoint": {
                      "x": 11.6399994,
                      "y": -0.9000001
                    },
                    "EndPoint": {
                      "x": 11.6399994,
                      "y": -1.50000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.6,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 69,
                    "groupID": 2,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 70,
                    "StartPoint": {
                      "x": 11.6399994,
                      "y": -1.50000012
                    },
                    "EndPoint": {
                      "x": 11.6399994,
                      "y": -2.10000014
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.7800001,
                    "NextFootholdId": 20,
                    "PreviousFootholdId": 72,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 71,
                    "StartPoint": {
                      "x": 10.07,
                      "y": -2.10000014
                    },
                    "EndPoint": {
                      "x": 10.07,
                      "y": -1.32
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.420000076,
                    "NextFootholdId": 71,
                    "PreviousFootholdId": 21,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 72,
                    "StartPoint": {
                      "x": 10.07,
                      "y": -2.52000022
                    },
                    "EndPoint": {
                      "x": 10.07,
                      "y": -2.10000014
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5999999,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 0,
                    "groupID": 13,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 73,
                    "StartPoint": {
                      "x": 10.74,
                      "y": -2.10000014
                    },
                    "EndPoint": {
                      "x": 10.74,
                      "y": -2.7
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5999999,
                    "NextFootholdId": 21,
                    "PreviousFootholdId": 22,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 74,
                    "StartPoint": {
                      "x": 9.17,
                      "y": -3.12000012
                    },
                    "EndPoint": {
                      "x": 9.17,
                      "y": -2.52000022
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5999999,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 0,
                    "groupID": 14,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 75,
                    "StartPoint": {
                      "x": 9.84,
                      "y": -2.70000029
                    },
                    "EndPoint": {
                      "x": 9.84,
                      "y": -3.30000019
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.600000143,
                    "NextFootholdId": 22,
                    "PreviousFootholdId": 4,
                    "groupID": 1,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 76,
                    "StartPoint": {
                      "x": 8.2699995,
                      "y": -3.72000027
                    },
                    "EndPoint": {
                      "x": 8.2699995,
                      "y": -3.12000012
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": 1.0
                    },
                    "IsDynamic": false
                  },
                  {
                    "Length": 0.5999999,
                    "NextFootholdId": 0,
                    "PreviousFootholdId": 0,
                    "groupID": 15,
                    "layer": 1,
                    "sortingLayerName": "MapLayer0",
                    "attribute": {
                      "walk": 1.0,
                      "force": 0.0,
                      "drag": 2.5,
                      "isDynamic": false,
                      "isCustomFoothold": false,
                      "inertiaOption": 0
                    },
                    "OwnerId": "5179f96f-8835-49ef-95e2-7ce8f6ca699f",
                    "Id": 77,
                    "StartPoint": {
                      "x": 8.94,
                      "y": -3.30000019
                    },
                    "EndPoint": {
                      "x": 8.94,
                      "y": -3.9
                    },
                    "Variance": {
                      "x": 0.0,
                      "y": -1.0
                    },
                    "IsDynamic": false
                  }
                ]
              },
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "a2875216-b0ac-4673-8675-f84f3f8e36a2"
        }"0MOD.Core.MapComponent,MOD.Core.FootholdComponent?
$2974b7c0-98cc-43c2-a7e7-5eacd2e93876/maps/map05/Background?{
          "name": "Background",
          "path": "/maps/map05/Background",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 0,
          "pathConstraints": "///",
          "revision": 3,
          "modelId": null,
          "@components": [
            {
              "@type": "MOD.Core.BackgroundComponent",
              "TemplateRUID": "afbd5a2fdaa945fbbf64446e2473a5dd",
              "Type": 1,
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "2974b7c0-98cc-43c2-a7e7-5eacd2e93876"
        }"MOD.Core.BackgroundComponent??
$f871de3f-41f4-45b4-8f26-e1bbdf86d8a4/maps/map05/MapleMapLayer??{
          "name": "MapleMapLayer",
          "path": "/maps/map05/MapleMapLayer",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 1,
          "pathConstraints": "///",
          "revision": 1,
          "origin": {
            "type": "Model",
            "entry_id": "maplemaplayer",
            "sub_entity_id": null
          },
          "modelId": "maplemaplayer",
          "@components": [
            {
              "@type": "MOD.Core.MapLayerComponent",
              "IsVisible": true,
              "LayerSortOrder": 0,
              "Locked": false,
              "MapLayerName": "Layer1",
              "Thumbnail": "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",
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "f871de3f-41f4-45b4-8f26-e1bbdf86d8a4"
        }"MOD.Core.MapLayerComponent??
$5179f96f-8835-49ef-95e2-7ce8f6ca699f/maps/map05/TileMap??{
          "name": "TileMap",
          "path": "/maps/map05/TileMap",
          "nameEditable": false,
          "enable": true,
          "visible": true,
          "displayOrder": 2,
          "pathConstraints": "///",
          "revision": 2,
          "origin": {
            "type": "Model",
            "entry_id": "tilemap",
            "sub_entity_id": null
          },
          "modelId": "tilemap",
          "@components": [
            {
              "@type": "MOD.Core.TransformComponent",
              "Rotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0
              },
              "Position": {
                "x": -0.225,
                "y": -0.15,
                "z": 1000.0
              },
              "QuaternionRotation": {
                "x": 0.0,
                "y": 0.0,
                "z": 0.0,
                "w": 1.0
              },
              "ZRotation": 0.0,
              "Enable": true
            },
            {
              "@type": "MOD.Core.TileMapComponent",
              "IsOddGridPosition": false,
              "SortingLayer": "MapLayer0",
              "TileMapVersion": 1,
              "TileSetRUID": {
                "DataId": "b16077cf6ddf423491347306cdb646bd"
              },
              "Tiles": [
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 14,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 14,
                    "y": -15
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 14,
                    "y": -13
                  },
                  "tileIndex": 2
                },
                {
                  "type": 9,
                  "position": {
                    "x": 12,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 12,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 12,
                    "y": -15
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 8,
                  "position": {
                    "x": 11,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 16,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 16,
                    "y": -15
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 17,
                    "y": -15
                  },
                  "tileIndex": -1
                },
                {
                  "type": 8,
                  "position": {
                    "x": 17,
                    "y": -14
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 16,
                    "y": -13
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 17,
                    "y": -13
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 10,
                    "y": -12
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -13
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 10,
                    "y": -13
                  },
                  "tileIndex": 2
                },
                {
                  "type": 8,
                  "position": {
                    "x": 9,
                    "y": -12
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 11,
                    "y": -12
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -11
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 10,
                    "y": -11
                  },
                  "tileIndex": 2
                },
                {
                  "type": 11,
                  "position": {
                    "x": 11,
                    "y": -11
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 8,
                    "y": -11
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -11
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -10
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": -9
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 6,
                    "y": -10
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -11
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 6,
                    "y": -11
                  },
                  "tileIndex": 1
                },
                {
                  "type": 8,
                  "position": {
                    "x": 5,
                    "y": -10
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -9
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 6,
                    "y": -9
                  },
                  "tileIndex": 2
                },
                {
                  "type": 9,
                  "position": {
                    "x": 8,
                    "y": -9
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -9
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": -10
                  },
                  "tileIndex": 0
                },
                {
                  "type": 3,
                  "position": {
                    "x": 10,
                    "y": -10
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 8,
                    "y": -10
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 6,
                    "y": -8
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 5,
                    "y": -8
                  },
                  "tileIndex": 1
                },
                {
                  "type": 6,
                  "position": {
                    "x": 7,
                    "y": -8
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 6,
                    "y": -7
                  },
                  "tileIndex": 1
                },
                {
                  "type": 11,
                  "position": {
                    "x": 7,
                    "y": -7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 5,
                    "y": -6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 4,
                    "y": -6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -7
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 4,
                    "y": -7
                  },
                  "tileIndex": 2
                },
                {
                  "type": 8,
                  "position": {
                    "x": 3,
                    "y": -6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 4,
                    "y": -4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 3,
                    "y": -4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 5,
                    "y": -4
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 4,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 3,
                    "y": -2
                  },
                  "tileIndex": 1
                },
                {
                  "type": 6,
                  "position": {
                    "x": 5,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": -1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 4,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 3,
                    "y": 0
                  },
                  "tileIndex": 1
                },
                {
                  "type": 6,
                  "position": {
                    "x": 5,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 1
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 4,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 3,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 5,
                    "y": 2
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 4,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 3,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 5,
                    "y": 4
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 3,
                    "y": 5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 4,
                    "y": 5
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 4,
                    "y": 6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 3,
                    "y": 6
                  },
                  "tileIndex": 1
                },
                {
                  "type": 6,
                  "position": {
                    "x": 5,
                    "y": 6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 11,
                  "position": {
                    "x": 3,
                    "y": 7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 4,
                    "y": 7
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 5,
                    "y": 7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 6,
                    "y": 7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 7,
                    "y": 7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 8,
                    "y": 7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 11,
                  "position": {
                    "x": 9,
                    "y": 7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 9,
                    "y": 6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 5
                  },
                  "tileIndex": -1
                },
                {
                  "type": 6,
                  "position": {
                    "x": 9,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 3
                  },
                  "tileIndex": -1
                },
                {
                  "type": 8,
                  "position": {
                    "x": 9,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 9,
                    "y": 1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 10,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 10,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": 1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 6,
                  "position": {
                    "x": 11,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 10,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 11,
                  "position": {
                    "x": 11,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 11,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 12,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 12,
                    "y": -1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 12,
                    "y": 1
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 12,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 11,
                    "y": -3
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 12,
                    "y": -3
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -3
                  },
                  "tileIndex": -1
                },
                {
                  "type": 8,
                  "position": {
                    "x": 11,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 13,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 14,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 16,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 16,
                    "y": -3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 17,
                    "y": -3
                  },
                  "tileIndex": -1
                },
                {
                  "type": 8,
                  "position": {
                    "x": 17,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 16,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 17,
                    "y": -1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 16,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": 0
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 17,
                    "y": 0
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 15,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 16,
                    "y": 1
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 17,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 14,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 14,
                    "y": -1
                  },
                  "tileIndex": 2
                },
                {
                  "type": 9,
                  "position": {
                    "x": 14,
                    "y": 1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 5,
                  "position": {
                    "x": 14,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 18,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 18,
                    "y": -1
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 19,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 8,
                  "position": {
                    "x": 19,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 18,
                    "y": 1
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 19,
                    "y": 1
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 18,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 17,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 19,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 11,
                  "position": {
                    "x": 17,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 18,
                    "y": 3
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 19,
                    "y": 3
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 19,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 19,
                    "y": 5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 20,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 20,
                    "y": 3
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 21,
                    "y": 3
                  },
                  "tileIndex": -1
                },
                {
                  "type": 8,
                  "position": {
                    "x": 21,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 20,
                    "y": 5
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 21,
                    "y": 5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 20,
                    "y": 6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 19,
                    "y": 6
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 21,
                    "y": 6
                  },
                  "tileIndex": 1
                },
                {
                  "type": 11,
                  "position": {
                    "x": 19,
                    "y": 7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 20,
                    "y": 7
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 21,
                    "y": 7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 22,
                    "y": 6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 7,
                  "position": {
                    "x": 22,
                    "y": 5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 23,
                    "y": 5
                  },
                  "tileIndex": -1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 23,
                    "y": 6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 22,
                    "y": 7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 23,
                    "y": 7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 24,
                    "y": 6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 24,
                    "y": 5
                  },
                  "tileIndex": 2
                },
                {
                  "type": 0,
                  "position": {
                    "x": 25,
                    "y": 5
                  },
                  "tileIndex": -1
                },
                {
                  "type": 6,
                  "position": {
                    "x": 25,
                    "y": 6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 9,
                  "position": {
                    "x": 24,
                    "y": 7
                  },
                  "tileIndex": 1
                },
                {
                  "type": 11,
                  "position": {
                    "x": 25,
                    "y": 7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 24,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 23,
                    "y": 3
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 24,
                    "y": 3
                  },
                  "tileIndex": 1
                },
                {
                  "type": 0,
                  "position": {
                    "x": 25,
                    "y": 3
                  },
                  "tileIndex": -1
                },
                {
                  "type": 8,
                  "position": {
                    "x": 23,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 25,
                    "y": 4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 6,
                  "position": {
                    "x": 25,
                    "y": 2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 25,
                    "y": 1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 6,
                  "position": {
                    "x": 25,
                    "y": 0
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 25,
                    "y": -1
                  },
                  "tileIndex": -1
                },
                {
                  "type": 6,
                  "position": {
                    "x": 25,
                    "y": -2
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 25,
                    "y": -3
                  },
                  "tileIndex": -1
                },
                {
                  "type": 6,
                  "position": {
                    "x": 25,
                    "y": -4
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 25,
                    "y": -5
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 24,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 11,
                  "position": {
                    "x": 23,
                    "y": -5
                  },
                  "tileIndex": 0
                },
                {
                  "type": 5,
                  "position": {
                    "x": 24,
                    "y": -6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 23,
                    "y": -7
                  },
                  "tileIndex": -1
                },
                {
                  "type": 7,
                  "position": {
                    "x": 24,
                    "y": -7
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 25,
                    "y": -7
                  },
                  "tileIndex": -1
                },
                {
                  "type": 6,
                  "position": {
                    "x": 23,
                    "y": -6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 8,
                  "position": {
                    "x": 25,
                    "y": -6
                  },
                  "tileIndex": 0
                },
                {
                  "type": 8,
                  "position": {
                    "x": 23,
                    "y": -8
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 23,
                    "y": -9
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 22,
                    "y": -9
                  },
                  "tileIndex": 0
                },
                {
                  "type": 11,
                  "position": {
                    "x": 21,
                    "y": -9
                  },
                  "tileIndex": 0
                },
                {
                  "type": 8,
                  "position": {
                    "x": 21,
                    "y": -10
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 21,
                    "y": -11
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 20,
                    "y": -11
                  },
                  "tileIndex": 0
                },
                {
                  "type": 11,
                  "position": {
                    "x": 19,
                    "y": -11
                  },
                  "tileIndex": 0
                },
                {
                  "type": 8,
                  "position": {
                    "x": 19,
                    "y": -12
                  },
                  "tileIndex": 0
                },
                {
                  "type": 0,
                  "position": {
                    "x": 19,
                    "y": -13
                  },
                  "tileIndex": -1
                },
                {
                  "type": 9,
                  "position": {
                    "x": 18,
                    "y": -13
                  },
                  "tileIndex": 0
                }
              ],
              "Enable": true
            }
          ],
          "@version": 1,
          "id": "5179f96f-8835-49ef-95e2-7ce8f6ca699f"
        }"5MOD.Core.TransformComponent,MOD.Core.TileMapComponentX?7
 b7e47b1872fd462bbe4c4c8b7face2b7 49894c1087b7415daa3cc5d1c9929a60model://defaultplayer"x-mod/model2?6?6{
    "Version": 1,
    "Name": "DefaultPlayer",
    "BaseModelId": "player",
    "Id": "defaultplayer",
    "Components": [
      "script.MyUser"
    ],
    "Properties": [],
    "Values": [
      {
        "TargetType": null,
        "Name": "speed",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 1.2
      },
      {
        "TargetType": null,
        "Name": "jumpForce",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 1.0
      },
      {
        "TargetType": null,
        "Name": "walkAcceleration",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 1.0
      },
      {
        "TargetType": null,
        "Name": "gravity",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 1.0
      },
      {
        "TargetType": null,
        "Name": "cameraDeadZone",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 0.052,
          "y": 0.08
        }
      },
      {
        "TargetType": null,
        "Name": "cameraSoftZone",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 0.268,
          "y": 0.7
        }
      },
      {
        "TargetType": null,
        "Name": "cameraDamping",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 2.5,
          "y": 3.9
        }
      },
      {
        "TargetType": null,
        "Name": "cameraScreen",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 0.5,
          "y": 0.655
        }
      },
      {
        "TargetType": null,
        "Name": "cameraDutch",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 0.0
      },
      {
        "TargetType": null,
        "Name": "cameraOffset",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 0.0,
          "y": 0.0
        }
      },
      {
        "TargetType": null,
        "Name": "nameTag",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": ""
      },
      {
        "TargetType": null,
        "Name": "damageSkinId",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODDataRef, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODDataRef, MOD.Core",
          "DataId": "6ba67548f43f48f29eb23dafd0766383"
        }
      },
      {
        "TargetType": null,
        "Name": "damageDelayPerAttack",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Single, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 0.05
      },
      {
        "TargetType": null,
        "Name": "triggerBodyBoxSize",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 0.66,
          "y": 0.7
        }
      },
      {
        "TargetType": null,
        "Name": "triggerBodyBoxOffset",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 0.0,
          "y": 0.35
        }
      },
      {
        "TargetType": null,
        "Name": "triggerBodyColliderOffset",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODVector2, MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODVector2, MOD.Core",
          "x": 0.0,
          "y": 0.35
        }
      },
      {
        "TargetType": null,
        "Name": "maxHp",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "System.Int64, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"
        },
        "Value": 1000
      },
      {
        "TargetType": null,
        "Name": "actionSheet",
        "ValueType": {
          "$type": "MODNativeType",
          "type": "MOD.Core.MODSyncDictionary`2[[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.String, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], MOD.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=null"
        },
        "Value": {
          "$type": "MOD.Core.MODSyncDictionary`2[[System.String, mscorlib],[System.String, mscorlib]], MOD.Core",
          "IDLE": "stand",
          "MOVE": "walk",
          "ATTACK": "attack",
          "HIT": "hit",
          "CROUCH": "crouch",
          "FALL": "fall",
          "JUMP": "fall",
          "CLIMB": "rope",
          "LADDER": "ladder",
          "DEAD": "dead",
          "SIT": "sit"
        }
      }
    ],
    "EventLinks": [],
    "Children": []
  }X??
 28d5ed71f75f4a549413b6bd8d07e458 49894c1087b7415daa3cc5d1c9929a60)ui://093a58a4-3afd-490d-8b36-6f71cd3c99e4"x-mod/ui2???
$093a58a4-3afd-490d-8b36-6f71cd3c99e4/ui/UIGroup?{"name":"UIGroup","path":"/ui/UIGroup","nameEditable":true,"enable":true,"visible":true,"displayOrder":3,"pathConstraints":"//","revision":11,"origin":{"type":"Model","entry_id":"uigroup","sub_entity_id":null},"modelId":"uigroup","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":15,"AnchorsMax":{"x":1.0,"y":1.0},"AnchorsMin":{"x":0.0,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":0.0,"y":0.0},"OffsetMin":{"x":0.0,"y":0.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":1021.579,"y":1080.0},"UIMode":1,"UIVersion":2,"anchoredPosition":{"x":0.0,"y":0.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":0.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.UIGroupComponent","DefaultShow":true,"GroupOrder":3,"GroupType":2,"Thumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABkAMgDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD3+iiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKAIrmH7RazQ5x5iFM+mRiuds/D80eoLJJGqRo6urDbn5Tx0Hp9Mnk109FAGBc6PNLJIpi8wMHVHLjChmLZ56HnBx1Hp3huNDuFui0MSSAIiK7qhGAgHRvcD6c10tFAHP2mm3lj5EkcXmMskjMjSDJDBRyfX5c06TT7y5tL4TRASzrEowV+bb1JIx/njtW9RQBgWWm3aax9qliVIzK8n8JIyCOvU0Vv0UAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAf/9k=","Enable":true},{"@type":"MOD.Core.CanvasGroupComponent","Enable":true}],"@version":1}"UMOD.Core.UITransformComponent,MOD.Core.UIGroupComponent,MOD.Core.CanvasGroupComponent?
$cb9d6619-8125-4991-8b9d-54bf71e86322/ui/UIGroup/TalkPanel?{"name":"TalkPanel","path":"/ui/UIGroup/TalkPanel","nameEditable":true,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"///","revision":3,"origin":{"type":"Model","entry_id":"uisprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":6,"AnchorsMax":{"x":0.5,"y":0.0},"AnchorsMin":{"x":0.5,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":800.0,"y":250.0},"OffsetMin":{"x":-800.0,"y":50.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":1600.0,"y":200.0},"UIMode":1,"UIVersion":2,"anchoredPosition":{"x":0.0,"y":150.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":-390.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","Color":{"r":0.0,"g":0.0,"b":0.0,"a":0.6},"Enable":true}],"@version":1}"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent?	
$65eac8aa-4801-496b-9f2f-0e029f716df7/ui/UIGroup/TalkPanel/Portrait?{"name":"Portrait","path":"/ui/UIGroup/TalkPanel/Portrait","nameEditable":true,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"////","revision":3,"origin":{"type":"Model","entry_id":"uisprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":0,"AnchorsMax":{"x":0.5,"y":0.5},"AnchorsMin":{"x":0.5,"y":0.5},"MobileOnly":false,"OffsetMax":{"x":-475.0,"y":345.0},"OffsetMin":{"x":-725.0,"y":95.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":250.0,"y":250.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":-600.0,"y":220.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":-600.0,"y":220.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","EndFrameIndex":2147483647,"ImageRUID":{"DataId":"e249183d9a54401cab95383d57bc9e88"},"StartFrameIndex":0,"Enable":true}],"@version":1}"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent?

$e2350530-5626-45bd-9834-bc499284fd88/ui/UIGroup/TalkPanel/Name?{"name":"Name","path":"/ui/UIGroup/TalkPanel/Name","nameEditable":true,"enable":true,"visible":true,"displayOrder":1,"pathConstraints":"////","revision":3,"origin":{"type":"Model","entry_id":"uitext","sub_entity_id":null},"modelId":"uitext","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":0,"AnchorsMax":{"x":0.5,"y":0.5},"AnchorsMin":{"x":0.5,"y":0.5},"MobileOnly":false,"OffsetMax":{"x":-450.0,"y":160.0},"OffsetMin":{"x":-750.0,"y":60.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":300.0,"y":100.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":-600.0,"y":110.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":-600.0,"y":110.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","Enable":true},{"@type":"MOD.Core.TextComponent","FontColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"FontSize":36,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineDistance":{"x":1.0,"y":-1.0},"Text":"탈리","UseOutLine":true,"Enable":true}],"@version":1}"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent?

$f41fa0d3-5ae0-4e3b-9cbf-861854ed3be0/ui/UIGroup/TalkPanel/Text?{"name":"Text","path":"/ui/UIGroup/TalkPanel/Text","nameEditable":true,"enable":true,"visible":true,"displayOrder":2,"pathConstraints":"////","revision":3,"origin":{"type":"Model","entry_id":"uitext","sub_entity_id":null},"modelId":"uitext","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":0,"AnchorsMax":{"x":0.5,"y":0.5},"AnchorsMin":{"x":0.5,"y":0.5},"MobileOnly":false,"OffsetMax":{"x":775.0,"y":75.0},"OffsetMin":{"x":-775.0,"y":-75.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":1550.0,"y":150.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":0.0,"y":0.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":0.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","Enable":true},{"@type":"MOD.Core.TextComponent","Alignment":0,"FontColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"FontSize":36,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineDistance":{"x":1.0,"y":-1.0},"Text":"안녕?","UseOutLine":true,"Enable":true}],"@version":1}"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent?
$cc096a0e-73f9-443b-9a1d-59b4a0370fe8/ui/UIGroup/UIMyInfo?{"name":"UIMyInfo","path":"/ui/UIGroup/UIMyInfo","nameEditable":true,"enable":true,"visible":true,"displayOrder":1,"pathConstraints":"///","revision":0,"origin":{"type":"Model","entry_id":"UISprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":6,"AnchorsMax":{"x":0.5,"y":0.0},"AnchorsMin":{"x":0.5,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":202.0,"y":120.0},"OffsetMin":{"x":-202.0,"y":40.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":404.0,"y":80.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":0.0,"y":80.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":-460.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":""},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":1.0,"g":1.0,"b":1.0,"a":0.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true},{"@type":"script.UIMyInfoSimple","Enable":true,"myName":{"IsRelative":false,"ComponentId":":TextComponent"},"myHP":{"IsRelative":false,"ComponentId":":TextComponent"}}],"@version":1}"WMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,script.UIMyInfoSimple?
$024a6d85-bf8f-4935-9a57-15d8de119b6f /ui/UIGroup/UIMyInfo/Bg_statinfo?{"name":"Bg_statinfo","path":"/ui/UIGroup/UIMyInfo/Bg_statinfo","nameEditable":true,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"////","revision":0,"origin":{"type":"Model","entry_id":"UISprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":15,"AnchorsMax":{"x":1.0,"y":1.0},"AnchorsMin":{"x":0.0,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":-9.536743E-07,"y":0.0},"OffsetMin":{"x":-9.536743E-07,"y":0.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":404.0,"y":80.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":-9.536743E-07,"y":0.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":0.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"53405dae6bb32dd45b3d2e541dc4d1fd"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true}],"@version":1}"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent?
$567b9aba-1e47-4bbe-aaa0-3972116c0276/ui/UIGroup/UIMyInfo/Text_name?{"name":"Text_name","path":"/ui/UIGroup/UIMyInfo/Text_name","nameEditable":true,"enable":true,"visible":true,"displayOrder":1,"pathConstraints":"////","revision":0,"origin":{"type":"Model","entry_id":"UIText","sub_entity_id":null},"modelId":"uitext","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":15,"AnchorsMax":{"x":1.0,"y":1.0},"AnchorsMin":{"x":0.0,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":-10.0,"y":-1.0},"OffsetMin":{"x":10.0,"y":37.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":384.0,"y":42.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":0.0,"y":18.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":18.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"3e9d52ed52d64794bbd6f72bab8ee3d9"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"DropShadow":false,"DropShadowAngle":90.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":2.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":2.0,"RaycastTarget":true,"Type":1,"Enable":true},{"@type":"MOD.Core.TextComponent","Alignment":4,"Bold":false,"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"Font":0,"FontColor":{"r":0.9254902,"g":0.929411769,"b":0.929411769,"a":1.0},"FontSize":27,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.2},"OutlineDistance":{"x":2.0,"y":-2.0},"OutlineWidth":2.0,"Overflow":2,"Padding":{"left":0,"right":0,"top":0,"bottom":0},"SizeFit":false,"Text":"닉네임여섯자","UseOutLine":true,"Enable":true}],"@version":1}"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent?
$f137dd1a-4080-4c27-8503-0af57846b5a3/ui/UIGroup/UIMyInfo/HP_bar?{"name":"HP_bar","path":"/ui/UIGroup/UIMyInfo/HP_bar","nameEditable":true,"enable":true,"visible":true,"displayOrder":2,"pathConstraints":"////","revision":0,"origin":{"type":"Model","entry_id":"UIEmpty","sub_entity_id":null},"modelId":"uiempty","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":0,"AnchorsMax":{"x":0.5,"y":0.5},"AnchorsMin":{"x":0.5,"y":0.5},"MobileOnly":false,"OffsetMax":{"x":191.0,"y":-3.0},"OffsetMin":{"x":-191.0,"y":-29.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":382.0,"y":26.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":0.0,"y":-16.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":-16.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"55dd6a9cd4a06a240920a17e34568148"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"DropShadow":false,"DropShadowAngle":90.0,"DropShadowColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"DropShadowDistance":20.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true},{"@type":"MOD.Core.SliderComponent","Direction":0,"FillRectColor":{"r":0.972549,"g":0.321568638,"b":0.321568638,"a":1.0},"FillRectImageRUID":{"DataId":"cec4bf6a03860ae4e9882ac5a89cf721"},"FillRectPadding":{"left":3,"right":3,"top":3,"bottom":3},"HandleAreaPadding":{"left":0,"right":0,"top":0,"bottom":0},"HandleColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"HandleSize":{"x":50.0,"y":50.0},"MaxValue":1.0,"MinValue":0.0,"UseHandle":false,"UseIntegerValue":false,"Value":1.0,"Enable":true}],"@version":1}"ZMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.SliderComponent?
$376650b2-8dd0-41ba-b7ab-90b05564f3df/ui/UIGroup/UIMyInfo_1?{"name":"UIMyInfo_1","path":"/ui/UIGroup/UIMyInfo_1","nameEditable":true,"enable":true,"visible":true,"displayOrder":2,"pathConstraints":"///","revision":0,"origin":{"type":"Model","entry_id":"UISprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":6,"AnchorsMax":{"x":0.5,"y":0.0},"AnchorsMin":{"x":0.5,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":202.0,"y":120.0},"OffsetMin":{"x":-202.0,"y":40.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":404.0,"y":80.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":0.0,"y":80.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":-460.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":""},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":1.0,"g":1.0,"b":1.0,"a":0.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true},{"@type":"script.UIMyInfoSimple","Enable":true,"myName":{"IsRelative":false,"ComponentId":":TextComponent"},"myHP":{"IsRelative":false,"ComponentId":":TextComponent"}}],"@version":1}"WMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,script.UIMyInfoSimple?
$fcf45d7e-7b42-4a98-a9f9-cdd608359f2c"/ui/UIGroup/UIMyInfo_1/Bg_statinfo?{"name":"Bg_statinfo","path":"/ui/UIGroup/UIMyInfo_1/Bg_statinfo","nameEditable":true,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"////","revision":0,"origin":{"type":"Model","entry_id":"UISprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":15,"AnchorsMax":{"x":1.0,"y":1.0},"AnchorsMin":{"x":0.0,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":-9.536743E-07,"y":0.0},"OffsetMin":{"x":-9.536743E-07,"y":0.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":404.0,"y":80.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":-9.536743E-07,"y":0.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":0.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"53405dae6bb32dd45b3d2e541dc4d1fd"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true}],"@version":1}"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent?
$99cef12a-ebee-4647-aa33-7ec8a840d4f1 /ui/UIGroup/UIMyInfo_1/Text_name?{"name":"Text_name","path":"/ui/UIGroup/UIMyInfo_1/Text_name","nameEditable":true,"enable":true,"visible":true,"displayOrder":1,"pathConstraints":"////","revision":0,"origin":{"type":"Model","entry_id":"UIText","sub_entity_id":null},"modelId":"uitext","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":15,"AnchorsMax":{"x":1.0,"y":1.0},"AnchorsMin":{"x":0.0,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":-10.0,"y":-1.0},"OffsetMin":{"x":10.0,"y":37.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":384.0,"y":42.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":0.0,"y":18.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":18.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"3e9d52ed52d64794bbd6f72bab8ee3d9"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"DropShadow":false,"DropShadowAngle":90.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":2.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":2.0,"RaycastTarget":true,"Type":1,"Enable":true},{"@type":"MOD.Core.TextComponent","Alignment":4,"Bold":false,"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"Font":0,"FontColor":{"r":0.9254902,"g":0.929411769,"b":0.929411769,"a":1.0},"FontSize":27,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.2},"OutlineDistance":{"x":2.0,"y":-2.0},"OutlineWidth":2.0,"Overflow":2,"Padding":{"left":0,"right":0,"top":0,"bottom":0},"SizeFit":false,"Text":"닉네임여섯자","UseOutLine":true,"Enable":true}],"@version":1}"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent?
$93bbae55-faf9-4afe-bd43-3118e6bd59d5/ui/UIGroup/UIMyInfo_1/HP_bar?{"name":"HP_bar","path":"/ui/UIGroup/UIMyInfo_1/HP_bar","nameEditable":true,"enable":true,"visible":true,"displayOrder":2,"pathConstraints":"////","revision":0,"origin":{"type":"Model","entry_id":"UIEmpty","sub_entity_id":null},"modelId":"uiempty","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":0,"AnchorsMax":{"x":0.5,"y":0.5},"AnchorsMin":{"x":0.5,"y":0.5},"MobileOnly":false,"OffsetMax":{"x":191.0,"y":-3.0},"OffsetMin":{"x":-191.0,"y":-29.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":382.0,"y":26.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":0.0,"y":-16.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":-16.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"55dd6a9cd4a06a240920a17e34568148"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"DropShadow":false,"DropShadowAngle":90.0,"DropShadowColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"DropShadowDistance":20.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true},{"@type":"MOD.Core.SliderComponent","Direction":0,"FillRectColor":{"r":0.972549,"g":0.321568638,"b":0.321568638,"a":1.0},"FillRectImageRUID":{"DataId":"cec4bf6a03860ae4e9882ac5a89cf721"},"FillRectPadding":{"left":3,"right":3,"top":3,"bottom":3},"HandleAreaPadding":{"left":0,"right":0,"top":0,"bottom":0},"HandleColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"HandleSize":{"x":50.0,"y":50.0},"MaxValue":1.0,"MinValue":0.0,"UseHandle":false,"UseIntegerValue":false,"Value":1.0,"Enable":true}],"@version":1}"ZMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.SliderComponentX?*
 365fed1eab874d21b02fade87228c05c 49894c1087b7415daa3cc5d1c9929a60)ui://0bc398f9-29cb-4d89-a78d-f24742b117e8"x-mod/ui2?)?
$0bc398f9-29cb-4d89-a78d-f24742b117e8/ui/ToastGroup?{"name":"ToastGroup","path":"/ui/ToastGroup","nameEditable":true,"enable":true,"visible":true,"displayOrder":2,"pathConstraints":"//","revision":3,"origin":{"type":"Model","entry_id":"uigroup","sub_entity_id":null},"modelId":"uigroup","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":15,"AnchorsMax":{"x":1.0,"y":1.0},"AnchorsMin":{"x":0.0,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":0.0,"y":0.0},"OffsetMin":{"x":0.0,"y":0.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":1021.579,"y":1080.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":0.0,"y":0.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":0.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.UIGroupComponent","DefaultShow":false,"GroupOrder":2,"GroupType":1,"Thumbnail":"/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL/wAARCABkAMgDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwD3+iiigAooooAKKKKACiiigAooooAK8T+IwnHjW4NwJDFsjMQJ/g2jO30G7d+Oa9sqreabY6hs+22Vtc7M7POiV9ueuMjjoPyoA+f4E0uS6SOWS5ihZgTKQDtBA4IHoc/MO3O3PFavgbnxvpnlBhy2cnJ/1Z3fh1r2L/hHNC/6Aunf+Aqf4VPaaTpthKZbPT7S3kK7S8MKoSPTIHTgUAXKKKKACiiigArmdQW+n1C5/wBKaAZCRKLnYFHHzEDGc5znnoR6EdNTGijdlZ0VivQkZxQBzuoveOLQNdTROYEztYoCxBDE4xkg7cDIA+maiuZrg2NqZLm6RR5qq6udzjIClguMkc9T2zk9D1DxpKMSIrjrhhmkeGKUASRo+Om5QcUAchZm8aIrcX1zsM8QLCc5ClWzznjtn6e1TXayRG6+yajeSKYcjdMW2HzVHBz6Z/A+9dR9nhCFBDHsJyV2jGaFt4UDBYYwGGCAo5oAwrWJodZt/L1G5niZmGx596lRGOTzwd2e35Y5K3Ut4Y23JDGreqqAaKAJKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA/9k=","Enable":true},{"@type":"MOD.Core.CanvasGroupComponent","BlocksRaycasts":true,"GroupAlpha":1.0,"Interactable":true,"Enable":true}],"@version":1}"UMOD.Core.UITransformComponent,MOD.Core.UIGroupComponent,MOD.Core.CanvasGroupComponent?
$7af9e538-1713-49f7-a83e-711c0f4b4a3c/ui/ToastGroup/Toast_message?{"name":"Toast_message","path":"/ui/ToastGroup/Toast_message","nameEditable":true,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"///","revision":3,"origin":{"type":"Model","entry_id":"UISprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":3,"AnchorsMax":{"x":0.5,"y":1.0},"AnchorsMin":{"x":0.5,"y":1.0},"MobileOnly":false,"OffsetMax":{"x":179.03775,"y":-285.227936},"OffsetMin":{"x":-222.539764,"y":-376.143646},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":401.5775,"y":90.91569},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":-21.751,"y":-330.6858},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":-21.751,"y":209.314209,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"7d614552ba7843049bb48ebd4509fb8f"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"StartFrameIndex":0,"Color":{"r":1.0,"g":1.0,"b":1.0,"a":0.6},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":false,"Type":1,"Enable":true},{"@type":"MOD.Core.TextComponent","Alignment":4,"Bold":true,"DropShadow":false,"Font":0,"FontColor":{"r":1.0,"g":0.0,"b":0.0,"a":1.0},"FontSize":35,"OutlineColor":{"r":0.7,"g":0.7,"b":0.7,"a":1.0},"OutlineDistance":{"x":1.0,"y":-1.0},"Overflow":0,"Padding":{"left":50,"right":50,"top":20,"bottom":20},"SizeFit":true,"Text":"강렬한 테스트 문구!!!","UseOutLine":false,"Enable":true},{"@type":"MOD.Core.CanvasGroupComponent","BlocksRaycasts":true,"GroupAlpha":1.0,"Interactable":true,"Enable":true}],"@version":1}"vMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent,MOD.Core.CanvasGroupComponentX??
 0d521dbc87e745a3b9c5596c92581826 49894c1087b7415daa3cc5d1c9929a60)ui://4e44e5e0-398e-4ed4-9834-e7c7d2deaa23"x-mod/ui2???!
$4e44e5e0-398e-4ed4-9834-e7c7d2deaa23/ui/DefaultGroup? {"name":"DefaultGroup","path":"/ui/DefaultGroup","nameEditable":true,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"//","revision":6,"origin":{"type":"Model","entry_id":"UIGroup","sub_entity_id":null},"modelId":"uigroup","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":15,"AnchorsMax":{"x":1.0,"y":1.0},"AnchorsMin":{"x":0.0,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":3.81469727E-06,"y":0.0},"OffsetMin":{"x":3.81469727E-06,"y":0.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":1021.579,"y":1080.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":3.81469727E-06,"y":0.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":0.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.UIGroupComponent","DefaultShow":true,"GroupOrder":0,"GroupType":1,"Thumbnail":"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","Enable":true},{"@type":"MOD.Core.CanvasGroupComponent","BlocksRaycasts":true,"GroupAlpha":1.0,"Interactable":true,"Enable":true}],"@version":1}"UMOD.Core.UITransformComponent,MOD.Core.UIGroupComponent,MOD.Core.CanvasGroupComponent?
$fa94fb5f-6621-46c4-b460-ee5cdf690a41/ui/DefaultGroup/Button_Attack?{"name":"Button_Attack","path":"/ui/DefaultGroup/Button_Attack","nameEditable":true,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"///","revision":1,"origin":{"type":"Model","entry_id":"UIButton","sub_entity_id":null},"modelId":"uibutton","@components":[{"@type":"MOD.Core.UITransformComponent","ActivePlatform":2,"AlignmentOption":8,"AnchorsMax":{"x":1.0,"y":0.0},"AnchorsMin":{"x":1.0,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":-72.8999939,"y":434.0},"OffsetMin":{"x":-276.9,"y":230.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":204.0,"y":204.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":-174.9,"y":332.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":335.8895,"y":-208.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"cd0560c4fc7f3b14994b90a502f00a21"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"StartFrameIndex":0,"Color":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":0,"Enable":true},{"@type":"MOD.Core.ButtonComponent","Colors":{"NormalColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"HighlightedColor":{"r":0.9607843,"g":0.9607843,"b":0.9607843,"a":1.0},"PressedColor":{"r":0.784313738,"g":0.784313738,"b":0.784313738,"a":1.0},"SelectedColor":{"r":0.9607843,"g":0.9607843,"b":0.9607843,"a":1.0},"DisabledColor":{"r":0.784313738,"g":0.784313738,"b":0.784313738,"a":0.5019608},"ColorMultiplier":1.0,"FadeDuration":0.1},"ImageRUIDs":{"HighlightedSprite":null,"PressedSprite":null,"SelectedSprite":null,"DisabledSprite":null},"KeyCode":306,"Transition":1,"Enable":true}],"@version":1}"ZMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent?
$23d2e53d-1aa4-405d-b45c-28f4b423f6b9'/ui/DefaultGroup/Button_Attack/UISprite?{"name":"UISprite","path":"/ui/DefaultGroup/Button_Attack/UISprite","nameEditable":true,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"////","revision":1,"origin":{"type":"Model","entry_id":"UISprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":0,"AnchorsMax":{"x":0.5,"y":0.5},"AnchorsMin":{"x":0.5,"y":0.5},"MobileOnly":false,"OffsetMax":{"x":52.0,"y":53.5},"OffsetMin":{"x":-56.0,"y":-55.5},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":108.0,"y":109.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":-2.0,"y":-1.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":-2.0,"y":-1.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"cc55ed79f099cc94fae152e754984ddd"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"StartFrameIndex":0,"Color":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":0,"Enable":true}],"@version":1}"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent?
$dc7d2a19-79a5-4f9c-9d22-a1c286cce9cf/ui/DefaultGroup/Button_Jump?{"name":"Button_Jump","path":"/ui/DefaultGroup/Button_Jump","nameEditable":true,"enable":true,"visible":true,"displayOrder":1,"pathConstraints":"///","revision":1,"origin":{"type":"Model","entry_id":"UIButton","sub_entity_id":null},"modelId":"uibutton","@components":[{"@type":"MOD.Core.UITransformComponent","ActivePlatform":2,"AlignmentOption":8,"AnchorsMax":{"x":1.0,"y":0.0},"AnchorsMin":{"x":1.0,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":-290.0,"y":295.57},"OffsetMin":{"x":-494.0,"y":91.57001},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":204.0,"y":204.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":-392.0,"y":193.57},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":118.78949,"y":-346.43,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"cd0560c4fc7f3b14994b90a502f00a21"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"StartFrameIndex":0,"Color":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":0,"Enable":true},{"@type":"MOD.Core.ButtonComponent","Colors":{"NormalColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"HighlightedColor":{"r":0.9607843,"g":0.9607843,"b":0.9607843,"a":1.0},"PressedColor":{"r":0.784313738,"g":0.784313738,"b":0.784313738,"a":1.0},"SelectedColor":{"r":0.9607843,"g":0.9607843,"b":0.9607843,"a":1.0},"DisabledColor":{"r":0.784313738,"g":0.784313738,"b":0.784313738,"a":0.5019608},"ColorMultiplier":1.0,"FadeDuration":0.1},"ImageRUIDs":{"HighlightedSprite":null,"PressedSprite":null,"SelectedSprite":null,"DisabledSprite":null},"KeyCode":32,"Transition":1,"Enable":true}],"@version":1}"ZMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent?
$c4011c6f-4b97-4015-96d3-d155c2fdc709%/ui/DefaultGroup/Button_Jump/UISprite?{"name":"UISprite","path":"/ui/DefaultGroup/Button_Jump/UISprite","nameEditable":true,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"////","revision":1,"origin":{"type":"Model","entry_id":"UISprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":0,"AnchorsMax":{"x":0.5,"y":0.5},"AnchorsMin":{"x":0.5,"y":0.5},"MobileOnly":false,"OffsetMax":{"x":71.5,"y":68.0},"OffsetMin":{"x":-81.5,"y":-66.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":153.0,"y":134.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":-5.0,"y":1.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":-5.0,"y":1.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"b44742a7c3de2604ba4999a54ae0b4ed"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"StartFrameIndex":0,"Color":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":0,"Enable":true}],"@version":1}"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent?
$8609446b-2fd4-4f06-a2e7-734fcd76d2aa/ui/DefaultGroup/UIJoystick?{"name":"UIJoystick","path":"/ui/DefaultGroup/UIJoystick","nameEditable":true,"enable":true,"visible":true,"displayOrder":2,"pathConstraints":"///","revision":2,"origin":{"type":"Model","entry_id":"UISprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","ActivePlatform":2,"AlignmentOption":7,"AnchorsMax":{"x":0.0,"y":0.0},"AnchorsMin":{"x":0.0,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":410.0,"y":330.0001},"OffsetMin":{"x":210.0,"y":129.999908},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":200.0,"y":200.0002},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":310.0,"y":230.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":-200.78949,"y":-310.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":""},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"StartFrameIndex":0,"Color":{"r":0.0,"g":0.0,"b":0.0,"a":0.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":false,"Type":1,"Enable":true},{"@type":"MOD.Core.JoystickComponent","DynamicStick":true,"Enable":true}],"@version":1}"\MOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.JoystickComponent?
$7502b098-b1d4-4d4e-b138-0a1bd57538bf/ui/DefaultGroup/UIChat?{"name":"UIChat","path":"/ui/DefaultGroup/UIChat","nameEditable":true,"enable":true,"visible":true,"displayOrder":3,"pathConstraints":"///","revision":2,"origin":{"type":"Model","entry_id":"UIEmpty","sub_entity_id":null},"modelId":"uiempty","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":4,"AnchorsMax":{"x":0.0,"y":1.0},"AnchorsMin":{"x":0.0,"y":1.0},"MobileOnly":false,"OffsetMax":{"x":717.8341,"y":-32.4276428},"OffsetMin":{"x":20.1109619,"y":-471.1826},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":697.723145,"y":438.754944},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":368.972534,"y":-251.805115},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":-141.816956,"y":288.1949,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":""},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"StartFrameIndex":0,"Color":{"r":0.0,"g":0.0,"b":0.0,"a":0.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":false,"Type":1,"Enable":true},{"@type":"MOD.Core.ChatComponent","Expand":true,"UseChatBalloon":true,"Enable":true}],"@version":1}"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ChatComponent?

$cf0110d3-1aa1-4ad6-8716-caba683810a5/ui/DefaultGroup/UIText?	{"name":"UIText","path":"/ui/DefaultGroup/UIText","nameEditable":true,"enable":true,"visible":true,"displayOrder":4,"pathConstraints":"///","revision":4,"origin":{"type":"Model","entry_id":"uitext","sub_entity_id":null},"modelId":"uitext","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":0,"AnchorsMax":{"x":0.5,"y":0.5},"AnchorsMin":{"x":0.5,"y":0.5},"MobileOnly":false,"OffsetMax":{"x":188.9021,"y":527.3072},"OffsetMin":{"x":-111.0979,"y":451.2474},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":300.0,"y":76.05981},"UIMode":1,"UIVersion":2,"anchoredPosition":{"x":38.9021,"y":489.2773},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":38.9021,"y":489.2773,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","ImageRUID":{"DataId":"7cb85037dfad28e4d8d8b4c966cfd88b"},"Color":{"r":0.0,"g":0.0,"b":0.0,"a":0.0},"Enable":true},{"@type":"MOD.Core.TextComponent","Font":1,"FontColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"FontSize":20,"OutlineDistance":{"x":1.0,"y":-1.0},"Text":"BGM : 검은마법사 새로운 시작      (new beginning not the end)","Enable":true}],"@version":1}"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent?
$ce25a1ba-094d-45c9-bc19-501d08c918f3/ui/DefaultGroup/UIMyInfo?{"name":"UIMyInfo","path":"/ui/DefaultGroup/UIMyInfo","nameEditable":true,"enable":true,"visible":true,"displayOrder":5,"pathConstraints":"///","revision":0,"origin":{"type":"Model","entry_id":"UISprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":6,"AnchorsMax":{"x":0.5,"y":0.0},"AnchorsMin":{"x":0.5,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":202.0,"y":120.0},"OffsetMin":{"x":-202.0,"y":40.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":404.0,"y":80.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":0.0,"y":80.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":-460.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":""},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":1.0,"g":1.0,"b":1.0,"a":0.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true},{"@type":"script.UIMyInfoSimple","Enable":true,"myName":{"IsRelative":false,"ComponentId":":TextComponent"},"myHP":{"IsRelative":false,"ComponentId":":TextComponent"}}],"@version":1}"WMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,script.UIMyInfoSimple?
$ca00217a-4593-4769-9843-fe135d33d3df%/ui/DefaultGroup/UIMyInfo/Bg_statinfo?{"name":"Bg_statinfo","path":"/ui/DefaultGroup/UIMyInfo/Bg_statinfo","nameEditable":true,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"////","revision":0,"origin":{"type":"Model","entry_id":"UISprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":15,"AnchorsMax":{"x":1.0,"y":1.0},"AnchorsMin":{"x":0.0,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":-9.536743E-07,"y":0.0},"OffsetMin":{"x":-9.536743E-07,"y":0.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":404.0,"y":80.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":-9.536743E-07,"y":0.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":0.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"53405dae6bb32dd45b3d2e541dc4d1fd"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true}],"@version":1}"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent?
$80d328b2-d21a-4b59-be9c-48b3efa28419#/ui/DefaultGroup/UIMyInfo/Text_name?{"name":"Text_name","path":"/ui/DefaultGroup/UIMyInfo/Text_name","nameEditable":true,"enable":true,"visible":true,"displayOrder":1,"pathConstraints":"////","revision":0,"origin":{"type":"Model","entry_id":"UIText","sub_entity_id":null},"modelId":"uitext","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":15,"AnchorsMax":{"x":1.0,"y":1.0},"AnchorsMin":{"x":0.0,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":-10.0,"y":-1.0},"OffsetMin":{"x":10.0,"y":37.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":384.0,"y":42.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":0.0,"y":18.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":18.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"3e9d52ed52d64794bbd6f72bab8ee3d9"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"DropShadow":false,"DropShadowAngle":90.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":2.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":2.0,"RaycastTarget":true,"Type":1,"Enable":true},{"@type":"MOD.Core.TextComponent","Alignment":4,"Bold":false,"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"Font":0,"FontColor":{"r":0.9254902,"g":0.929411769,"b":0.929411769,"a":1.0},"FontSize":27,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.2},"OutlineDistance":{"x":2.0,"y":-2.0},"OutlineWidth":2.0,"Overflow":2,"Padding":{"left":0,"right":0,"top":0,"bottom":0},"SizeFit":false,"Text":"닉네임여섯자","UseOutLine":true,"Enable":true}],"@version":1}"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent?
$42aa3cb5-2c8e-4078-8637-a3967781813b /ui/DefaultGroup/UIMyInfo/HP_bar?{"name":"HP_bar","path":"/ui/DefaultGroup/UIMyInfo/HP_bar","nameEditable":true,"enable":true,"visible":true,"displayOrder":2,"pathConstraints":"////","revision":0,"origin":{"type":"Model","entry_id":"UIEmpty","sub_entity_id":null},"modelId":"uiempty","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":0,"AnchorsMax":{"x":0.5,"y":0.5},"AnchorsMin":{"x":0.5,"y":0.5},"MobileOnly":false,"OffsetMax":{"x":191.0,"y":-3.0},"OffsetMin":{"x":-191.0,"y":-29.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":382.0,"y":26.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":0.0,"y":-16.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":-16.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"55dd6a9cd4a06a240920a17e34568148"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"DropShadow":false,"DropShadowAngle":90.0,"DropShadowColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"DropShadowDistance":20.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true},{"@type":"MOD.Core.SliderComponent","Direction":0,"FillRectColor":{"r":0.972549,"g":0.321568638,"b":0.321568638,"a":1.0},"FillRectImageRUID":{"DataId":"cec4bf6a03860ae4e9882ac5a89cf721"},"FillRectPadding":{"left":3,"right":3,"top":3,"bottom":3},"HandleAreaPadding":{"left":0,"right":0,"top":0,"bottom":0},"HandleColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"HandleSize":{"x":50.0,"y":50.0},"MaxValue":1.0,"MinValue":0.0,"UseHandle":false,"UseIntegerValue":false,"Value":1.0,"Enable":true}],"@version":1}"ZMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.SliderComponentX?q
 7c393d26727443c78687e7e10dc32086 49894c1087b7415daa3cc5d1c9929a60)ui://fb7a3b06-7026-4590-8efe-bb33416dd8f9"x-mod/ui2?p?	
$fb7a3b06-7026-4590-8efe-bb33416dd8f9/ui/PopupGroup?{"name":"PopupGroup","path":"/ui/PopupGroup","nameEditable":true,"enable":true,"visible":true,"displayOrder":1,"pathConstraints":"//","revision":1,"origin":{"type":"Model","entry_id":"UIGroup","sub_entity_id":null},"modelId":"uigroup","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":15,"AnchorsMax":{"x":1.0,"y":1.0},"AnchorsMin":{"x":0.0,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":-1.52587891E-05,"y":0.0},"OffsetMin":{"x":-1.52587891E-05,"y":0.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":1021.579,"y":1080.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":-1.52587891E-05,"y":0.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":0.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.UIGroupComponent","DefaultShow":false,"GroupOrder":1,"GroupType":1,"Thumbnail":null,"Enable":true},{"@type":"MOD.Core.CanvasGroupComponent","BlocksRaycasts":true,"GroupAlpha":1.0,"Interactable":true,"Enable":true}],"@version":1}"UMOD.Core.UITransformComponent,MOD.Core.UIGroupComponent,MOD.Core.CanvasGroupComponent?
$e25e8e41-5cb9-4fae-8dc0-ea7dca85a91d/ui/PopupGroup/PopupBack?{"name":"PopupBack","path":"/ui/PopupGroup/PopupBack","nameEditable":true,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"///","revision":1,"origin":{"type":"Model","entry_id":"UISprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":15,"AnchorsMax":{"x":1.0,"y":1.0},"AnchorsMin":{"x":0.0,"y":0.0},"MobileOnly":false,"OffsetMax":{"x":220.724091,"y":200.0},"OffsetMin":{"x":-220.724152,"y":-200.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":1463.02722,"y":1480.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":-2.28881836E-05,"y":0.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":-3.05175781E-05,"y":0.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":""},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":0.0,"g":0.0,"b":0.0,"a":0.600646734},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true}],"@version":1}"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent?
$aa954759-0e39-430f-85fa-80bf2e5fe31d#/ui/PopupGroup/PopupBack/PopupPanel?{"name":"PopupPanel","path":"/ui/PopupGroup/PopupBack/PopupPanel","nameEditable":true,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"////","revision":1,"origin":{"type":"Model","entry_id":"UISprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":0,"AnchorsMax":{"x":0.5,"y":0.5},"AnchorsMin":{"x":0.5,"y":0.5},"MobileOnly":false,"OffsetMax":{"x":490.5,"y":254.0},"OffsetMin":{"x":-490.5,"y":-254.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":981.0,"y":508.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":0.0,"y":0.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":0.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"499c70eab41cfeb418a3ad9f87fd0285"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true}],"@version":1}"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent?
$3606e39d-32de-427e-8d23-b38af810a3b40/ui/PopupGroup/PopupBack/PopupPanel/PopupMessage?{"name":"PopupMessage","path":"/ui/PopupGroup/PopupBack/PopupPanel/PopupMessage","nameEditable":true,"enable":true,"visible":true,"displayOrder":0,"pathConstraints":"/////","revision":1,"origin":{"type":"Model","entry_id":"UIText","sub_entity_id":null},"modelId":"uitext","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":0,"AnchorsMax":{"x":0.5,"y":0.5},"AnchorsMin":{"x":0.5,"y":0.5},"MobileOnly":false,"OffsetMax":{"x":389.999969,"y":216.440643},"OffsetMin":{"x":-390.000031,"y":-43.5593567},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":780.0,"y":260.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":-2.11927636E-05,"y":86.44064},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":-2.11927636E-05,"y":86.44064,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":""},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":1.0,"g":1.0,"b":1.0,"a":0.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true},{"@type":"MOD.Core.TextComponent","Alignment":4,"Bold":false,"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"Font":0,"FontColor":{"r":0.4509804,"g":0.4509804,"b":0.4509804,"a":1.0},"FontSize":36,"OutlineColor":{"r":0.698039234,"g":0.698039234,"b":0.698039234,"a":1.0},"OutlineDistance":{"x":1.0,"y":-1.0},"Overflow":0,"Padding":{"left":0,"right":0,"top":0,"bottom":0},"SizeFit":false,"Text":"팝업 메시지","UseOutLine":false,"Enable":true}],"@version":1}"XMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.TextComponent?
$94a274e4-4111-40f1-924d-c95a3a1f14d5./ui/PopupGroup/PopupBack/PopupPanel/PopupBtnOK?{"name":"PopupBtnOK","path":"/ui/PopupGroup/PopupBack/PopupPanel/PopupBtnOK","nameEditable":true,"enable":true,"visible":true,"displayOrder":1,"pathConstraints":"/////","revision":1,"origin":{"type":"Model","entry_id":"UIButton","sub_entity_id":null},"modelId":"uibutton","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":0,"AnchorsMax":{"x":0.5,"y":0.5},"AnchorsMin":{"x":0.5,"y":0.5},"MobileOnly":false,"OffsetMax":{"x":-12.0,"y":-81.0},"OffsetMin":{"x":-420.0,"y":-197.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":408.0,"y":116.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":-216.0,"y":-139.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":-216.0,"y":-139.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"83b7e4bf01f5ba14abf3adaa68cb3ad3"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":0.3019608,"g":0.3019608,"b":0.3019608,"a":1.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true},{"@type":"MOD.Core.ButtonComponent","Colors":{"NormalColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"HighlightedColor":{"r":0.9607843,"g":0.9607843,"b":0.9607843,"a":1.0},"PressedColor":{"r":0.784313738,"g":0.784313738,"b":0.784313738,"a":1.0},"SelectedColor":{"r":0.9607843,"g":0.9607843,"b":0.9607843,"a":1.0},"DisabledColor":{"r":0.784313738,"g":0.784313738,"b":0.784313738,"a":0.5019608},"ColorMultiplier":1.0,"FadeDuration":0.1},"ImageRUIDs":{"HighlightedSprite":null,"PressedSprite":null,"SelectedSprite":null,"DisabledSprite":null},"KeyCode":0,"Transition":1,"Enable":true},{"@type":"MOD.Core.TextComponent","Alignment":4,"Bold":false,"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"Font":0,"FontColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"FontSize":38,"OutlineColor":{"r":0.7,"g":0.7,"b":0.7,"a":1.0},"OutlineDistance":{"x":1.0,"y":-1.0},"Overflow":0,"Padding":{"left":0,"right":0,"top":0,"bottom":0},"SizeFit":false,"Text":"확인","UseOutLine":false,"Enable":true}],"@version":1}"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent?
$0f5de49b-2adc-409a-816d-15aa43df8e0d2/ui/PopupGroup/PopupBack/PopupPanel/PopupBtnCancel?{"name":"PopupBtnCancel","path":"/ui/PopupGroup/PopupBack/PopupPanel/PopupBtnCancel","nameEditable":true,"enable":true,"visible":true,"displayOrder":2,"pathConstraints":"/////","revision":1,"origin":{"type":"Model","entry_id":"UIButton","sub_entity_id":null},"modelId":"uibutton","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":0,"AnchorsMax":{"x":0.5,"y":0.5},"AnchorsMin":{"x":0.5,"y":0.5},"MobileOnly":false,"OffsetMax":{"x":420.0,"y":-81.0},"OffsetMin":{"x":12.0,"y":-197.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":408.0,"y":116.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":216.0,"y":-139.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":216.0,"y":-139.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":"83b7e4bf01f5ba14abf3adaa68cb3ad3"},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":0.9254902,"g":0.9254902,"b":0.9254902,"a":1.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true},{"@type":"MOD.Core.ButtonComponent","Colors":{"NormalColor":{"r":1.0,"g":1.0,"b":1.0,"a":1.0},"HighlightedColor":{"r":0.9607843,"g":0.9607843,"b":0.9607843,"a":1.0},"PressedColor":{"r":0.784313738,"g":0.784313738,"b":0.784313738,"a":1.0},"SelectedColor":{"r":0.9607843,"g":0.9607843,"b":0.9607843,"a":1.0},"DisabledColor":{"r":0.784313738,"g":0.784313738,"b":0.784313738,"a":0.5019608},"ColorMultiplier":1.0,"FadeDuration":0.1},"ImageRUIDs":{"HighlightedSprite":null,"PressedSprite":null,"SelectedSprite":null,"DisabledSprite":null},"KeyCode":0,"Transition":1,"Enable":true},{"@type":"MOD.Core.TextComponent","Alignment":4,"Bold":false,"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"Font":0,"FontColor":{"r":0.3019608,"g":0.3019608,"b":0.3019608,"a":1.0},"FontSize":38,"OutlineColor":{"r":0.7,"g":0.7,"b":0.7,"a":1.0},"OutlineDistance":{"x":1.0,"y":-1.0},"Overflow":0,"Padding":{"left":0,"right":0,"top":0,"bottom":0},"SizeFit":false,"Text":"취소","UseOutLine":false,"Enable":true}],"@version":1}"qMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponent,MOD.Core.ButtonComponent,MOD.Core.TextComponent?
$d57e4ae3-8b17-4cbf-bc44-e7c737743117-/ui/PopupGroup/PopupBack/PopupPanel/deco_line?{"name":"deco_line","path":"/ui/PopupGroup/PopupBack/PopupPanel/deco_line","nameEditable":true,"enable":true,"visible":true,"displayOrder":3,"pathConstraints":"/////","revision":1,"origin":{"type":"Model","entry_id":"UISprite","sub_entity_id":null},"modelId":"uisprite","@components":[{"@type":"MOD.Core.UITransformComponent","AlignmentOption":10,"AnchorsMax":{"x":1.0,"y":0.5},"AnchorsMin":{"x":0.0,"y":0.5},"MobileOnly":false,"OffsetMax":{"x":-18.0,"y":-44.0},"OffsetMin":{"x":18.0,"y":-46.0},"Pivot":{"x":0.5,"y":0.5},"RectSize":{"x":945.0,"y":2.0},"UIMode":1,"UIScale":{"x":1.0,"y":1.0,"z":1.0},"UIVersion":2,"anchoredPosition":{"x":0.0,"y":-45.0},"Rotation":{"x":0.0,"y":0.0,"z":0.0},"Position":{"x":0.0,"y":-45.0,"z":0.0},"QuaternionRotation":{"x":0.0,"y":0.0,"z":0.0,"w":1.0},"Scale":{"x":1.0,"y":1.0,"z":1.0},"ZRotation":0.0,"Enable":true},{"@type":"MOD.Core.SpriteGUIRendererComponent","AnimClipPlayType":0,"EndFrameIndex":2147483647,"ImageRUID":{"DataId":""},"LocalPosition":{"x":0.0,"y":0.0},"LocalScale":{"x":1.0,"y":1.0},"PlayRate":1.0,"PreserveSprite":0,"StartFrameIndex":0,"Color":{"r":0.9254902,"g":0.9254902,"b":0.9254902,"a":1.0},"DropShadow":false,"DropShadowAngle":30.0,"DropShadowColor":{"r":0.0,"g":0.0,"b":0.0,"a":0.72},"DropShadowDistance":32.0,"FillAmount":1.0,"FillCenter":true,"FillClockWise":true,"FillMethod":0,"FillOrigin":0,"FlipX":false,"FlipY":false,"FrameColumn":1,"FrameRate":0,"FrameRow":1,"Outline":false,"OutlineColor":{"r":0.0,"g":0.0,"b":0.0,"a":1.0},"OutlineWidth":3.0,"RaycastTarget":true,"Type":1,"Enable":true}],"@version":1}"AMOD.Core.UITransformComponent,MOD.Core.SpriteGUIRendererComponentX?
 0d85d5749ef64e3a8aed089c8ca06b36 49894c1087b7415daa3cc5d1c9929a602userdataset://541574a6-da68-4fc6-94cd-7528c8e578bd"x-mod/userdataset2??{
    "name": "catnpctalk",
    "id": "541574a6-da68-4fc6-94cd-7528c8e578bd",
    "serveronly": false,
    "columns": [
      "name",
      "portrait",
      "text"
    ],
    "datas": [
      {
        "portrait": "e249183d9a54401cab95383d57bc9e88",
        "text": "안녕?",
        "name": "탈리"
      },
      {
        "name": "player1",
        "portrait": "",
        "text": "으악! 고양이가 말을 한다!"
      },
      {
        "name": "탈리",
        "portrait": "e249183d9a54401cab95383d57bc9e88",
        "text": "고양이가 아니라 탈리야. 어쨌든, 마이홈이 궁금해서 이곳에 찾아온거지?"
      },
      {
        "name": "player1",
        "portrait": "",
        "text": "아니? 예쁜 포탈이 있길래 그냥 들어와봤어."
      },
      {
        "name": "탈리",
        "portrait": "e249183d9a54401cab95383d57bc9e88",
        "text": "흠흠..그렇군. 여긴 마이홈이라는 곳이야. 이 탈리님이 마이홈 사용법에 대해 알려주지."
      },
      {
        "name": "탈리",
        "portrait": "e249183d9a54401cab95383d57bc9e88",
        "text": "마이홈이란 말그대로 자신만의 집. 개인의 취향에 따라 맵을 꾸밀 수도 있고, 예쁜 코디를 대여할 수도 있지."
      },
      {
        "name": "탈리",
        "portrait": "e249183d9a54401cab95383d57bc9e88",
        "text": "그리고 사진사에게 부탁해서 사진을 찍어달라고 할 수도 있지. "
      },
      {
        "name": "player1",
        "portrait": "",
        "text": "우아..근사해..!"
      },
      {
        "name": "탈리",
        "portrait": "e249183d9a54401cab95383d57bc9e88",
        "text": "코디 아이템은 옆에 슈피겔만 영감에게 부탁하면 대여해 줄거야. 물론 공짜는 아니겠지? 참고로 여기서 대여한 코디는 여기 맵에서밖에 쓸 수 없으니까 주의해야해."
      },
      {
        "name": "탈리",
        "portrait": "e249183d9a54401cab95383d57bc9e88",
        "text": "자, 이제 우측 포탈을 통해 가면 예쁜 맵이 많이 있으니까 직접 경험해봐."
      }
    ]
  }X?
 ab7539c8d2454fbea6e79f9cb49f0ffa 49894c1087b7415daa3cc5d1c9929a602userdataset://d236fc2e-9139-4f5b-8ff5-60694c0af51a"x-mod/userdataset2??{
    "name": "NPCTalk",
    "id": "d236fc2e-9139-4f5b-8ff5-60694c0af51a",
    "serveronly": false,
    "columns": [
      "name",
      "portrait",
      "text"
    ],
    "datas": [
      {
        "portrait": "715638ceca4f430fa91794bdfa6de32c",
        "text": "오셨군요... 대적자님...",
        "name": "왕비 이피아"
      },
      {
        "name": "player1",
        "portrait": "",
        "text": "당신은... 이피아...?"
      },
      {
        "name": "왕비 이피아",
        "portrait": "715638ceca4f430fa91794bdfa6de32c",
        "text": "기다리고 있었어요. 모험가님."
      },
      {
        "name": "왕비 이피아",
        "portrait": "715638ceca4f430fa91794bdfa6de32c",
        "text": "검은 마법사의 수하들이 이 성을 침략하고 있어요."
      },
      {
        "name": "왕비 이피아",
        "portrait": "715638ceca4f430fa91794bdfa6de32c",
        "text": "갑작스럽지만 당신의 도움이 필요합니다."
      },
      {
        "name": "player1",
        "portrait": "",
        "text": "그게 무슨 소립니까? 이 성은 반 레온의 성이고, 그는 군단장입니다."
      },
      {
        "name": "player1",
        "portrait": "",
        "text": "그의 알현실이 있는 이 성을 검은 마법사가 공격하다니요?"
      },
      {
        "name": "왕비 이피아",
        "portrait": "715638ceca4f430fa91794bdfa6de32c",
        "text": "오래 전, 반 검은 마법사 동맹이 이 성을 찾아왔습니다."
      },
      {
        "name": "왕비 이피아",
        "portrait": "715638ceca4f430fa91794bdfa6de32c",
        "text": "그들은 반 레온에게 동맹을 요구했지만..."
      },
      {
        "name": "왕비 이피아",
        "portrait": "715638ceca4f430fa91794bdfa6de32c",
        "text": "반 레온은 동맹을 거절했어요... 왕국을 위해서..."
      },
      {
        "name": "player1",
        "portrait": "",
        "text": "...?"
      },
      {
        "name": "왕비 이피아",
        "portrait": "715638ceca4f430fa91794bdfa6de32c",
        "text": "그러자 동맹은 그를 검은 마법사의 수하로 규정하고 왕국을 공격했습니다..."
      },
      {
        "name": "왕비 이피아",
        "portrait": "715638ceca4f430fa91794bdfa6de32c",
        "text": "전쟁이 아닌 학살이였어요..."
      },
      {
        "name": "player1",
        "portrait": "",
        "text": "그렇다면... 한 순간에 모든 것을 잃은 반 레온은 진짜 검은 마법사의 수하가 되기를 선택했군요..."
      },
      {
        "name": "왕비 이피아",
        "portrait": "715638ceca4f430fa91794bdfa6de32c",
        "text": "확실히 대적자를 만난 검은 마법사는 현재 열세입니다."
      },
      {
        "name": "왕비 이피아",
        "portrait": "715638ceca4f430fa91794bdfa6de32c",
        "text": "이 상황에 아무런 움직임이 없는 반 레온을 검은 마법사는 의심하는 듯 합니다."
      },
      {
        "name": "왕비 이피아",
        "portrait": "715638ceca4f430fa91794bdfa6de32c",
        "text": "대적자님... 부디 그들을 막아주세요..."
      },
      {
        "name": "player1",
        "portrait": "",
        "text": "검은 마법사의 군단장을 위해 검은 마법사와 싸우라는 겁니까?"
      },
      {
        "name": "왕비 이피아",
        "portrait": "715638ceca4f430fa91794bdfa6de32c",
        "text": "반 레온이 아닌... 저희를 도와주세요..."
      },
      {
        "name": "왕비 이피아",
        "portrait": "715638ceca4f430fa91794bdfa6de32c",
        "text": "따스한 국왕 아래 미처 떠나지 못한 불쌍한 영혼들을 위해... 그들을 멈춰주세요..."
      }
    ]
  }X