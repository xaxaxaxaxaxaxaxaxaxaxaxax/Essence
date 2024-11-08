local MT = getrawmetatable(game)
setreadonly(MT, false)

for _, Object in pairs(getgc(true)) do
   if type(Object) == "table" then
       setreadonly(Object, false)
       local IndexInstance = rawget(Object, "indexInstance")
       if type(IndexInstance) == "table" and IndexInstance[1] == "kick" then
           setreadonly(IndexInstance, false)
           rawset(Object, "Table", {
               "kick", 
               function() 
                   coroutine.yield() 
               end
           })
           break
       end
   end
end

local BlockedMethods = {
   "TeleportDetect",
   "CHECKER_1",
   "CHECKER",
   "GUI_CHECK", 
   "OneMoreTime",
   "checkingSPEED",
   "BANREMOTE",
   "PERMAIDBAN", 
   "KICKREMOTE",
   "BR_KICKPC",
   "BR_KICKMOBILE"
}

local OldNamecall = MT.__namecall
MT.__namecall = newcclosure(function(Self, ...)
   local Args = {...}
   local MethodName = tostring(Args[1])
   
   if table.find(BlockedMethods, MethodName) then
       return
   end
   
   return OldNamecall(Self, ...)
end)
