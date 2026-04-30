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
