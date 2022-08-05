BaseGameCharacterDetails = BaseGameCharacterDetails or {}

BaseGameCharacterDetails.OldDoProfessions = BaseGameCharacterDetails.DoProfessions

BaseGameCharacterDetails.DoProfessions = function()
    BaseGameCharacterDetails.OldDoProfessions()
    local electrician = ProfessionFactory.getProfession("electrician")
    electrician:getFreeRecipes():add("Build Generator")
    BaseGameCharacterDetails.SetProfessionDescription(electrician)
end

Events.OnGameBoot.Add(BaseGameCharacterDetails.DoProfessions);