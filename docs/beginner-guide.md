# Beginner Plugin Creation Guide

This guide will walk you through with everything you need to know to create your first plugin!
Follow the steps below, to make your first ever plugin:

**Don't know what Plugins are?**

Head to [the explanation](what-are-plugins.md)

## 1. Basic Setup:-

We will start by first setting up the basics for our plugin.

### 1.1 Folder Creation

Add a Folder inside ServerStorage and name it whatever you want your plugin to be named. Here, we use `MyPlugin`
<p align="right">
<img src="../assets/naming.png" width = 60% alt = "Naming the folder">
</p>

### 1.2 Script Creation

Add a Server Script (script) inside the Folder, name it something like `Plugin`. This is the main script that will make the plugin function like a plugin.

<p align="right">
<img src="../assets/addscript.png" width = 50% alt = "Adding the script">
</p>

### 1.3 Adding the Toolbar and Button

Inside the `Plugin` script, we need to create a **toolbar**. This dedicates a space in the Plugins tab to our plugin.

We can create a toolbar using `plugin:CreateToolbar(name:string)` function. This will create a toolbar with the requested name. You should add this inside a variable, like this:

```luau
local toolbar = plugin:CreateToolbar("MyPlugin")
```

Now with the toolbar created, we can add a button for our Plugin. We can do this with the `toolbar:CreateButton(buttonId:string, tooltip:string, iconname:string, text:string?)`.

You can call the `buttonId` anything, make sure it is not used by other plugins.

The `tooltip` can again be anything, it'll show up when hovering over the button.

`iconname` is the rbxassetid used to display an icon for the button. Type it as: `"rbxassetid://YOUR_ID_HERE"`.

> [!IMPORTANT]
> Even if you don't add an image, just pass an empty string. Passing `nil` or another type will result in an error.

`text` is the string displayed when the image is not provided.

Here is the code snippet for adding the button:

```luau
local button = toolbar:CreateButton("MyPlugin", 
	"My Plugin Tooltip!", 
	"rbxassetid://15523194938", 
	"My First Plugin!")
```

> [!TIP]
> You can add multiple buttons to the same toolbar! Just make sure to reference each one seperately.

### 1.4 Button Functionality

The button we created in 1.3 behaves somewhat similar to GUI Buttons, like TextButton or ImageButton.

We can detect when the button is clicked using the `.Click` event, like this:

```luau
button.Click:Connect(function()
	print("The button was clicked!")
end)
```

Just like UI buttons, we can bind this event to anything with a function call.

### 1.5 Testing the Plugin

Now we have created our first functional plugin, time to test it!

We first have to save it on our computer as a local plugin. To do this, **right-click** on the Folder, and click on **Save/Export**. Now select **Save as Local Plugin** and follow the prompts on screen to save it as an RBXMX file.

Now, open the Plugins tab in Roblox Studio and scroll to the right. You will see your plugin added, behaving as we wanted it.

Everytime we update the Plugin, we can simply save the plugin again to view the changes.

---

## 2. Usage of Selection and ChangeHistoryService:-
