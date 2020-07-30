# Directory
Automatic Module Handling

# Information
Welcome to "Directory" a module to handle all of your modules!

*What it does*
  - Goes through all of the descendants inside of "game" and requires them (getting their contents)
  - Adds all of the modules and their contents into an "internal" table
  - Calls the module:init() function for every module it has required (if it exists) and passes the "internal" list allowing you to avoid circular dependencies, and handle modules easier within your codebase!

*How do I use it?*
  - I recommend putting the "Directory" module under ReplicatedStorage so it can be shared across the server/client boundaries
  - Make a Serverscript and a Localscript that acts as the "main" for both the Server/Client and make it require Directory and call :init()

# Code Examples
This will get every module that it can reach and automatically require & pass the directory into it:
```lua
local Directory = require(game:GetService("ReplicatedStorage"):WaitForChild("Directory")

Directory:init()
```

Example setup of a module while using Directory:
```lua
local Module = {}

function Module:init(directory)
  local math, table = directory.math, directory.table

  local otherModule = directory.otherModule do 
    otherModule = table.merge({ mergedSuccessfully = true }, otherModule)
  end;
  
  print(otherModule.mergedSuccessfully)
end;

return Module
```

You can also add an "environment" (look inside Directory, theres a function called ```function Directory:Environment()```) which allows you to do this:
```lua
local Module = {}

function Module:init(directory)
  local part = directory:Create("Part", {
    Color = Color3.fromRGB(255, 0, 0),
    Material = Enum.Material.Neon,
    Name = "Example Part",
    Parent = workspace
  })
end;

return Module
```

# Other
Contact:
  - Twitter @minuteadrevenue
  - Discord 10 Minute Ad Revenue #1438

If you have questions, suggestions, etc don't be afraid to use my contacts above ^
