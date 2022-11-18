local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, ...)
    local numberOfMembers, count, i;
    memberArray = {};
    allCommunityMembers = {};
    allCommunityMembersData = {};
    i = 0;
    totalNumberOfMembers = 0;
    clubId = 396624561;
    
    info = C_Club.GetClubInfo(clubId);
    members = C_Club.GetClubMembers(clubId);
    
    for key,value in pairs(members) do 
       memberArray[key] = value
    end
    
    for key,value in pairs(memberArray) do
       allCommunityMembers[i] = C_Club.GetMemberInfo(clubId, value)
       i = i + 1 
    end
    
    for key,value in pairs(allCommunityMembers) do
       print(key,value)
    end
end)
