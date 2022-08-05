# A clean and easy to use notification library
## Installation 

---

First, import the library using the source's loadstring

```lua
local notificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/Libraries/main/Notifications/source.lua"))();
```

Great, now you can start using the library

---

```lua
function notificationLibrary.new(settings: table)
```

This function creates a new module with the specified **settings** in the **settings table**

Example:
```lua
local notifications = notificationLibrary.new({            
    NotificationLifetime = 3, -- how long your notifications will last
    NotificationPosition = "Middle", -- the Position where your notifications will be
    
    --[[ 
         all notification positions:
                
         Middle, MiddleRight, MiddleLeft
         Top, TopRight, TopLeft
    ]]--
    
    TextFont = Enum.Font.Code, -- the font of all notifications, all fonts: https://developer.roblox.com/en-us/api-reference/enum/Font
    TextColor = Color3.fromRGB(255, 255, 255), -- the color of notifications text, RGB colors: https://www.rapidtables.com/web/color/RGB_Color.html
    TextSize = 15, -- the size of the notifications text
    
    TextStrokeTransparency = 0, -- settings this to 1 will create an outline effect on the nofications text
    TextStrokeColor = fromRGB(0, 0, 0), -- the color of the outline effect on a notifications text
})
```
