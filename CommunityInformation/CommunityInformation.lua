local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(self, event, ...)
   local numberOfMembers, count, i;
   memberArray = {};
   allCommunityMembers = {};
   allCommunityMembersData = {};
   unfrostedPoptartsMembers = {};

   i = 0;
   i = 0;
   i = 0;

   totalNumberOfMembers = 0;
   currentlyOnlineClubId = 396624561;
   unfrostedPoptartsClubId = 399750801;

   currentlyOnlineClubInfo = C_Club.GetClubInfo(currentlyOnlineClubId);
   currentlyOnlineClubMembers = C_Club.GetClubMembers(currentlyOnlineClubId);

   function getCurrentOnlineMembers()
      i = 0;
      for key, value in pairs(currentlyOnlineClubMembers) do
         memberArray[key] = value
      end

      for key, value in pairs(memberArray) do
         allCommunityMembers[i] = C_Club.GetMemberInfo(currentlyOnlineClubId, value)
         i = i + 1
      end
      print(i, " Currently Online Community Members Successfully Exported")
      return allCommunityMembers;
   end

   function getUnfrostedPoptartsMembers()
      i = 0;
      unfrostedPoptartsClubInfo = C_Club.GetClubInfo(unfrostedPoptartsClubId);
      unfrostedPoptartsClubMembers = C_Club.GetClubMembers(unfrostedPoptartsClubId);

      for key, value in pairs(unfrostedPoptartsClubMembers) do
         memberArray[key] = value
      end

      for key, value in pairs(memberArray) do
         unfrostedPoptartsMembers[i] = C_Club.GetMemberInfo(unfrostedPoptartsClubId, value)
         i = i + 1
      end

      print(i, " Unfrosted Poptarts Members Successfully Exported")
      return unfrostedPoptartsMembers;

   end

   getCurrentOnlineMembers()
   getUnfrostedPoptartsMembers()
end)
