# A clean and easy to use notification library
## Installation 

---

First, import the library using the source's loadstring

```lua
local notificationLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/xaxaxaxaxaxaxaxaxa/Libraries/main/Notifications/source.lua"))();
```

Great, now you can start using the library

---

## notificationLibrary.new

```lua
function notificationLibrary.new(settings: table)
```

Creates a new notification library with the specified **settings** in the **settings table**

Example:

```lua
local notifications = notificationLibrary.new({            
    NotificationLifetime = 3, 
    NotificationPosition = "Middle",
    
    TextFont = Enum.Font.Code,
    TextColor = Color3.fromRGB(255, 255, 255),
    TextSize = 15,
    
    TextStrokeTransparency = 0, 
    TextStrokeColor = fromRGB(0, 0, 0),
})
```
