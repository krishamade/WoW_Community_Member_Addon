local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, ...)
    local numberOfMembers, count, memberInfo, i;
    memberArray = {};
    allCommunityMembers = allCommunityMembers or {};
    i = 0;
    totalNumberOfMembers = 0;
    clubId = 396624561;
    
    info = C_Club.GetClubInfo(clubId);
    members = C_Club.GetClubMembers(clubId);
    for key,value in pairs(members) do 
       totalNumberOfMembers = totalNumberOfMembers + 1 
       for key,id in pairs(C_Club.GetMemberInfo(clubId, value)) do
          allCommunityMembers[i] = id
          i = i + 1 
       end
    end
end)
