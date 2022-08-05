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
    NotificationLifetime = 3, -- how long your notifications will last in seconds
    NotificationPosition = "Middle", -- the Position where your notifications will be
    
    --[[ 
         all notification positions:
                
         Middle, MiddleRight, MiddleLeft
         Top, TopRight, TopLeft
    ]]--
    
    TextFont = Enum.Font.Code, -- the font of all notifications, all fonts: https://developer.roblox.com/en-us/api-reference/enum/Font
    TextColor = Color3.fromRGB(255, 255, 255), -- the color of a notifications text, RGB colors: https://www.rapidtables.com/web/color/RGB_Color.html
    TextSize = 15, -- the size of a notifications text
    
    TextStrokeTransparency = 0, -- settings this to 1 will create an outline effect on a nofications text
    TextStrokeColor = fromRGB(0, 0, 0), -- the color of the outline effect on a notifications text
})
```

---

```lua
notificationLibrary:BuildNotificationUI()
```

This function will build the UI elements for the module to work correctly

--- 

```lua
notificationLibrary:Notify(text: string)
```

This function will, as it says, notify you of whatever text you put as the first parameter

---

```lua
notificationLibrary:SetNotificationLifetime(lifetime: number)
```

This function will set the lifetime of the notifications before it disapears 

---

```lua
notificationLibrary:SetTextColor(textColor: Color3)
```

This function will set the the text color of all notifications

---

```lua
notificationLibrary:SetTextSize(textSize: number)
```

This function will set the text size of all notifications

---

```lua
notificationLibrary:SetTextStrokeTransparency(textStrokeTransparency: number)
```

This function will set the outline transparency all of notifications

---

```lua
notificationLibrary:SetTextStrokeColor(textStrokeColor: Color3)
```

This function will set the outline color of all notifications

---

```lua
notifications:SetTextFont(textFont: string <font string>)
```

This function will set the text font of all notifications

---

# Full example
```lua
local notificationLibrary = notifications.new({            
    NotificationLifetime = 3, 
    NotificationPosition = "Middle",
    
    TextFont = Enum.Font.Code,
    TextColor = Color3.fromRGB(255, 255, 255),
    TextSize = 15,
    
    TextStrokeTransparency = 0, 
    TextStrokeColor = fromRGB(0, 0, 0),
})

notificationLibrary:BuildNotificationUI();
notificationLibrary:Notify("hello, world!");
```
