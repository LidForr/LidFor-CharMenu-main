Config = Config or {}
local playerPed;

local playerOutFits={
    head={modelId=0,textureId=0},
    glasses={modelId=0,textureId=0},
    mask={modelId=0,textureId=0},
    tshirt={modelId=0,textureId=0},
    chest={modelId=0,textureId=0},
    body={modelId=0,textureId=0},
    backpack={modelId=0,textureId=0},
    rightArm={modelId=0,textureId=0},
    leftArm={modelId=0,textureId=0},
    pant={modelId=0,textureId=0},
    shoes={modelId=0,textureId=0},
}

RegisterNetEvent("lidfor:charectercontrol:headButton", function()
    print("deneme2")
    playerPed = PlayerPedId()
    local gender =GetPlayerGender()
    if GetPedPropIndex(playerPed, Config.componentId.head.male) ~= Config.ClothesId.head.maleModel or GetPedPropTextureIndex(playerPed, Config.componentId.head.male) ~= Config.ClothesId.head.maleTexture then
        if gender== "male" then
            PlayAnim("mp_masks@standard_car@ds@","put_on_mask")
            SetPedPropIndex(playerPed, Config.componentId.head.male, Config.ClothesId.head.maleModel, Config.ClothesId.head.maleTexture, 0)
        elseif gender== "female" then
            PlayAnim("mp_masks@standard_car@ds@","put_on_mask")
            SetPedPropIndex(playerPed, Config.componentId.head.female, Config.ClothesId.head.femaleModel, Config.ClothesId.head.femaleTexture, 0)
        end
    else
        if gender== "male" then 
            PlayAnim("mp_masks@standard_car@ds@","put_on_mask")
            SetPedPropIndex(playerPed, Config.componentId.head.male, playerOutFits.head.modelId, playerOutFits.head.textureId, 0)
        elseif gender== "female" then
            PlayAnim("mp_masks@standard_car@ds@","put_on_mask")
            SetPedPropIndex(playerPed, Config.componentId.head.female, playerOutFits.head.modelId, playerOutFits.head.textureId, 0)
        end
    end
end)
RegisterNetEvent("lidfor:charectercontrol:chestButton", function()
    playerPed = PlayerPedId()
    local gender =GetPlayerGender()
    if GetPedDrawableVariation(playerPed, Config.componentId.chest.male) ~= Config.ClothesId.chest.maleModel or GetPedTextureVariation(playerPed, Config.componentId.chest.male) ~= Config.ClothesId.chest.maleTexture then
        if gender== "male" then
            PlayAnim("clothingtie","try_tie_neutral_c")
            SetPedComponentVariation(playerPed, Config.componentId.chest.male, Config.ClothesId.chest.maleModel, Config.ClothesId.chest.maleTexture, 0)
            SetPedComponentVariation(playerPed, Config.componentId.body.male, Config.ClothesId.body.maleModel, Config.ClothesId.body.maleTexture, 0)
        elseif gender== "female" then
            PlayAnim("clothingtie","try_tie_neutral_c")
            SetPedComponentVariation(playerPed, Config.componentId.chest.female, Config.ClothesId.chest.femaleModel, Config.ClothesId.chest.femaleTexture, 0)
            SetPedComponentVariation(playerPed, Config.componentId.body.female, Config.ClothesId.body.femaleModel, Config.ClothesId.body.femaleTexture, 0)
        end
    else
        if gender== "male" then 
            PlayAnim("clothingtie","try_tie_neutral_c")
            SetPedComponentVariation(playerPed, Config.componentId.chest.male, playerOutFits.chest.modelId, playerOutFits.chest.textureId, 0)
            SetPedComponentVariation(playerPed, Config.componentId.body.male, playerOutFits.body.modelId, playerOutFits.body.textureId, 0)
        elseif gender== "female" then
            PlayAnim("clothingtie","try_tie_neutral_c")
            SetPedComponentVariation(playerPed, Config.componentId.chest.male, playerOutFits.chest.modelId, playerOutFits.chest.textureId, 0)
            SetPedComponentVariation(playerPed, Config.componentId.body.male, playerOutFits.body.modelId, playerOutFits.body.textureId, 0)
        end
    end

end)
RegisterNetEvent("lidfor:charectercontrol:glassesButton", function()
    playerPed = PlayerPedId()
    local gender =GetPlayerGender()
    if GetPedPropIndex(playerPed, Config.componentId.glasses.male) ~= Config.ClothesId.glasses.maleModel or GetPedPropTextureIndex(playerPed, Config.componentId.glasses.male) ~= Config.ClothesId.glasses.maleTexture then
        if gender== "male" then
            PlayAnim("clothingtie","try_tie_neutral_c")
            SetPedPropIndex(playerPed, Config.componentId.glasses.male, Config.ClothesId.glasses.maleModel, Config.ClothesId.glasses.maleTexture, 0)
        elseif gender== "female" then
            PlayAnim("clothingtie","try_tie_neutral_c")
            SetPedPropIndex(playerPed, Config.componentId.glasses.female, Config.ClothesId.glasses.femaleModel, Config.ClothesId.glasses.femaleTexture, 0)
        end
    else
        if gender== "male" then 
            PlayAnim("clothingtie","try_tie_neutral_c")
            SetPedPropIndex(playerPed, Config.componentId.glasses.male, playerOutFits.glasses.modelId, playerOutFits.glasses.textureId, 0)
        elseif gender== "female" then
            PlayAnim("clothingtie","try_tie_neutral_c")
            SetPedPropIndex(playerPed, Config.componentId.glasses.female, playerOutFits.glasses.modelId, playerOutFits.glasses.textureId, 0)
        end
    end
end)
RegisterNetEvent("lidfor:charectercontrol:maskButton", function()
    playerPed = PlayerPedId()
    local gender =GetPlayerGender()
    if GetPedDrawableVariation(playerPed, Config.componentId.mask.male) ~= Config.ClothesId.mask.maleModel or GetPedTextureVariation(playerPed, Config.componentId.mask.male) ~= Config.ClothesId.mask.maleTexture then
        if gender== "male" then
            PlayAnim("missfbi4","takeoff_mask")
            SetPedComponentVariation(playerPed, Config.componentId.mask.male, Config.ClothesId.mask.maleModel, Config.ClothesId.mask.maleTexture, 0)
        elseif gender== "female" then
            PlayAnim("missfbi4","takeoff_mask")
            SetPedComponentVariation(playerPed, Config.componentId.mask.female, Config.ClothesId.mask.femaleModel, Config.ClothesId.mask.femaleTexture, 0)
        end
    else
        if gender== "male" then 
            PlayAnim("missfbi4","takeoff_mask")
            SetPedComponentVariation(playerPed, Config.componentId.mask.male, playerOutFits.mask.modelId, playerOutFits.mask.textureId, 0)
        elseif gender== "female" then
            PlayAnim("missfbi4","takeoff_mask")
            SetPedComponentVariation(playerPed, Config.componentId.mask.male, playerOutFits.mask.modelId, playerOutFits.mask.textureId, 0)
        end
    end
end)
RegisterNetEvent("lidfor:charectercontrol:tshirtButton", function()
    playerPed = PlayerPedId()
    local gender =GetPlayerGender()
    if GetPedDrawableVariation(playerPed, Config.componentId.tshirt.male) ~= Config.ClothesId.tshirt.maleModel or GetPedTextureVariation(playerPed, Config.componentId.tshirt.male) ~= Config.ClothesId.tshirt.maleTexture then
        if gender== "male" then
            PlayAnim("clothingtie","try_tie_neutral_b")
            SetPedComponentVariation(playerPed, Config.componentId.tshirt.male, Config.ClothesId.tshirt.maleModel, Config.ClothesId.tshirt.maleTexture, 0)
        elseif gender== "female" then
            PlayAnim("clothingtie","try_tie_neutral_b")
            SetPedComponentVariation(playerPed, Config.componentId.tshirt.female, Config.ClothesId.tshirt.femaleModel, Config.ClothesId.tshirt.femaleTexture, 0)
        end
    else
        if gender== "male" then 
            PlayAnim("clothingtie","try_tie_neutral_b")
            SetPedComponentVariation(playerPed, Config.componentId.tshirt.male, playerOutFits.tshirt.modelId, playerOutFits.tshirt.textureId, 0)
        elseif gender== "female" then
            PlayAnim("clothingtie","try_tie_neutral_b")
            SetPedComponentVariation(playerPed, Config.componentId.tshirt.male, playerOutFits.tshirt.modelId, playerOutFits.tshirt.textureId, 0)
        end
    end
end)
RegisterNetEvent("lidfor:charectercontrol:backpackButton", function()
    playerPed = PlayerPedId()
    local gender =GetPlayerGender()
    if GetPedDrawableVariation(playerPed, Config.componentId.backpack.male) ~= Config.ClothesId.backpack.maleModel or GetPedTextureVariation(playerPed, Config.componentId.backpack.male) ~= Config.ClothesId.backpack.maleTexture then
        if gender== "male" then
            PlayAnim("anim@heists@ornate_bank@grab_cash_heels","intro")
            SetPedComponentVariation(playerPed, Config.componentId.backpack.male, Config.ClothesId.backpack.maleModel, Config.ClothesId.backpack.maleTexture, 0)
        elseif gender== "female" then
            PlayAnim("anim@heists@ornate_bank@grab_cash_heels","intro")
            SetPedComponentVariation(playerPed, Config.componentId.backpack.female, Config.ClothesId.backpack.femaleModel, Config.ClothesId.backpack.femaleTexture, 0)
        end
    else
        if gender== "male" then 
            PlayAnim("anim@heists@ornate_bank@grab_cash_heels","intro")
            SetPedComponentVariation(playerPed, Config.componentId.backpack.male, playerOutFits.backpack.modelId, playerOutFits.backpack.textureId, 0)
        elseif gender== "female" then
            PlayAnim("anim@heists@ornate_bank@grab_cash_heels","intro")
            SetPedComponentVariation(playerPed, Config.componentId.backpack.male, playerOutFits.backpack.modelId, playerOutFits.backpack.textureId, 0)
        end
    end
end)
RegisterNetEvent("lidfor:charectercontrol:rightArmButton", function()
    playerPed = PlayerPedId()
    local gender =GetPlayerGender()
    if GetPedPropIndex(playerPed, Config.componentId.rightArm.male) ~= Config.ClothesId.rightArm.maleModel or GetPedPropTextureIndex(playerPed, Config.componentId.rightArm.male) ~= Config.ClothesId.rightArm.maleTexture then
        if gender== "male" then
            PlayAnim("nmt_3_rcm-10","cs_nigel_dual-10")
            ClearPedProp(playerPed, Config.componentId.rightArm.male)
            --SetPedPropIndex(playerPed, Config.componentId.rightArm.male, Config.ClothesId.rightArm.maleModel, Config.ClothesId.rightArm.maleTexture, 0)
        elseif gender== "female" then
            PlayAnim("nmt_3_rcm-10","cs_nigel_dual-10")
            ClearPedProp(playerPed, Config.componentId.rightArm.male)
            --SetPedPropIndex(playerPed, Config.componentId.rightArm.female, Config.ClothesId.rightArm.femaleModel, Config.ClothesId.rightArm.femaleTexture, 0)
        end
    else
        if gender== "male" then 
            PlayAnim("nmt_3_rcm-10","cs_nigel_dual-10")
            SetPedPropIndex(playerPed, Config.componentId.rightArm.male, playerOutFits.rightArm.modelId, playerOutFits.rightArm.textureId, 0)
        elseif gender== "female" then
            PlayAnim("nmt_3_rcm-10","cs_nigel_dual-10")
            SetPedPropIndex(playerPed, Config.componentId.rightArm.female, playerOutFits.rightArm.modelId, playerOutFits.rightArm.textureId, 0)
        end
    end
end)

RegisterNetEvent("lidfor:charectercontrol:leftArmButton", function()
    playerPed = PlayerPedId()
    local gender =GetPlayerGender()
    if GetPedPropIndex(playerPed, Config.componentId.leftArm.male) ~= Config.ClothesId.leftArm.maleModel or GetPedPropTextureIndex(playerPed, Config.componentId.leftArm.male) ~= Config.ClothesId.leftArm.maleTexture then
        if gender== "male" then
            PlayAnim("nmt_3_rcm-10","cs_nigel_dual-10")
            ClearPedProp(playerPed, Config.componentId.leftArm.male)
            --SetPedPropIndex(playerPed, Config.componentId.leftArm.male, Config.ClothesId.leftArm.maleModel, Config.ClothesId.leftArm.maleTexture, 0)
        elseif gender== "female" then
            PlayAnim("nmt_3_rcm-10","cs_nigel_dual-10")
            ClearPedProp(playerPed, Config.componentId.leftArm.male)
            --SetPedPropIndex(playerPed, Config.componentId.leftArm.female, Config.ClothesId.leftArm.femaleModel, Config.ClothesId.leftArm.femaleTexture, 0)
        end
    else
        if gender== "male" then 
            PlayAnim("nmt_3_rcm-10","cs_nigel_dual-10")
            SetPedPropIndex(playerPed, Config.componentId.leftArm.male, playerOutFits.leftArm.modelId, playerOutFits.leftArm.textureId, 0)
        elseif gender== "female" then
            PlayAnim("nmt_3_rcm-10","cs_nigel_dual-10")
            SetPedPropIndex(playerPed, Config.componentId.leftArm.female, playerOutFits.leftArm.modelId, playerOutFits.leftArm.textureId, 0)
        end
    end
end)
RegisterNetEvent("lidfor:charectercontrol:pantButton", function()
    playerPed = PlayerPedId()
    local gender =GetPlayerGender()
    if GetPedDrawableVariation(playerPed, Config.componentId.pant.male) ~= Config.ClothesId.pant.maleModel or GetPedTextureVariation(playerPed, Config.componentId.pant.male) ~= Config.ClothesId.pant.maleTexture then
        if gender== "male" then
            PlayAnim("clothingtrousers","try_trousers_neutral_a")
            SetPedComponentVariation(playerPed, Config.componentId.pant.male, Config.ClothesId.pant.maleModel, Config.ClothesId.pant.maleTexture, 0)
        elseif gender== "female" then
            PlayAnim("clothingtrousers","try_trousers_neutral_a")
            SetPedComponentVariation(playerPed, Config.componentId.pant.female, Config.ClothesId.pant.femaleModel, Config.ClothesId.pant.femaleTexture, 0)
        end
    else
        if gender== "male" then 
            PlayAnim("clothingtrousers","try_trousers_neutral_a")
            SetPedComponentVariation(playerPed, Config.componentId.pant.male, playerOutFits.pant.modelId, playerOutFits.pant.textureId, 0)
        elseif gender== "female" then
            PlayAnim("clothingtrousers","try_trousers_neutral_a")
            SetPedComponentVariation(playerPed, Config.componentId.pant.male, playerOutFits.pant.modelId, playerOutFits.pant.textureId, 0)
        end
    end
end)
RegisterNetEvent("lidfor:charectercontrol:shoesButton", function()
    playerPed = PlayerPedId()
    local gender =GetPlayerGender()
    if GetPedDrawableVariation(playerPed, Config.componentId.shoes.male) ~= Config.ClothesId.shoes.maleModel or GetPedTextureVariation(playerPed, Config.componentId.shoes.male) ~= Config.ClothesId.shoes.maleTexture then
        if gender== "male" then
            PlayAnim("random@domestic","pickup_low")
            SetPedComponentVariation(playerPed, Config.componentId.shoes.male, Config.ClothesId.shoes.maleModel, Config.ClothesId.shoes.maleTexture, 0)
        elseif gender== "female" then
            PlayAnim("random@domestic","pickup_low")
            SetPedComponentVariation(playerPed, Config.componentId.shoes.female, Config.ClothesId.shoes.femaleModel, Config.ClothesId.shoes.femaleTexture, 0)
        end
    else
        if gender== "male" then 
            PlayAnim("random@domestic","pickup_low")
            SetPedComponentVariation(playerPed, Config.componentId.shoes.male, playerOutFits.shoes.modelId, playerOutFits.shoes.textureId, 0)
        elseif gender== "female" then
            PlayAnim("random@domestic","pickup_low")
            SetPedComponentVariation(playerPed, Config.componentId.shoes.male, playerOutFits.shoes.modelId, playerOutFits.shoes.textureId, 0)
        end
    end
end)

RegisterNetEvent("lidfor:charectercontrol:saveoutfits", function()
    playerPed = PlayerPedId()
    local gender =GetPlayerGender()
    if gender == "male" then
        if GetPedPropIndex(playerPed, Config.componentId.head.male) ~= Config.ClothesId.head.maleModel or GetPedPropTextureIndex(playerPed, Config.componentId.head.male) ~= Config.ClothesId.head.maleTexture then
            playerOutFits.head.modelId=GetPedPropIndex(playerPed, Config.componentId.head.male)
            playerOutFits.head.textureId=GetPedPropTextureIndex(playerPed, Config.componentId.head.male)
        end
        if GetPedPropIndex(playerPed, Config.componentId.glasses.male) ~= Config.ClothesId.glasses.maleModel or GetPedPropTextureIndex(playerPed, Config.componentId.glasses.male) ~= Config.ClothesId.glasses.maleTexture then
            playerOutFits.glasses.modelId=GetPedPropIndex(playerPed, Config.componentId.glasses.male)
            playerOutFits.glasses.textureId=GetPedPropTextureIndex(playerPed, Config.componentId.glasses.male)
        end
        if GetPedDrawableVariation(playerPed, Config.componentId.mask.male) ~= Config.ClothesId.mask.maleModel or GetPedTextureVariation(playerPed, Config.componentId.mask.male) ~= Config.ClothesId.mask.maleTexture then
            playerOutFits.mask.modelId=GetPedDrawableVariation(playerPed, Config.componentId.mask.male)
            playerOutFits.mask.textureId=GetPedTextureVariation(playerPed, Config.componentId.mask.male)
        end
        if GetPedDrawableVariation(playerPed, Config.componentId.tshirt.male) ~= Config.ClothesId.tshirt.maleModel or GetPedTextureVariation(playerPed, Config.componentId.tshirt.male) ~= Config.ClothesId.tshirt.maleTexture then
            playerOutFits.tshirt.modelId=GetPedDrawableVariation(playerPed, Config.componentId.tshirt.male)
            playerOutFits.tshirt.textureId=GetPedTextureVariation(playerPed, Config.componentId.tshirt.male)
        end
        if GetPedDrawableVariation(playerPed, Config.componentId.chest.male) ~= Config.ClothesId.chest.maleModel or GetPedTextureVariation(playerPed, Config.componentId.chest.male) ~= Config.ClothesId.chest.maleTexture then
            playerOutFits.chest.modelId=GetPedDrawableVariation(playerPed, Config.componentId.chest.male)
            playerOutFits.chest.textureId=GetPedTextureVariation(playerPed, Config.componentId.chest.male)
        end
        if GetPedDrawableVariation(playerPed, Config.componentId.body.male) ~= Config.ClothesId.body.maleModel or GetPedTextureVariation(playerPed, Config.componentId.body.male) ~= Config.ClothesId.body.maleTexture then
            playerOutFits.body.modelId=GetPedDrawableVariation(playerPed, Config.componentId.body.male)
            playerOutFits.body.textureId=GetPedTextureVariation(playerPed, Config.componentId.body.male)
        end
        if GetPedDrawableVariation(playerPed, Config.componentId.backpack.male) ~= Config.ClothesId.backpack.maleModel or GetPedTextureVariation(playerPed, Config.componentId.backpack.male) ~= Config.ClothesId.backpack.maleTexture then
            playerOutFits.backpack.modelId=GetPedDrawableVariation(playerPed, Config.componentId.backpack.male)
            playerOutFits.backpack.textureId=GetPedTextureVariation(playerPed, Config.componentId.backpack.male)
        end
        if GetPedPropIndex(playerPed, Config.componentId.rightArm.male) ~= Config.ClothesId.rightArm.maleModel or GetPedPropTextureIndex(playerPed, Config.componentId.rightArm.male) ~= Config.ClothesId.rightArm.maleTexture then
            playerOutFits.rightArm.modelId=GetPedPropIndex(playerPed, Config.componentId.rightArm.male)
            playerOutFits.rightArm.textureId=GetPedPropTextureIndex(playerPed, Config.componentId.rightArm.male)
        end
        if GetPedPropIndex(playerPed, Config.componentId.leftArm.male) ~= Config.ClothesId.leftArm.maleModel or GetPedPropTextureIndex(playerPed, Config.componentId.leftArm.male) ~= Config.ClothesId.leftArm.maleTexture then
            playerOutFits.leftArm.modelId=GetPedPropIndex(playerPed, Config.componentId.leftArm.male)
            playerOutFits.leftArm.textureId=GetPedPropTextureIndex(playerPed, Config.componentId.leftArm.male)
        end
        if GetPedDrawableVariation(playerPed, Config.componentId.pant.male) ~= Config.ClothesId.pant.maleModel or GetPedTextureVariation(playerPed, Config.componentId.pant.male) ~= Config.ClothesId.pant.maleTexture then
            playerOutFits.pant.modelId=GetPedDrawableVariation(playerPed, Config.componentId.pant.male)
            playerOutFits.pant.textureId=GetPedTextureVariation(playerPed, Config.componentId.pant.male)
        end
        if GetPedDrawableVariation(playerPed, Config.componentId.shoes.male) ~= Config.ClothesId.shoes.maleModel or GetPedTextureVariation(playerPed, Config.componentId.shoes.male) ~= Config.ClothesId.shoes.maleTexture then
            playerOutFits.shoes.modelId=GetPedDrawableVariation(playerPed, Config.componentId.shoes.male)
            playerOutFits.shoes.textureId=GetPedTextureVariation(playerPed, Config.componentId.shoes.male)
        end
    elseif gender == "female" then
        if GetPedPropIndex(playerPed, Config.componentId.head.female) ~= Config.ClothesId.head.femaleModel or GetPedPropTextureIndex(playerPed, Config.componentId.head.female) ~= Config.ClothesId.head.femaleTexture then
            playerOutFits.head.modelId=GetPedPropIndex(playerPed, Config.componentId.head.female)
            playerOutFits.head.textureId=GetPedPropTextureIndex(playerPed, Config.componentId.head.female)
        end
        if GetPedPropIndex(playerPed, Config.componentId.glasses.female) ~= Config.ClothesId.glasses.femaleModel or GetPedPropTextureIndex(playerPed, Config.componentId.glasses.female) ~= Config.ClothesId.glasses.femaleTexture then
            playerOutFits.glasses.modelId=GetPedPropIndex(playerPed, Config.componentId.glasses.female)
            playerOutFits.glasses.textureId=GetPedPropTextureIndex(playerPed, Config.componentId.glasses.female)
        end
        if GetPedDrawableVariation(playerPed, Config.componentId.mask.female) ~= Config.ClothesId.mask.femaleModel or GetPedTextureVariation(playerPed, Config.componentId.mask.female) ~= Config.ClothesId.mask.femaleTexture then
            playerOutFits.mask.modelId=GetPedDrawableVariation(playerPed, Config.componentId.mask.female)
            playerOutFits.mask.textureId=GetPedTextureVariation(playerPed, Config.componentId.mask.female)
        end
        if GetPedDrawableVariation(playerPed, Config.componentId.tshirt.female) ~= Config.ClothesId.tshirt.femaleModel or GetPedTextureVariation(playerPed, Config.componentId.tshirt.female) ~= Config.ClothesId.tshirt.femaleTexture then
            playerOutFits.tshirt.modelId=GetPedDrawableVariation(playerPed, Config.componentId.tshirt.female)
            playerOutFits.tshirt.textureId=GetPedTextureVariation(playerPed, Config.componentId.tshirt.female)
        end
        if GetPedDrawableVariation(playerPed, Config.componentId.chest.female) ~= Config.ClothesId.chest.femaleModel or GetPedTextureVariation(playerPed, Config.componentId.chest.female) ~= Config.ClothesId.chest.femaleTexture then
            playerOutFits.chest.modelId=GetPedDrawableVariation(playerPed, Config.componentId.chest.female)
            playerOutFits.chest.textureId=GetPedTextureVariation(playerPed, Config.componentId.chest.female)
        end
        if GetPedDrawableVariation(playerPed, Config.componentId.body.female) ~= Config.ClothesId.body.femaleModel or GetPedTextureVariation(playerPed, Config.componentId.body.female) ~= Config.ClothesId.body.femaleTexture then
            playerOutFits.body.modelId=GetPedDrawableVariation(playerPed, Config.componentId.body.female)
            playerOutFits.body.textureId=GetPedTextureVariation(playerPed, Config.componentId.body.female)
        end
        if GetPedDrawableVariation(playerPed, Config.componentId.backpack.female) ~= Config.ClothesId.backpack.femaleModel or GetPedTextureVariation(playerPed, Config.componentId.backpack.female) ~= Config.ClothesId.backpack.femaleTexture then
            playerOutFits.backpack.modelId=GetPedDrawableVariation(playerPed, Config.componentId.backpack.female)
            playerOutFits.backpack.textureId=GetPedTextureVariation(playerPed, Config.componentId.backpack.female)
        end
        if GetPedPropIndex(playerPed, Config.componentId.rightArm.female) ~= Config.ClothesId.rightArm.femaleModel or GetPedPropTextureIndex(playerPed, Config.componentId.rightArm.female) ~= Config.ClothesId.rightArm.femaleTexture then
            playerOutFits.rightArm.modelId=GetPedPropIndex(playerPed, Config.componentId.rightArm.female)
            playerOutFits.rightArm.textureId=GetPedPropTextureIndex(playerPed, Config.componentId.rightArm.female)
        end
        if GetPedPropIndex(playerPed, Config.componentId.leftArm.female) ~= Config.ClothesId.leftArm.femaleModel or GetPedPropTextureIndex(playerPed, Config.componentId.leftArm.female) ~= Config.ClothesId.leftArm.femaleTexture then
            playerOutFits.leftArm.modelId=GetPedPropIndex(playerPed, Config.componentId.leftArm.female)
            playerOutFits.leftArm.textureId=GetPedPropTextureIndex(playerPed, Config.componentId.leftArm.female)
        end
        if GetPedDrawableVariation(playerPed, Config.componentId.pant.female) ~= Config.ClothesId.pant.femaleModel or GetPedTextureVariation(playerPed, Config.componentId.pant.female) ~= Config.ClothesId.pant.femaleTexture then
            playerOutFits.pant.modelId=GetPedDrawableVariation(playerPed, Config.componentId.pant.female)
            playerOutFits.pant.textureId=GetPedTextureVariation(playerPed, Config.componentId.pant.female)
        end
        if GetPedDrawableVariation(playerPed, Config.componentId.shoes.female) ~= Config.ClothesId.shoes.femaleModel or GetPedTextureVariation(playerPed, Config.componentId.shoes.female) ~= Config.ClothesId.shoes.femaleTexture then
            playerOutFits.shoes.modelId=GetPedDrawableVariation(playerPed, Config.componentId.shoes.female)
            playerOutFits.shoes.textureId=GetPedTextureVariation(playerPed, Config.componentId.shoes.female)
        end
    end
end)

RegisterNetEvent("lidfor:charectercontrol:skinReloadButton", function()
    TriggerEvent("fivem-appearance:client:reloadSkin")
    TriggerEvent("lidfor:charectercontrol:saveoutfits")
end)

function GetPlayerGender()
    local model = GetEntityModel(playerPed)
    for _, maleModel in ipairs(Config.Models.maleModels) do
        if model == GetHashKey(maleModel) then
            return "male"
        end
    end

    for _, femaleModel in ipairs(Config.Models.femaleModels) do
        if model == GetHashKey(femaleModel) then
            return "female"
        end
    end
    return "unknown"
end

function PlayAnim(animDic,animName)
    RequestAnimDict(animDic)
    while not HasAnimDictLoaded(animDic) do
        Citizen.Wait(0)
    end
    TaskPlayAnim(playerPed, animDic, animName, 8.0, -8, -1, 49, 0, false, false, false)
    Citizen.Wait(1500)
    ClearPedTasks(playerPed)
end