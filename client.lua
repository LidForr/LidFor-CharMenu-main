local display = false
local focus =false

Config = {}

RegisterCommand('showmenu', function()
  --print(Config.componentId[1][1])
  display = not display
  SetUIDisplay(display)
  updatePosUIFunc(display)
  TriggerEvent("lidfor:charectercontrol:saveoutfits")
end, false)
RegisterNetEvent("lidfor:charectercontrol:openmenu", function()
  display = not display
  SetUIDisplay(display)
  updatePosUIFunc(display)
  TriggerEvent("lidfor:charectercontrol:saveoutfits")
end)

RegisterNUICallback('controlInteraction', function(resp, cb)
    local resp = resp.buttonId
    if resp == 'head' then
      TriggerEvent("lidfor:charectercontrol:headButton")
      print("deneme1")
    elseif resp == 'glasses' then
      TriggerEvent("lidfor:charectercontrol:glassesButton")
    elseif resp == 'mask' then
      TriggerEvent("lidfor:charectercontrol:maskButton")
    elseif resp == 'chest' then
      TriggerEvent("lidfor:charectercontrol:chestButton")
    elseif resp == 'tshirt' then 
      TriggerEvent("lidfor:charectercontrol:tshirtButton")
    elseif resp == 'backpack' then 
      TriggerEvent("lidfor:charectercontrol:backpackButton")
    elseif resp == 'rightarm' then
      TriggerEvent("lidfor:charectercontrol:rightArmButton")
    elseif resp == 'leftarm' then
      TriggerEvent("lidfor:charectercontrol:leftArmButton")
    elseif resp == 'pant' then
      TriggerEvent("lidfor:charectercontrol:pantButton")
    elseif resp == 'shoes' then 
      TriggerEvent("lidfor:charectercontrol:shoesButton")
    elseif resp == 'skinReload' then
      TriggerEvent("lidfor:charectercontrol:skinReloadButton")
    elseif resp == 'closeMenu' then
      focus=false;
      display= false
      SetUIDisplay(false)
    end
    cb('succes')
end)

RegisterNUICallback('disableFocus', function(resp, cb)
  Citizen.CreateThread(function()
    local resp = resp.mouseClick
    if resp=="mouseClick" then
      SetNuiFocus(false, false)
      Citizen.Wait(500)
      focus=false
    end
    cb('succes')
  end)
end)

function SetUIDisplay(bool)
    SetNuiFocus(bool, bool)
    focus=bool
    SendNUIMessage({
        type = "ui",
        display = bool
    })
end

function updatePosUIFunc()
  Citizen.CreateThread(function()
    while display do
        Citizen.Wait(1)
        local ped = PlayerPedId()
        local closeMenu = GetOffsetFromEntityInWorldCoords(ped, -0.35, 0.0, 1.1)
        local skinReload = GetOffsetFromEntityInWorldCoords(ped, 0.35, 0.0, 1.1)
        local headCoords = GetPedBoneCoords(ped, 0x796E, 0.4, 0.0, -0.08)
        local maskCoords = GetPedBoneCoords(ped, 0x796E, 0.1, 0.0, 0.15)
        local glassesCoords = GetPedBoneCoords(ped, 0x796E, 0.1, 0.0, -0.30)
        local chestCoords = GetPedBoneCoords(ped, 0x60F1, 0.20, 0.0, 0.25)
        local tshirtCoords = GetPedBoneCoords(ped, 0x60F1, 0.1, 0.0, -0.09)
        local backpackCoords = GetPedBoneCoords(ped, 0x60F1, 0.20, 0.0, -0.40)
        local rightArmCoords = GetPedBoneCoords(ped, 57005, -0.13, 0.0, 0.29)
        local leftArmCoords = GetPedBoneCoords(ped, 18905, -0.06, 0.0, -0.05)
        local pantCoords = GetPedBoneCoords(ped, 0xCA72, 0.2, 0.0, -0.05)
        local shoesCoords = GetOffsetFromEntityInWorldCoords(ped, 0.045, 0.0, -0.75)
        

        local a, closeMenuX, closeMenuY = GetScreenCoordFromWorldCoord(closeMenu.x, closeMenu.y, closeMenu.z)
        local a, skinReloadX, skinReloadY = GetScreenCoordFromWorldCoord(skinReload.x, skinReload.y, skinReload.z)
        local a, headX, headY = GetScreenCoordFromWorldCoord(headCoords.x, headCoords.y, headCoords.z)
        local a, maskX, maskY = GetScreenCoordFromWorldCoord(maskCoords.x, maskCoords.y, maskCoords.z)
        local a, glassesX, glassesY = GetScreenCoordFromWorldCoord(glassesCoords.x, glassesCoords.y, glassesCoords.z)
        local a, chestX, chestY = GetScreenCoordFromWorldCoord(chestCoords.x, chestCoords.y, chestCoords.z)
        local a, tshirtX, tshirtY = GetScreenCoordFromWorldCoord(tshirtCoords.x, tshirtCoords.y, tshirtCoords.z)
        local a, backpackX, backpackY = GetScreenCoordFromWorldCoord(backpackCoords.x, backpackCoords.y, backpackCoords.z)
        local a, rightArmX, rightArmY = GetScreenCoordFromWorldCoord(rightArmCoords.x, rightArmCoords.y, rightArmCoords.z)
        local a, leftArmX, leftArmY = GetScreenCoordFromWorldCoord(leftArmCoords.x, leftArmCoords.y, leftArmCoords.z)
        local a, pantX, pantY = GetScreenCoordFromWorldCoord(pantCoords.x, pantCoords.y, pantCoords.z)
        local a, shoesX, shoesY = GetScreenCoordFromWorldCoord(shoesCoords.x, shoesCoords.y, shoesCoords.z)

        SendNUIMessage({
            type = "updatePosUI",
            coords = {
              closeMenu = { x = closeMenuX, y = closeMenuY },
              skinReload = { x = skinReloadX, y = skinReloadY },
              head = { x = headX, y = headY },
              mask = { x = maskX, y = maskY },
              glasses = { x = glassesX, y = glassesY },
              tshirt = { x = tshirtX, y = tshirtY },
              backpack = { x = backpackX, y = backpackY },
              chest = { x = chestX, y = chestY },
              rightArm = { x = rightArmX, y = rightArmY },
              leftArm = { x = leftArmX, y = leftArmY },
              pant = { x = pantX, y = pantY },
              shoes = { x = shoesX, y = shoesY }
            }
        })
        if not focus then 
          if IsControlPressed(0,25) then 
            SetNuiFocus(display, display)
            focus=true
          end
        end
    end
  end)
end

