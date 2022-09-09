---@meta

---@type boolean
_G.SERVER = _G.SERVER

---@type boolean
_G.MENU_DLL = _G.MENU_DLL

---@type boolean
_G.CLIENT = _G.CLIENT

---@type "unknown"|"dev"|"chromium"|"prerelease"|"x86-64"
_G.BRANCH = _G.BRANCH

--[[<p>Adds simple Get/Set accessor functions on the specified table.
Can also force the value to be set to a number, bool or string.</p>
]]
---@param tab table # The table to add the accessor functions too.
---@param key any # The key of the table to be get/set.
---@param name string # The name of the functions (will be prefixed with Get and Set).
---@param force number # The type the setter should force to (uses <a class="link-page exists" href="/gmod/Enums/FORCE">Enums/FORCE</a>).
function AccessorFunc(tab, key, name, force) end
--[[<p>Defines a global entity class variable with an automatic value in order to prevent collisions with other <a class="link-page exists" href="/gmod/Enums/CLASS">Enums/CLASS</a>. You should prefix your variable with CLASS_ for consistency.</p>
]]
---@param name string # The name of the new enum/global variable.
function Add_NPC_Class(name) end
--[[<p>Adds the specified image path to the main menu background pool. Image can be png or jpeg.</p>
]]
---@param path string # Path to the image.
function AddBackgroundImage(path) end
--[[<div class="internal"><div class="inner">This is used internally - although you're able to use it you probably shouldn't.

Use <a class="link-page exists" href="/gmod/concommand.Add">concommand.Add</a> instead.</div></div>
<p>Tells the engine to register a console command. If the command was ran, the engine calls <a class="link-page exists" href="/gmod/concommand.Run">concommand.Run</a>.</p>
]]
---@param name string # The name of the console command to add.
---@param helpText string # The help text.
---@param flags number # Concommand flags using <a class="link-page exists" href="/gmod/Enums/FCVAR">Enums/FCVAR</a>
function AddConsoleCommand(name, helpText, flags) end
--[[<p>Marks a Lua file to be sent to clients when they join the server. Doesn't do anything on the client - this means you can use it in a shared file without problems.</p>
<div class="warning"><div class="inner">If the file trying to be added is empty, an error will occur, and the file will not be sent to the client<p></p>
<p>The string cannot have whitespace.</p></div></div><div class="note"><div class="inner">This function is not needed for scripts located in <strong>lua/autorun/</strong> and <strong>lua/autorun/client/</strong>: they are automatically sent to clients.<p></p>
<p>You can add up to <strong>8192</strong> files. Each file can be up to <strong>64KB</strong> compressed (LZMA)</p></div></div>]]
---@param file string # The name/path to the Lua file that should be sent, <strong>relative to the garrysmod/lua folder</strong>. If no parameter is specified, it sends the current file.<p></p><br/><p>The file path can be relative to the script it's ran from. For example, if your script is in <code>lua/myfolder/stuff.lua</code>, calling <a class="link-page exists" href="/gmod/Global.AddCSLuaFile">AddCSLuaFile</a>("otherstuff.lua") and <a class="link-page exists" href="/gmod/Global.AddCSLuaFile">AddCSLuaFile</a>("myfolder/otherstuff.lua") is the same thing.</p><br/><div class="note"><div class="inner">Please make sure your file names are unique, the filesystem is shared across all addons, so a file named <code>lua/config.lua</code> in your addon may be overwritten by the same file in another addon.</div></div>
function AddCSLuaFile(file) end
--[[<p>Loads the specified image from the <code>/cache</code> folder, used in combination <a class="link-page exists" href="/gmod/steamworks.Download">steamworks.Download</a>. Most addons will provide a 512x512 png image.</p>
]]
---@param name string # The name of the file.
---@return IMaterial # The material, returns <code>nil</code> if the cached file is not an image.
function AddonMaterial(name) end
--[[<p>Adds the specified vector to the PVS which is currently building. This allows all objects in visleafs visible from that vector to be drawn.</p>
]]
---@param position Vector # The origin to add.
function AddOriginToPVS(position) end
--[[<p>This function creates a World Tip, similar to the one shown when aiming at a Thruster where it shows you its force.</p>
<p>This function will make a World Tip that will only last 50 milliseconds (1/20th of a second), so you must call it continuously as long as you want the World Tip to be shown. It is common to call it inside a Think hook.</p>
<p>Contrary to what the function's name implies, it is impossible to create more than one World Tip at the same time. A new World Tip will overwrite the old one, so only use this function when you know nothing else will also be using it.</p>
<p>See <a class="link-page exists" href="/gmod/SANDBOX:PaintWorldTips">SANDBOX:PaintWorldTips</a> for more information.</p>
<div class="note"><div class="inner">This function is only available in Sandbox and its derivatives</div></div>]]
---@param entindex number # <strong>This argument is no longer used</strong>; it has no effect on anything. You can use nil in this argument.
---@param text string # The text for the world tip to display.
---@param dieTime number # <strong>This argument is no longer used</strong>; when you add a World Tip it will always last only 0.05 seconds. You can use nil in this argument.
---@param pos Vector # Where in the world you want the World Tip to be drawn. If you add a valid Entity in the next argument, this argument will have no effect on the actual World Tip.
---@param ent Entity # Which entity you want to associate with the World Tip. This argument is optional. If set to a valid entity, this will override the position set in <code>pos</code> with the Entity's position.
function AddWorldTip(entindex, text, dieTime, pos, ent) end
--[[<p>Creates an <a class="link-page exists" href="/gmod/Angle">Angle</a> object.</p>
]]
---@param pitch number # The pitch value of the angle.<p></p><br/><p>If this is an <a class="link-page exists" href="/gmod/Angle">Angle</a>, this function will return a copy of the given angle.</p><br/><p>If this is a <a class="link-page exists" href="/gmod/string">string</a>, this function will try to parse the string as a angle. If it fails, it returns a 0 angle.<br/>(See examples)</p>
---@param yaw number # The yaw value of the angle.
---@param roll number # The roll value of the angle.
---@return Angle # Created angle
function Angle(pitch, yaw, roll) end
--[[<p>Returns an angle with a randomized pitch, yaw, and roll between min(inclusive), max(exclusive).</p>
]]
---@param min number # Min bound inclusive.
---@param max number # Max bound exclusive.
---@return Angle # The randomly generated angle.
function AngleRand(min, max) end
--[[<p>If the result of the first argument is false or nil, an error is thrown with the second argument as the message.</p>
]]
---@param expression any # The expression to assert.
---@param errorMessage string # The error message to throw when assertion fails. This is only type-checked if the assertion fails.
---@param returns vararg # Any arguments past the error message will be returned by a successful assert.
---@return any # If successful, returns the first argument.
---@return any # If successful, returns the error message. This will be nil if the second argument wasn't specified.<p></p><br/><p>Since the second argument is only type-checked if the assertion fails, this doesn't have to be a string.</p>
---@return vararg # Returns any arguments past the error message.
function assert(expression, errorMessage, returns) end
--[[<p>Sends the specified Lua code to all connected clients and executes it.</p>
<div class="note"><div class="inner">If you need to use this function more than once consider using <a class="link-page exists" href="/gmod/net">net</a> library. Send net message and make the entire code you want to execute in <a class="link-page exists" href="/gmod/net.Receive">net.Receive</a> on client.</div></div>]]
---@param code string # The code to be executed. Capped at length of 254 characters.
function BroadcastLua(code) end
--[[<p>Dumps the networked variables of all entities into one table and returns it.</p>
]]
---@return table # Format:<p></p><br/><ul><br/><li>key = <a class="link-page exists" href="/gmod/Entity">Entity</a> for NWVars or <a class="link-page exists" href="/gmod/number">number</a> (always 0) for global vars</li><br/><li>value = <a class="link-page exists" href="/gmod/table">table</a> formatted as:<br/><ul><br/><li>key = <a class="link-page exists" href="/gmod/string">string</a> var name</li><br/><li>value = any type var value</li><br/></ul><br/></li><br/></ul>
function BuildNetworkedVarsTable() end
--[[<div class="internal"><div class="inner">This is used internally - although you're able to use it you probably shouldn't.</div></div>
<p>Used internally to check if the current server the player is on can be added to favorites or not. Does not check if the server is ALREADY in the favorites.</p>
]]
---@return boolean # Can add to favorites
function CanAddServerToFavorites() end
--[[<p>Aborts joining of the server you are currently joining.</p>
]]
function CancelLoading() end
--[[<p>Sets the active main menu background image to a random entry from the background images pool. Images are added with <a class="link-page exists" href="/gmod/Global.AddBackgroundImage">AddBackgroundImage</a>.</p>
]]
---@param currentgm string # Apparently does nothing.
function ChangeBackground(currentgm) end
--[[<p>Automatically called by the engine when a panel is hovered over with the mouse</p>
]]
---@param panel Panel # Panel that has been hovered over
function ChangeTooltip(panel) end
--[[<p>Empties the pool of main menu background images.</p>
]]
function ClearBackgroundImages() end
--[[<p>Creates a non physical entity that only exists on the client. See also <a class="link-page exists" href="/gmod/ents.CreateClientProp">ents.CreateClientProp</a>.</p>
<div class="bug"><div class="inner">Parented clientside models will become detached if the parent entity leaves the PVS. <strong>A workaround is available on its github page.</strong><br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/861">861</a></div></div><div class="bug"><div class="inner">Clientside entities are not garbage-collected, thus you must store a reference to the object and call <a class="link-page exists" href="/gmod/CSEnt:Remove">CSEnt:Remove</a> manually. <strong>To workaround this bug, you need to hold a reference (in a variable) to the entity and remove it when necessary.</strong><br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/1387">1387</a></div></div><div class="bug"><div class="inner">Clientside models will occasionally delete themselves during high server lag.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/3184">3184</a></div></div>]]
---@param model string # The file path to the model.<p></p><br/><div class="warning"><div class="inner">Model must be precached with <a class="link-page exists" href="/gmod/util.PrecacheModel">util.PrecacheModel</a> on the server before usage.</div></div>
---@param renderGroup number # The render group of the entity for the clientside leaf system, see <a class="link-page exists" href="/gmod/Enums/RENDERGROUP">Enums/RENDERGROUP</a>.
---@return CSEnt # Created client-side model (<code>C_BaseFlex</code>).
function ClientsideModel(model, renderGroup) end
--[[<p>Creates a fully clientside ragdoll.</p>
<div class="note"><div class="inner">The ragdoll initially starts as hidden and with shadows disabled, see the example for how to enable it.<p></p>
<p>There's no need to call <a class="link-page exists" href="/gmod/Entity:Spawn">Entity:Spawn</a> on this entity.</p>
<p>The physics won't initialize at all if the model hasn't been precached serverside first.</p></div></div><div class="bug"><div class="inner">Clientside entities are not garbage-collected, thus you must store a reference to the object and call <a class="link-page exists" href="/gmod/CSEnt:Remove">CSEnt:Remove</a> manually.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/1387">1387</a></div></div>]]
---@param model string # The file path to the model.<p></p><br/><div class="warning"><div class="inner">Model must be precached with <a class="link-page exists" href="/gmod/util.PrecacheModel">util.PrecacheModel</a> on the server before usage.</div></div>
---@param renderGroup number # The <a class="link-page exists" href="/gmod/Enums/RENDERGROUP">Enums/RENDERGROUP</a> to assign.
---@return CSEnt # The newly created client-side ragdoll. ( C_ClientRagdoll )
function ClientsideRagdoll(model, renderGroup) end
--[[<p>Creates a scene entity based on the scene name and the entity.</p>
]]
---@param name string # The name of the scene.
---@param targetEnt Entity # The entity to play the scene on.
---@return CSEnt # C_SceneEntity
function ClientsideScene(name, targetEnt) end
--[[<p>Closes all Derma menus that have been passed to <a class="link-page exists" href="/gmod/Global.RegisterDermaMenuForClose">RegisterDermaMenuForClose</a> and calls <a class="link-page exists" href="/gmod/GM:CloseDermaMenus">GM:CloseDermaMenus</a></p>
]]
function CloseDermaMenus() end
--[[<p>Executes the specified action on the garbage collector.</p>
]]
---@param action string # The action to run.<p></p><br/><p>Valid actions are <code>collect</code>, <code>stop</code>, <code>restart</code>, <code>count</code>, <code>step</code>, <code>setpause</code> and <code>setstepmul</code>.</p>
---@param arg number # The argument of the specified action, only applicable for <code>step</code>, <code>setpause</code> and <code>setstepmul</code>.
---@return any # If the action is count this is the number of kilobytes of memory used by Lua.<br/>If the action is step this is true if a garbage collection cycle was finished.<p></p><br/><p>If the action is setpause this is the previous value for the GC's pause.<br/>If the action is setstepmul this is the previous value for the GC's step.</p>
function collectgarbage(action, arg) end
--[[<p>Creates a <a class="link-page exists" href="/gmod/Color">Color</a>.</p>
<div class="warning"><div class="inner">This function is very expensive when used in rendering hooks or in operations requiring very frequent calls (like loops for example). It is better to store the color in a variable or to use the <a href="https://wiki.facepunch.com/gmod/Global_Variables#misc">default colors</a> available.</div></div>]]
---@param r number # An integer from <code>0-255</code> describing the red value of the color.
---@param g number # An integer from <code>0-255</code> describing the green value of the color.
---@param b number # An integer from <code>0-255</code> describing the blue value of the color.
---@param a number # An integer from <code>0-255</code> describing the alpha (transparency) of the color.
---@return table # The created <a class="link-page exists" href="/gmod/Color">Color</a>.
function Color(r, g, b, a) end
--[[<p>Returns a new <a class="link-page exists" href="/gmod/Color">Color</a> with the RGB components of the given <a class="link-page exists" href="/gmod/Color">Color</a> and the alpha value specified.</p>
]]
---@param color table # The <a class="link-page exists" href="/gmod/Color">Color</a> from which to take RGB values. This color will not be modified.
---@param alpha number # The new alpha value, a number between 0 and 255. Values above 255 will be clamped.
---@return table # The new <a class="link-page exists" href="/gmod/Color">Color</a> with the modified alpha value
function ColorAlpha(color, alpha) end
--[[<p>Creates a <a class="link-page exists" href="/gmod/Color">Color</a> with randomized red, green, and blue components. If the alpha argument is true, alpha will also be randomized.</p>
]]
---@param a boolean # Should alpha be randomized.
---@return table # The created <a class="link-page exists" href="/gmod/Color">Color</a>.
function ColorRand(a) end
--[[<p>Converts a <a class="link-page exists" href="/gmod/Color">Color</a> into HSL color space.</p>
]]
---@param color table # The <a class="link-page exists" href="/gmod/Color">Color</a>.
---@return number # The hue in degrees <code>[0, 360]</code>.
---@return number # The saturation in the range <code>[0, 1]</code>.
---@return number # The lightness in the range <code>[0, 1]</code>.
function ColorToHSL(color) end
--[[<p>Converts a <a class="link-page exists" href="/gmod/Color">Color</a> into HSV color space.</p>
]]
---@param color table # The <a class="link-page exists" href="/gmod/Color">Color</a>.
---@return number # The hue in degrees <code>[0, 360]</code>.
---@return number # The saturation in the range <code>[0, 1]</code>.
---@return number # The value in the range <code>[0, 1]</code>.
function ColorToHSV(color) end
--[[<p>Attempts to compile the given file. If successful, returns a function that can be called to perform the actual execution of the script.</p>
]]
---@param path string # Path to the file, relative to the garrysmod/lua/ directory.
---@return function # The function which executes the script.
function CompileFile(path) end
--[[<p>This function will compile the code argument as lua code and return a function that will execute that code.</p>
<p>Please note that this function will not automatically execute the given code after compiling it.</p>
]]
---@param code string # The code to compile.
---@param identifier string # An identifier in case an error is thrown. (The same identifier can be used multiple times)
---@param HandleError boolean # If false this function will return an error string instead of throwing an error.
---@return function # A function that, when called, will execute the given code.<p></p><br/><p>Returns the error string if there was a Lua error and third argument is false.</p>
function CompileString(code, identifier, HandleError) end
--[[<p>Returns a table of console command names beginning with the given text.</p>
]]
---@param text string # Text that the console commands must begin with.
---@return table # Table of console command names.
function ConsoleAutoComplete(text) end
--[[<p>Returns whether a <a class="link-page exists" href="/gmod/ConVar">ConVar</a> with the given name exists or not</p>
]]
---@param name string # Name of the <a class="link-page exists" href="/gmod/ConVar">ConVar</a>.
---@return boolean # True if the <a class="link-page exists" href="/gmod/ConVar">ConVar</a> exists, false otherwise.
function ConVarExists(name) end
--[[<p>Makes a clientside-only console variable</p>
<div class="note"><div class="inner">This function is a wrapper of <a class="link-page exists" href="/gmod/Global.CreateConVar">CreateConVar</a>, with the difference being that FCVAR_ARCHIVE and FCVAR_USERINFO are added automatically when <strong>shouldsave</strong> and <strong>userinfo</strong> are true, respectively.</div></div>
<p>Although this function is shared, it should only be used clientside.</p>
]]
---@param name string # Name of the ConVar to be created and able to be accessed.<p></p><br/><p>This cannot be a name of existing console command or console variable. It will silently fail if it is.</p>
---@param default string # Default value of the ConVar.
---@param shouldsave boolean # Should the ConVar be saved across sessions in the cfg/client.vdf file.
---@param userinfo boolean # Should the ConVar and its containing data be sent to the server when it has changed. This make the convar accessible from server using <a class="link-page exists" href="/gmod/Player:GetInfoNum">Player:GetInfoNum</a> and similar functions.
---@param helptext string # Help text to display in the console.
---@param min number # If set, the convar cannot be changed to a number lower than this value.
---@param max number # If set, the convar cannot be changed to a number higher than this value.
---@return ConVar # Created convar.
function CreateClientConVar(name, default, shouldsave, userinfo, helptext, min, max) end
--[[<p>Creates a console variable (<a class="link-page exists" href="/gmod/ConVar">ConVar</a>), in general these are for things like gamemode/server settings.</p>
<div class="warning"><div class="inner">Do not use the FCVAR_NEVER_AS_STRING and FCVAR_REPLICATED flags together, as this can cause the console variable to have strange values on the client.</div></div>]]
---@param name string # Name of the <a class="link-page exists" href="/gmod/ConVar">ConVar</a>.<p></p><br/><p>This cannot be a name of an engine console command or console variable. It will silently fail if it is. If it is the same name as another lua ConVar, it will return that ConVar object.</p>
---@param value string # Default value of the convar. Can also be a number.
---@param flags number # Flags of the convar, see <a class="link-page exists" href="/gmod/Enums/FCVAR">Enums/FCVAR</a>, either as bitflag or as table.
---@param helptext string # The help text to show in the console.
---@param min number # If set, the ConVar cannot be changed to a number lower than this value.
---@param max number # If set, the ConVar cannot be changed to a number higher than this value.
---@return ConVar # The convar created.
function CreateConVar(name, value, flags, helptext, min, max) end
--[[<p>Creates a new material with the specified name and shader.</p>
<div class="note"><div class="inner">Materials created with this function can be used in <a class="link-page exists" href="/gmod/Entity:SetMaterial">Entity:SetMaterial</a> and <a class="link-page exists" href="/gmod/Entity:SetSubMaterial">Entity:SetSubMaterial</a> by prepending a "!" to their material name argument.</div></div><div class="note"><div class="inner">This does not work with <a href="https://developer.valvesoftware.com/wiki/Patch">patch materials</a>.</div></div><div class="bug"><div class="inner">.pngs must be loaded with <a class="link-page exists" href="/gmod/Global.Material">Material</a> before being used with this function.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/1531">1531</a></div></div><div class="bug"><div class="inner">This will not create a new material if another material object with the same name already exists.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/3103">3103</a></div></div>]]
---@param name string # The material name. Must be unique.
---@param shaderName string # The shader name. See <a class="link-page exists" href="/gmod/Shaders">Shaders</a>.
---@param materialData table # Key-value table that contains shader parameters and proxies.<p></p><br/><ul><br/><li>See: <a href="https://developer.valvesoftware.com/wiki/Category:List_of_Shader_Parameters">List of Shader Parameters on Valve Developers Wiki</a> and each shader's page from .</li><br/></ul><br/><div class="note"><div class="inner">Unlike <a class="link-page exists" href="/gmod/IMaterial:SetTexture">IMaterial:SetTexture</a>, this table will not accept <a class="link-page exists" href="/gmod/ITexture">ITexture</a> values. Instead, use the texture's name (see <a class="link-page exists" href="/gmod/ITexture:GetName">ITexture:GetName</a>).</div></div>
---@return IMaterial # Created material
function CreateMaterial(name, shaderName, materialData) end
--[[<p>Creates a new particle system.</p>
<div class="note"><div class="inner">The particle effect must be precached with <a class="link-page exists" href="/gmod/Global.PrecacheParticleSystem">PrecacheParticleSystem</a> and the file its from must be added via <a class="link-page exists" href="/gmod/game.AddParticles">game.AddParticles</a> before it can be used!</div></div>]]
---@param ent Entity # The entity to attach the control point to.
---@param effect string # The name of the effect to create. It must be precached.
---@param partAttachment number # See <a class="link-page exists" href="/gmod/Enums/PATTACH">Enums/PATTACH</a>.
---@param entAttachment number # The attachment ID on the entity to attach the particle system to
---@param offset Vector # The offset from the <a class="link-page exists" href="/gmod/Entity:GetPos">Entity:GetPos</a> of the entity we are attaching this CP to.
---@return CNewParticleEffect # The created particle system.
function CreateParticleSystem(ent, effect, partAttachment, entAttachment, offset) end
--[[<p>Creates a new <a class="link-page exists" href="/gmod/PhysCollide">PhysCollide</a> from the given bounds.</p>
<div class="bug"><div class="inner">This fails to create planes or points - no components of the mins or maxs can be the same.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/3568">3568</a></div></div>]]
---@param mins Vector # Min corner of the box. This is not automatically ordered with the maxs and must contain the smallest vector components. See <a class="link-page exists" href="/gmod/Global.OrderVectors">OrderVectors</a>.
---@param maxs Vector # Max corner of the box. This is not automatically ordered with the mins and must contain the largest vector components.
---@return PhysCollide # The new PhysCollide. This will be a NULL PhysCollide (<a class="link-page exists" href="/gmod/PhysCollide:IsValid">PhysCollide:IsValid</a> returns false) if given bad vectors or no more PhysCollides can be created in the physics engine.
function CreatePhysCollideBox(mins, maxs) end
--[[<p>Creates <a class="link-page exists" href="/gmod/PhysCollide">PhysCollide</a> objects for every physics object the model has. The model must be precached with <a class="link-page exists" href="/gmod/util.PrecacheModel">util.PrecacheModel</a> before being used with this function.</p>
]]
---@param modelName string # Model path to get the collision objects of.
---@return table # Table of <a class="link-page exists" href="/gmod/PhysCollide">PhysCollide</a> objects. The number of entries will match the model's physics object count. See also <a class="link-page exists" href="/gmod/Entity:GetPhysicsObjectCount">Entity:GetPhysicsObjectCount</a>. Returns no value if the model doesn't exist, or has not been precached.
function CreatePhysCollidesFromModel(modelName) end
--[[<p>Returns a sound parented to the specified entity.</p>
<div class="note"><div class="inner">You can only create one CSoundPatch per audio file, per entity at the same time.</div></div>]]
---@param targetEnt Entity # The target entity.
---@param soundName string # The sound to play.
---@param filter CRecipientFilter # A <a class="link-page exists" href="/gmod/CRecipientFilter">CRecipientFilter</a> of the players that will have this sound networked to them.<p></p><br/><p>If not set, the default is a <a href="https://developer.valvesoftware.com/wiki/CRecipientFilter#Derived_classes">CPASAttenuationFilter</a>.</p><br/><div class="note"><div class="inner">This argument only works serverside.</div></div>
---@return CSoundPatch # The sound object
function CreateSound(targetEnt, soundName, filter) end
--[[<p>Creates and returns a new <a class="link-page exists" href="/gmod/DSprite">DSprite</a> element with the supplied material.</p>
]]
---@param material IMaterial # Material the sprite should draw.
---@return Panel # The new <a class="link-page exists" href="/gmod/DSprite">DSprite</a> element.
function CreateSprite(material) end
--[[<p>Returns the uptime of the server in seconds (to at least 4 decimal places)</p>
<p>This is a synchronised value and affected by various factors such as host_timescale (or <a class="link-page exists" href="/gmod/game.GetTimeScale">game.GetTimeScale</a>) and the server being paused - either by sv_pausable or all players disconnecting.</p>
<p>You should use this function for timing in-game events but not for real-world events.</p>
<p>See also: <a class="link-page exists" href="/gmod/Global.RealTime">RealTime</a>, <a class="link-page exists" href="/gmod/Global.SysTime">SysTime</a></p>
<div class="note"><div class="inner">This is internally defined as a float, and as such it will be affected by precision loss if your server uptime is more than 6 hours, which will cause jittery movement of players and props and inaccuracy of timers, it is highly encouraged to refresh or change the map when that happens (a server restart is not necessary).<p></p>
<p>This is <strong>NOT</strong> easy as it sounds to fix in the engine, so please refrain from posting issues about this</p></div></div><div class="bug"><div class="inner">This returns 0 in <a class="link-page exists" href="/gmod/GM:PlayerAuthed">GM:PlayerAuthed</a>.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/3026">3026</a></div></div>]]
---@return number # Time synced with the game server.
function CurTime() end
--[[<p>Returns an <a class="link-page exists" href="/gmod/CTakeDamageInfo">CTakeDamageInfo</a> object.</p>
<div class="bug"><div class="inner">This does not create a unique object, but instead returns a shared reference. That means you cannot use two or more of these objects at once.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/2771">2771</a></div></div>]]
---@return CTakeDamageInfo # The <a class="link-page exists" href="/gmod/CTakeDamageInfo">CTakeDamageInfo</a> object.
function DamageInfo() end
--[[<p>Writes text to the right hand side of the screen, like the old error system. Messages disappear after a couple of seconds.</p>
]]
---@param slot number # The location on the right hand screen to write the debug info to. Starts at 0, no upper limit
---@param info string # The debugging information to be written to the screen
function DebugInfo(slot, info) end
--[[<p>This is not a function. This is a preprocessor keyword that translates to:</p>
<div data-generationtime="0" class="code code-lua"><span class="keyword">local</span> BaseClass <span class="operator">=</span> <span class="className"><a href="/gmod/baseclass">baseclass</a></span>.<span class="method"><a href="/gmod/baseclass.Get">Get</a></span>( <span class="string">"my_weapon"</span> )</div>
<p>If you type <code>DEFINE_BASECLASS( "my_weapon" )</code> in your script.</p>
<p>See <a class="link-page exists" href="/gmod/baseclass.Get">baseclass.Get</a> for more information.</p>
]]
---@param value string # Baseclass name
function DEFINE_BASECLASS(value) end
--[[<p>Loads and registers the specified gamemode, setting the GM table's DerivedFrom field to the value provided, if the table exists. The DerivedFrom field is used post-gamemode-load as the "derived" parameter for <a class="link-page exists" href="/gmod/gamemode.Register">gamemode.Register</a>.</p>
]]
---@param base string # Gamemode name to derive from.
function DeriveGamemode(base) end
--[[<p>Creates a new derma animation.</p>
]]
---@param name string # Name of the animation to create
---@param panel Panel # Panel to run the animation on
---@param func function # Function to call to process the animation<p></p><br/><p>Arguments:</p><br/><ul><br/><li><a class="link-page exists" href="/gmod/Panel">Panel</a> pnl - the panel passed to Derma_Anim</li><br/><li><a class="link-page exists" href="/gmod/table">table</a> anim - the anim table</li><br/><li><a class="link-page exists" href="/gmod/number">number</a> delta - the fraction of the progress through the animation</li><br/><li><a class="link-page exists" href="/gmod/any">any</a> data - optional data passed to the run metatable method</li><br/></ul>
---@return table # A lua metatable containing four methods:<p></p><br/><ul><br/><li>Run() - Should be called each frame you want the animation to be ran.</li><br/><li>Active() - Returns if the animation is currently active (has not finished and stop has not been called)</li><br/><li>Stop() - Halts the animation at its current progress.</li><br/><li>Start( Length, Data ) - Prepares the animation to be ran for Length seconds. Must be called once before calling Run(). The data parameter will be passed to the func function.</li><br/></ul>
function Derma_Anim(name, panel, func) end
--[[<p>Draws background blur around the given panel.</p>
]]
---@param panel Panel # Panel to draw the background blur around
---@param startTime number # Time that the blur began being painted
function Derma_DrawBackgroundBlur(panel, startTime) end
--[[<p>Creates panel method that calls the supplied Derma skin hook via <a class="link-page exists" href="/gmod/derma.SkinHook">derma.SkinHook</a></p>
]]
---@param panel Panel # Panel to add the hook to
---@param functionName string # Name of panel function to create
---@param hookName string # Name of Derma skin hook to call within the function
---@param typeName string # Type of element to call Derma skin hook for
function Derma_Hook(panel, functionName, hookName, typeName) end
--[[<p>Makes the panel (usually an input of sorts) respond to changes in console variables by adding next functions to the panel:</p>
<ul>
<li><a class="link-page exists" href="/gmod/Panel:SetConVar">Panel:SetConVar</a></li>
<li><a class="link-page exists" href="/gmod/Panel:ConVarChanged">Panel:ConVarChanged</a></li>
<li><a class="link-page exists" href="/gmod/Panel:ConVarStringThink">Panel:ConVarStringThink</a></li>
<li><a class="link-page exists" href="/gmod/Panel:ConVarNumberThink">Panel:ConVarNumberThink</a></li>
</ul>
<p>The console variable value is saved in the <code>m_strConVar</code> property of the panel.</p>
<p>The panel should call
<a class="link-page exists" href="/gmod/Panel:ConVarStringThink">Panel:ConVarStringThink</a> or
<a class="link-page exists" href="/gmod/Panel:ConVarNumberThink">Panel:ConVarNumberThink</a>
in its <a class="link-page exists" href="/gmod/PANEL:Think">PANEL:Think</a> hook and should call <a class="link-page exists" href="/gmod/Panel:ConVarChanged">Panel:ConVarChanged</a> when the panel's value has changed.</p>
]]
---@param target Panel # The panel the functions should be added to.
function Derma_Install_Convar_Functions(target) end
--[[<p>Creates a derma window to display information</p>
]]
---@param Text string # The text within the created panel.
---@param Title string # The title of the created panel.
---@param Button string # The text of the button to close the panel.
---@return Panel # The created <a class="link-page exists" href="/gmod/DFrame">DFrame</a>
function Derma_Message(Text, Title, Button) end
--[[<p>Shows a message box in the middle of the screen, with up to 4 buttons they can press.</p>
]]
---@param text string # The message to display.
---@param title string # The title to give the message box.
---@param btn1text string # The text to display on the first button.
---@param btn1func function # The function to run if the user clicks the first button.
---@param btn2text string # The text to display on the second button.
---@param btn2func function # The function to run if the user clicks the second button.
---@param btn3text string # The text to display on the third button
---@param btn3func function # The function to run if the user clicks the third button.
---@param btn4text string # The text to display on the fourth button
---@param btn4func function # The function to run if the user clicks the fourth button.
---@return Panel # The Panel object of the created window.
function Derma_Query(text, title, btn1text, btn1func, btn2text, btn2func, btn3text, btn3func, btn4text, btn4func) end
--[[<p>Creates a derma window asking players to input a string.</p>
]]
---@param title string # The title of the created panel.
---@param subtitle string # The text above the input box
---@param default string # The default text for the input box.
---@param confirm function # The function to be called once the user has confirmed their input.
---@param cancel function # The function to be called once the user has cancelled their input
---@param confirmText string # Allows you to override text of the "OK" button
---@param cancelText string # Allows you to override text of the "Cancel" button
---@return Panel # The created <a class="link-page exists" href="/gmod/DFrame">DFrame</a>
function Derma_StringRequest(title, subtitle, default, confirm, cancel, confirmText, cancelText) end
--[[<p>Creates a <a class="link-page exists" href="/gmod/DMenu">DMenu</a> and closes any current menus.</p>
]]
---@param keepOpen boolean # If we should keep other <a class="link-page exists" href="/gmod/DMenu">DMenu</a>s open (<code>true</code>) or not (<code>false</code>).
---@param parent Panel # The panel to parent the created menu to.
---@return Panel # The created <a class="link-page exists" href="/gmod/DMenu">DMenu</a>.
function DermaMenu(keepOpen, parent) end
--[[<p>Sets whether rendering should be limited to being inside a panel or not.</p>
<p>See also <a class="link-page exists" href="/gmod/Panel:NoClipping">Panel:NoClipping</a>.</p>
]]
---@param disable boolean # Whether or not clipping should be disabled
---@return boolean # Whether the clipping was enabled or not before this function call
function DisableClipping(disable) end
--[[<p>Cancels current DOF post-process effect started with <a class="link-page exists" href="/gmod/Global.DOF_Start">DOF_Start</a></p>
]]
function DOF_Kill() end
--[[<p>Cancels any existing DOF post-process effects.
Begins the DOF post-process effect.</p>
]]
function DOF_Start() end
--[[<p>A hacky method used to fix some bugs regarding DoF. What this basically does it force all <code>C_BaseAnimating</code> entities to have the translucent <a class="link-page exists" href="/gmod/Enums/RENDERGROUP">rendergroup</a>, even if they use opaque or two-pass models.</p>
<div class="internal"><div class="inner">This is used internally - although you're able to use it you probably shouldn't.</div></div>]]
---@param enable boolean # Enables or disables depth-of-field mode
function DOFModeHack(enable) end
--[[<div class="internal"><div class="inner">This is used internally - although you're able to use it you probably shouldn't.</div></div>
<p>Draws the currently active main menu background image and handles transitioning between background images.</p>
<p>This is called by default in the menu panel's Paint hook.</p>
]]
function DrawBackground() end
--[[<p>Draws the bloom shader, which creates a glowing effect from bright objects.</p>
]]
---@param Darken number # Determines how much to darken the effect. A lower number will make the glow come from lower light levels. A value of <code>1</code> will make the bloom effect unnoticeable. Negative values will make even pitch black areas glow.
---@param Multiply number # Will affect how bright the glowing spots are. A value of <code>0</code> will make the bloom effect unnoticeable.
---@param SizeX number # The size of the bloom effect along the horizontal axis.
---@param SizeY number # The size of the bloom effect along the vertical axis.
---@param Passes number # Determines how much to exaggerate the effect.
---@param ColorMultiply number # Will multiply the colors of the glowing spots, making them more vivid.
---@param Red number # How much red to multiply with the glowing color. Should be between <code>0</code> and <code>1</code>.
---@param Green number # How much green to multiply with the glowing color. Should be between <code>0</code> and <code>1</code>.
---@param Blue number # How much blue to multiply with the glowing color. Should be between <code>0</code> and <code>1</code>.
function DrawBloom(Darken, Multiply, SizeX, SizeY, Passes, ColorMultiply, Red, Green, Blue) end
--[[<p>Draws the Bokeh Depth Of Field effect .</p>
]]
---@param intensity number # Intensity of the effect.
---@param distance number # <strong>Not worldspace distance</strong>. Value range is from <code>0</code> to <code>1</code>.
---@param focus number # Focus. Recommended values are from 0 to 12.
function DrawBokehDOF(intensity, distance, focus) end
--[[<p>Draws the Color Modify shader, which can be used to adjust colors on screen.</p>
]]
---@param modifyParameters table # Color modification parameters. See <a class="link-page exists" href="/gmod/Shaders/g_colourmodify">Shaders/g_colourmodify</a> and the example below. Note that if you leave out a field, it will retain its last value which may have changed if another caller uses this function.
function DrawColorModify(modifyParameters) end
--[[<p>Draws a material overlay on the screen.</p>
]]
---@param Material string # This will be the material that is drawn onto the screen.
---@param RefractAmount number # This will adjust how much the material will refract your screen.
function DrawMaterialOverlay(Material, RefractAmount) end
--[[<p>Creates a motion blur effect by drawing your screen multiple times.</p>
]]
---@param AddAlpha number # How much alpha to change per frame.
---@param DrawAlpha number # How much alpha the frames will have. A value of 0 will not render the motion blur effect.
---@param Delay number # Determines the amount of time between frames to capture.
function DrawMotionBlur(AddAlpha, DrawAlpha, Delay) end
--[[<p>Draws the sharpen shader, which creates more contrast.</p>
]]
---@param Contrast number # How much contrast to create.
---@param Distance number # How large the contrast effect will be.
function DrawSharpen(Contrast, Distance) end
--[[<p>Draws the sobel shader, which detects edges and draws a black border.</p>
]]
---@param Threshold number # Determines the threshold of edges. A value of <code>0</code> will make your screen completely black.
function DrawSobel(Threshold) end
--[[<p>Renders the post-processing effect of beams of light originating from the map's sun. Utilises the <code>pp/sunbeams</code> material.</p>
]]
---@param darken number # <code>$darken</code> property for sunbeams material.
---@param multiplier number # <code>$multiply</code> property for sunbeams material.
---@param sunSize number # <code>$sunsize</code> property for sunbeams material.
---@param sunX number # <code>$sunx</code> property for sunbeams material.
---@param sunY number # <code>$suny</code> property for sunbeams material.
function DrawSunbeams(darken, multiplier, sunSize, sunX, sunY) end
--[[<p>Draws the texturize shader, which replaces each pixel on your screen with a different part of the texture depending on its brightness. See <a class="link-page exists" href="/gmod/Shaders/g_texturize">g_texturize</a> for information on making the texture.</p>
]]
---@param Scale number # Scale of the texture. A smaller number creates a larger texture.
---@param BaseTexture number # This will be the texture to use in the effect. Make sure you use <a class="link-page exists" href="/gmod/Global.Material">Material</a> to get the texture number.
function DrawTexturize(Scale, BaseTexture) end
--[[<p>Draws the toy town shader, which blurs the top and bottom of your screen. This can make very large objects look like toys, hence the name.</p>
]]
---@param Passes number # An integer determining how many times to draw the effect. A higher number creates more blur.
---@param Height number # The amount of screen which should be blurred on the top and bottom.
function DrawToyTown(Passes, Height) end
--[[<p>Drops the specified entity if it is being held by any player with Gravity Gun or +use pickup.</p>
]]
---@param ent Entity # The entity to drop.
function DropEntityIfHeld(ent) end
--[[<p>Creates or replaces a dynamic light with the given id.</p>
<div class="note"><div class="inner">Only 32 dlights and 64 elights can be active at once.</div></div><div class="warning"><div class="inner">It is not safe to hold a reference to this object after creation since its data can be replaced by another dlight at any time.</div></div><div class="bug"><div class="inner">The minlight parameter affects the world and entities differently.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/3798">3798</a></div></div>]]
---@param index number # An unsigned Integer. Usually an <a class="link-page exists" href="/gmod/Entity:EntIndex">entity index</a> is used here.
---@param elight boolean # Allocates an elight instead of a dlight. Elights have a higher light limit and do not light the world (making the "noworld" parameter have no effect).
---@return table # A DynamicLight structured table. See <a class="link-page exists" href="/gmod/Structures/DynamicLight">Structures/DynamicLight</a>
function DynamicLight(index, elight) end
--[[<p>Returns a <a class="link-page exists" href="/gmod/CEffectData">CEffectData</a> object to be used with <a class="link-page exists" href="/gmod/util.Effect">util.Effect</a>.</p>
<div class="bug"><div class="inner">This does not create a unique object, but instead returns a shared reference. That means you cannot use two or more of these objects at once.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/2771">2771</a></div></div>]]
---@return CEffectData # The <a class="link-page exists" href="/gmod/CEffectData">CEffectData</a> object.
function EffectData() end
--[[<p>An <a href="https://en.wikipedia.org/wiki/Eager_evaluation">eagerly evaluated</a> <a href="https://en.wikipedia.org/wiki/%3F:">ternary operator</a>, or, in layman's terms, a compact "if then else" statement.</p>
<p>In most cases, you should just use Lua's <a href="https://en.wikipedia.org/wiki/%3F:#Lua">"pseudo" ternary operator</a>, like this:</p>
<div data-generationtime="0" class="code code-lua"><span class="keyword">local</span> myCondition <span class="operator">=</span> <span class="builtinValue">true</span>
<span class="keyword">local</span> consequent <span class="operator">=</span> <span class="string">"myCondition is true"</span>
<span class="keyword">local</span> alternative <span class="operator">=</span> <span class="string">"myCondition is false"</span>

<span class="method"><a href="/gmod/Global.print">print</a></span>(myCondition <span class="keyword">and</span> consequent or alternative)</div>
<p>In the above example, due to <a href="https://en.wikipedia.org/wiki/Short-circuit_evaluation">short-circuit evaluation</a>, <code>consequent</code> would be "skipped" and ignored (not evaluated) by Lua due to <code>myCondition</code> being <code>true</code>, and only <code>alternative</code> would be evaluated. However, when using <code>Either</code>, both <code>consequent</code> and <code>alternative</code> would be evaluated. A practical example of this can be found at the bottom of the page.</p>
<a name="falseyvalues" class="anchor_offset"></a><h1>Falsey values<a class="anchor" href="#falseyvalues"><i class="mdi mdi-link-variant"></i></a></h1>
<p>If <code>consequent</code> is "falsey" (Lua considers both <code>false</code> and <code>nil</code> as false), this will not work. For example:</p>
<div data-generationtime="0" class="code code-lua"><span class="keyword">local</span> X <span class="operator">=</span> <span class="builtinValue">true</span>
<span class="keyword">local</span> Y <span class="operator">=</span> <span class="builtinValue">false</span>
<span class="keyword">local</span> Z <span class="operator">=</span> <span class="string">"myCondition is false"</span>

<span class="method"><a href="/gmod/Global.print">print</a></span>(X <span class="keyword">and</span> Y or Z)</div>
<p>This will actually print the value of <code>Z</code>.</p>
<p>In the above case, and other very rare cases, you may find <code>Either</code> useful.</p>
]]
---@param condition any # The condition to check if true or false.
---@param truevar any # If the condition isn't nil/false, returns this value.
---@param falsevar any # If the condition is nil/false, returns this value.
---@return any # The result.
function Either(condition, truevar, falsevar) end
--[[<p>Plays a sentence from <code>scripts/sentences.txt</code></p>
]]
---@param soundName string # The sound to play
---@param position Vector # The position to play at
---@param entity number # The entity to emit the sound from. Must be <a class="link-page exists" href="/gmod/Entity:EntIndex">Entity:EntIndex</a>
---@param channel number # The sound channel, see <a class="link-page exists" href="/gmod/Enums/CHAN">Enums/CHAN</a>.
---@param volume number # The volume of the sound, from 0 to 1
---@param soundLevel number # The sound level of the sound, see <a class="link-page exists" href="/gmod/Enums/SNDLVL">Enums/SNDLVL</a>
---@param soundFlags number # The flags of the sound, see <a class="link-page exists" href="/gmod/Enums/SND">Enums/SND</a>
---@param pitch number # The pitch of the sound, 0-255
function EmitSentence(soundName, position, entity, channel, volume, soundLevel, soundFlags, pitch) end
--[[<p>Emits the specified sound at the specified position.</p>
<div class="bug"><div class="inner">Sounds must be precached serverside manually before they can be played. <a class="link-page exists" href="/gmod/util.PrecacheSound">util.PrecacheSound</a> does not work for this purpose, <a class="link-page exists" href="/gmod/Entity:EmitSound">Entity:EmitSound</a> does the trick</div></div>]]
---@param soundName string # The sound to play<p></p><br/><p>This should either be a sound script name (<a class="link-page exists" href="/gmod/sound.Add">sound.Add</a>) or a file path relative to the <code>sound/</code> folder. (Make note that it's not sound<strong>s</strong>)</p>
---@param position Vector # The position where the sound is meant to play, used only for a network  filter (<code>CPASAttenuationFilter</code>) to decide which players will hear the sound.
---@param entity number # The entity to emit the sound from. Can be an <a class="link-page exists" href="/gmod/Entity:EntIndex">Entity:EntIndex</a> or one of the following:<p></p><br/><ul><br/><li><code>0</code> - Plays sound on the world (position set to <code>0,0,0</code>)</li><br/><li><code>-1</code> - Plays sound on the local player (on server acts as <code>0</code>)</li><br/><li><code>-2</code> - Plays UI sound (position set to <code>0,0,0</code>, no spatial sound, on server acts as <code>0</code>)</li><br/></ul>
---@param channel number # The sound channel, see <a class="link-page exists" href="/gmod/Enums/CHAN">Enums/CHAN</a>.
---@param volume number # The volume of the sound, from 0 to 1
---@param soundLevel number # The sound level of the sound, see <a class="link-page exists" href="/gmod/Enums/SNDLVL">Enums/SNDLVL</a>
---@param soundFlags number # The flags of the sound, see <a class="link-page exists" href="/gmod/Enums/SND">Enums/SND</a>
---@param pitch number # The pitch of the sound, 0-255
---@param dsp number # The DSP preset for this sound. <a href="https://developer.valvesoftware.com/wiki/Dsp_presets">List of DSP presets</a>
function EmitSound(soundName, position, entity, channel, volume, soundLevel, soundFlags, pitch, dsp) end
--[[<p>Removes the currently active tool tip from the screen.</p>
]]
---@param panel Panel # This is the panel that has a tool tip.
function EndTooltip(panel) end
--[[<p>Returns the entity with the matching <a class="link-page exists" href="/gmod/Entity:EntIndex">Entity:EntIndex</a>.</p>
<p>Indices <code>1</code> through <a class="link-page exists" href="/gmod/game.MaxPlayers">game.MaxPlayers</a>() are always reserved for players.</p>
<div class="note"><div class="inner">In examples on this wiki, <code>Entity( 1 )</code> is used when a player entity is needed (see ). In singleplayer and listen servers, <code>Entity( 1 )</code> will always be the first player. In dedicated servers, however, <code>Entity( 1 )</code> won't always be a valid player if there is no one currently on the server.</div></div>]]
---@param entityIndex number # The entity index.
---@return Entity # The entity if it exists, or NULL if it doesn't.
function Entity(entityIndex) end
--[[<p>Throws a Lua error and breaks out of the current call stack.</p>
]]
---@param message string # The error message to throw
---@param errorLevel number # The level to throw the error at.
function error(message, errorLevel) end
--[[<p>Throws a Lua error but does not break out of the current call stack.
This function will not print a stack trace like a normal error would.
Essentially similar if not equivalent to <a class="link-page exists" href="/gmod/Global.Msg">Msg</a>.</p>
]]
---@param arguments vararg # Converts all arguments to strings and prints them with no spacing.
function ErrorNoHalt(arguments) end
--[[<p>Throws a Lua error but does not break out of the current call stack.</p>
<p>This function will print a stack trace like a normal error would.</p>
]]
---@param arguments vararg # Converts all arguments to strings and prints them with no spacing.
function ErrorNoHaltWithStack(arguments) end
--[[<p>Returns the angles of the current render context as calculated by <a class="link-page exists" href="/gmod/GM:CalcView">GM:CalcView</a>.</p>
<div class="bug"><div class="inner">This function is only reliable inside rendering hooks.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/2516">2516</a></div></div>]]
---@return Angle # The angle of the currently rendered scene.
function EyeAngles() end
--[[<p>Returns the origin of the current render context as calculated by <a class="link-page exists" href="/gmod/GM:CalcView">GM:CalcView</a>.</p>
<div class="bug"><div class="inner">This function is only reliable inside rendering hooks.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/2516">2516</a></div></div>]]
---@return Vector # Camera position.
function EyePos() end
--[[<p>Returns the normal vector of the current render context as calculated by <a class="link-page exists" href="/gmod/GM:CalcView">GM:CalcView</a>, similar to <a class="link-page exists" href="/gmod/Global.EyeAngles">EyeAngles</a>.</p>
<div class="bug"><div class="inner">This function is only reliable inside rendering hooks.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/2516">2516</a></div></div>]]
---@return Vector # View direction of the currently rendered scene.
function EyeVector() end
--[[<p>Returns the meta table for the class with the matching name.</p>
<p>Internally returns <a class="link-page exists" href="/gmod/debug.getregistry">debug.getregistry</a>()[metaName]</p>
<p>You can learn more about meta tables on the <a class="link-page exists" href="/gmod/Meta_Tables">Meta Tables</a> page.</p>
<p>You can find a list of meta tables that can be retrieved with this function on <a class="link-page exists" href="/gmod/Enums/TYPE">Enums/TYPE</a>. The name in the description is the string to use with this function.</p>
]]
---@param metaName string # The object type to retrieve the meta table of.
---@return table # The corresponding meta table.
function FindMetaTable(metaName) end
--[[<p>Returns the tool-tip text and tool-tip-panel (if any) of the given panel as well as itself</p>
]]
---@param panel Panel # Panel to find tool-tip of
---@return string # tool-tip text
---@return Panel # tool-tip panel
---@return Panel # panel that the function was called with
function FindTooltip(panel) end
--[[<p>Formats the specified values into the string given. Same as <a class="link-page exists" href="/gmod/string.format">string.format</a>.</p>
]]
---@param format string # The string to be formatted.<br/>Follows this format: <a href="http://www.cplusplus.com/reference/cstdio/printf/">http://www.cplusplus.com/reference/cstdio/printf/</a>
---@param formatParameters vararg # Values to be formatted into the string.
---@return string # The formatted string
function Format(format, formatParameters) end
--[[<p>Returns the number of frames rendered since the game was launched.</p>
]]
function FrameNumber() end
--[[<p>Returns the <a class="link-page exists" href="/gmod/Global.CurTime">CurTime</a>-based time in seconds it took to render the last frame.</p>
<p>This should be used for frame/tick based timing, such as movement prediction or animations.</p>
<p>For real-time-based frame time that isn't affected by host_timescale, use <a class="link-page exists" href="/gmod/Global.RealFrameTime">RealFrameTime</a>. RealFrameTime is more suited for things like GUIs or HUDs.</p>
]]
---@return number # time (in seconds)
function FrameTime() end
--[[<p>Callback function for when the client has joined a server. This function shows the server's loading URL by default.</p>
]]
---@param servername string # Server's name.
---@param serverurl string # Server's loading screen URL, or "" if the URL is not set.
---@param mapname string # Server's current map's name.
---@param maxplayers number # Max player count of server.
---@param steamid string # The local player's <a class="link-page exists" href="/gmod/Player:SteamID64">Player:SteamID64</a>.
---@param gamemode string # Server's current gamemode's folder name.
function GameDetails(servername, serverurl, mapname, maxplayers, steamid, gamemode) end
--[[<div class="deprecated"><div class="inner">We advise against using this. It may be changed or removed in a future update.

This function was deprecated in Lua 5.1 and is removed in Lua 5.2. Use <a class="link-page exists" href="/gmod/Global.collectgarbage">collectgarbage</a>( "count" ) instead.</div></div>
<p>Returns the current floored dynamic memory usage of Lua in kilobytes.</p>
]]
---@return number # The current floored dynamic memory usage of Lua, in kilobytes.
function gcinfo() end
--[[<div class="internal"><div class="inner">This is used internally - although you're able to use it you probably shouldn't.</div></div><div class="note"><div class="inner">All dates are in <a href="https://www.php.net/manual/en/datetime.formats.compound.php">WDDX</a> format</div></div>
<p>Gets miscellaneous information from Facepunches API.</p>
]]
---@param callback function # Callback to be called when the API request is done.<p></p><br/><p>Callback is called with one argument, a JSON which when converted into a table using <a class="link-page exists" href="/gmod/util.JSONToTable">util.JSONToTable</a> contains the following:</p><br/><div data-generationtime="1" class="code code-javascript">{<br/>	<span class="string">"ManifestVersion"</span>: 	number - Version of the manifest<br/><br/>	<span class="string">"Date"</span>: 			string - Date <span class="keyword">in</span> WDDX format<br/><br/>	<span class="comment">// Contains all the blog posts, the things in the top right of the menu</span><br/>	<span class="string">"News"</span>: {<br/>		<span class="string">"Blogs"</span>: [<br/><br/>			<span class="comment">// Structure of blog posts</span><br/>			{ <br/>				<span class="string">"Date"</span>: 		string - Date <span class="keyword">in</span> WDDX format of the post<br/>				<span class="string">"ShortName"</span>: 	string - Short name of the post, identifier of it on the blog website<br/>				<span class="string">"Title"</span>: 		string - Title of the post<br/>				<span class="string">"HeaderImage"</span>: 	string - Main image of the post, showed <span class="keyword">in</span> the top right<br/>				<span class="string">"SummaryHtml"</span>: 	string - Summary of the blogpost, text thats shown<br/>				<span class="string">"Url"</span>: 			string - URL to the post on the blog<br/>				<span class="string">"Tags"</span>: 		string - String of the posts tag<br/>			}<br/>		]<br/>	}<br/>	<br/>	<span class="comment">// Array of Facepunches Mods, Admins and Devs</span><br/>	<span class="string">"Administrators"</span>: [<br/>		{<br/>			<span class="string">"UserId"</span>: 		string - SteamID64 of the person<br/>			<span class="string">"Level"</span>: 		string - Level of the user (Administrator, Developer or Moderator)<br/>		}<br/>	]<br/><br/>	<span class="comment">// Unused and contains nothing useful</span><br/>	<span class="string">"Heroes"</span>: {}<br/><br/>	<span class="string">"SentryUrl"</span>: 		string - Nothing<br/>	<span class="string">"DatabaseUrl"</span> 		string - URL to the Facepunch API (/database/{action}/)<br/>	<span class="string">"FeedbackUrl"</span> 		string - URL to the Facepunch API (/feedback/add/)<br/>	<span class="string">"ReportUrl"</span> 		string - URL to the Facepunch API (/feedback/report/)<br/>	<span class="string">"LeaderboardUrl"</span> 	string - URL to the Facepunch API (/leaderboard/{action}/)<br/>	<span class="string">"BenchmarkUrl"</span> 		string - URL to the Facepunch API (/benchmark/add/)<br/>	<span class="string">"AccountUrl"</span> 		string - URL to the Facepunch API (/account/{action}/)<br/><br/>	<span class="string">"Servers"</span>: {<br/>		<span class="string">"Official"</span>: [] <span class="comment">// Nothing</span><br/>		<br/>		<span class="comment">// List of blacklisted servers</span><br/>		<span class="string">"Banned"</span>: [<br/>			string 	- IP of the blacklisted server<br/>		]<br/>	}<br/>}</div>
function GetAPIManifest(callback) end
--[[<p>Gets the <a class="link-page exists" href="/gmod/ConVar">ConVar</a> with the specified name.</p>
<div class="note"><div class="inner">This function uses <a class="link-page exists" href="/gmod/Global.GetConVar_Internal">GetConVar_Internal</a> internally, but caches the result in Lua for quicker lookups.</div></div>]]
---@param name string # Name of the ConVar to get
---@return ConVar # The <a class="link-page exists" href="/gmod/ConVar">ConVar</a> object, or nil if no such <a class="link-page exists" href="/gmod/ConVar">ConVar</a> was found.
function GetConVar(name) end
--[[<div class="internal"><div class="inner">This is used internally - although you're able to use it you probably shouldn't.</div></div>
<p>Gets the ConVar with the specified name. This function doesn't cache the convar.</p>
]]
---@param name string # Name of the ConVar to get
---@return ConVar # The ConVar object
function GetConVar_Internal(name) end
--[[<div class="deprecated"><div class="inner">We advise against using this. It may be changed or removed in a future update.

Store the <a class="link-page exists" href="/gmod/ConVar">ConVar</a> object retrieved with <a class="link-page exists" href="/gmod/Global.GetConVar">GetConVar</a> and call <a class="link-page exists" href="/gmod/ConVar:GetInt">ConVar:GetInt</a> or <a class="link-page exists" href="/gmod/ConVar:GetFloat">ConVar:GetFloat</a> on it.</div></div>
<p>Gets the numeric value ConVar with the specified name.</p>
]]
---@param name string # Name of the ConVar to get.
---@return number # The ConVar's value.
function GetConVarNumber(name) end
--[[<div class="deprecated"><div class="inner">We advise against using this. It may be changed or removed in a future update.

Store the <a class="link-page exists" href="/gmod/ConVar">ConVar</a> object retrieved with <a class="link-page exists" href="/gmod/Global.GetConVar">GetConVar</a> and call <a class="link-page exists" href="/gmod/ConVar:GetString">ConVar:GetString</a> on it.</div></div>
<p>Gets the string value ConVar with the specified name.</p>
]]
---@param name string # Name of the ConVar to get.
---@return string # The ConVar's value.
function GetConVarString(name) end
--[[<p>Returns the default loading screen URL (asset://garrysmod/html/loading.html)</p>
]]
---@return string # Default loading url (asset://garrysmod/html/loading.html)
function GetDefaultLoadingHTML() end
--[[<p>Retrieves data about the demo with the specified filename. Similar to <a class="link-page exists" href="/gmod/Global.GetSaveFileDetails">GetSaveFileDetails</a>.</p>
]]
---@param filename string # The file name of the demo.
---@return table # Demo data.
function GetDemoFileDetails(filename) end
--[[<p>Returns a table with the names of files needed from the server you are currently joining.</p>
]]
---@return table # table of file names
function GetDownloadables() end
--[[<p>Returns the environment table of either the stack level or the function specified.</p>
]]
---@param location function # The object to get the enviroment from. Can also be a number that specifies the function at that stack level: Level 1 is the function calling getfenv.
---@return table # The environment.
function getfenv(location) end
--[[<p>Returns an angle that is shared between the server and all clients.</p>
]]
---@param index string # The unique index to identify the global value with.
---@param default Angle # The value to return if the global value is not set.
---@return Angle # The global value, or default if the global is not set.
function GetGlobalAngle(index, default) end
--[[<p>Returns a boolean that is shared between the server and all clients.</p>
]]
---@param index string # The unique index to identify the global value with.
---@param default boolean # The value to return if the global value is not set.
---@return boolean # The global value, or the default if the global value is not set.
function GetGlobalBool(index, default) end
--[[<p>Returns an entity that is shared between the server and all clients.</p>
]]
---@param index string # The unique index to identify the global value with.
---@param default Entity # The value to return if the global value is not set.
---@return Entity # The global value, or the default if the global value is not set.
function GetGlobalEntity(index, default) end
--[[<p>Returns a float that is shared between the server and all clients.</p>
]]
---@param index string # The unique index to identify the global value with.
---@param default number # The value to return if the global value is not set.
---@return number # The global value, or the default if the global value is not set.
function GetGlobalFloat(index, default) end
--[[<p>Returns an integer that is shared between the server and all clients.</p>
<div class="bug"><div class="inner">This function will not round decimal values as it actually networks a float internally.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/3374">3374</a></div></div>]]
---@param index string # The unique index to identify the global value with.
---@param default number # The value to return if the global value is not set.
---@return number # The global value, or the default if the global value is not set.
function GetGlobalInt(index, default) end
--[[<p>Returns a string that is shared between the server and all clients.</p>
]]
---@param index string # The unique index to identify the global value with.
---@param default string # The value to return if the global value is not set.
---@return string # The global value, or the default if the global value is not set.
function GetGlobalString(index, default) end
--[[<p>Returns a vector that is shared between the server and all clients.</p>
]]
---@param Index string # The unique index to identify the global value with.
---@param Default Vector # The value to return if the global value is not set.
---@return Vector # The global value, or the default if the global value is not set.
function GetGlobalVector(Index, Default) end
--[[<p>Returns the name of the current server.</p>
]]
---@return string # The name of the server.
function GetHostName() end
--[[<p>Returns the panel that is used as a wrapper for the HUD. If you want your panel to be hidden when the main menu is opened, parent it to this. Child panels will also have their controls disabled.</p>
<p>See also <a class="link-page exists" href="/gmod/vgui.GetWorldPanel">vgui.GetWorldPanel</a></p>
]]
---@return Panel # The HUD panel
function GetHUDPanel() end
--[[<p>Returns the loading screen panel and creates it if it doesn't exist.</p>
]]
---@return Panel # The loading screen panel
function GetLoadPanel() end
--[[<p>Returns the current status of the server join progress.</p>
]]
---@return string # The current status
function GetLoadStatus() end
--[[<p>Returns a table with the names of all maps and categories that you have on your client.</p>
]]
---@return table # Table of map names and categories.
function GetMapList() end
--[[<p>Returns the metatable of an object. This function obeys the metatable's __metatable field, and will return that field if the metatable has it set.</p>
<p>Use <a class="link-page exists" href="/gmod/debug.getmetatable">debug.getmetatable</a> if you want the true metatable of the object.</p>
<p>If you want to modify the metatable, check out <a class="link-page exists" href="/gmod/Global.FindMetaTable">FindMetaTable</a></p>
]]
---@param object any # The value to return the metatable of.
---@return any # The metatable of the value. This is not always a table.
function getmetatable(object) end
--[[<p>Returns the menu overlay panel, a container for panels like the error panel created in <a class="link-page exists" href="/gmod/GM:OnLuaError">GM:OnLuaError</a>.</p>
]]
---@return Panel # The overlay panel
function GetOverlayPanel() end
--[[<p>Returns the player whose movement commands are currently being processed. The player this returns can safely have <a class="link-page exists" href="/gmod/Player:GetCurrentCommand">Player:GetCurrentCommand</a>() called on them. See <a class="link-page exists" href="/gmod/Prediction">Prediction</a>.</p>
]]
---@return Player # The player currently being predicted, or NULL if no command processing is currently being done.
function GetPredictionPlayer() end
--[[<p>Creates or gets the rendertarget with the given name.</p>
<p>See <a class="link-page exists" href="/gmod/Global.GetRenderTargetEx">GetRenderTargetEx</a> for an advanced version of this function with more options.</p>
<div class="bug"><div class="inner">This crashes when used on a cubemap texture.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/2885">2885</a></div></div><div class="note"><div class="inner">Calling this function is equivalent to<p></p>
<div data-generationtime="0" class="code code-lua"><span class="method"><a href="/gmod/Global.GetRenderTargetEx">GetRenderTargetEx</a></span>(name,
	width, height,
	RT_SIZE_NO_CHANGE,
	MATERIAL_RT_DEPTH_SEPARATE,
	<span class="className"><a href="/gmod/bit">bit</a></span>.<span class="method"><a href="/gmod/bit.bor">bor</a></span>(2, 256),
	0,
	IMAGE_FORMAT_BGRA8888
)</div></div></div>]]
---@param name string # The internal name of the render target.
---@param width number # The width of the render target, must be power of 2. If not set to PO2, the size will be automatically converted to the nearest PO2 size.
---@param height number # The height of the render target, must be power of 2. If not set to PO2, the size will be automatically converted to the nearest PO2 size.
---@return ITexture # The render target
function GetRenderTarget(name, width, height) end
--[[<p>Gets (or creates if it does not exist) the rendertarget with the given name, this function allows to adjust the creation of a rendertarget more than <a class="link-page exists" href="/gmod/Global.GetRenderTarget">GetRenderTarget</a>.</p>
<p>See also <a class="link-page exists" href="/gmod/render.PushRenderTarget">render.PushRenderTarget</a> and <a class="link-page exists" href="/gmod/render.SetRenderTarget">render.SetRenderTarget</a>.</p>
]]
---@param name string # The internal name of the render target.<p></p><br/><div class="warning"><div class="inner">The name is treated like a path and gets its extension discarded.<br>"name.1" and "name.2" are considered the same name and will result in the same render target being reused.</div></div>
---@param width number # The width of the render target, must be power of 2.
---@param height number # The height of the render target, must be power of 2.
---@param sizeMode number # Bitflag that influences the sizing of the render target, see <a class="link-page exists" href="/gmod/Enums/RT_SIZE">Enums/RT_SIZE</a>.
---@param depthMode number # Bitflag that determines the depth buffer usage of the render target <a class="link-page exists" href="/gmod/Enums/MATERIAL_RT_DEPTH">Enums/MATERIAL_RT_DEPTH</a>.
---@param textureFlags number # Bitflag that configurates the texture, see <a class="link-page exists" href="/gmod/Enums/TEXTUREFLAGS">Enums/TEXTUREFLAGS</a>.<p></p><br/><p>List of flags can also be found on the Valve's Developer Wiki:<br/><a href="https://developer.valvesoftware.com/wiki/Valve_Texture_Format">https://developer.valvesoftware.com/wiki/Valve_Texture_Format</a></p>
---@param rtFlags number # Flags that controll the HDR behaviour of the render target, see <a class="link-page exists" href="/gmod/Enums/CREATERENDERTARGETFLAGS">Enums/CREATERENDERTARGETFLAGS</a>.
---@param imageFormat number # Image format, see <a class="link-page exists" href="/gmod/Enums/IMAGE_FORMAT">Enums/IMAGE_FORMAT</a>.<p></p><br/><div class="note"><div class="inner">Some additional image formats are accepted, but don't have enums. See <a href="https://developer.valvesoftware.com/wiki/Valve_Texture_Format#VTF_enumerations">VTF Enumerations.</a></div></div>
---@return ITexture # The new render target.
function GetRenderTargetEx(name, width, height, sizeMode, depthMode, textureFlags, rtFlags, imageFormat) end
--[[<p>Retrieves data about the save with the specified filename. Similar to <a class="link-page exists" href="/gmod/Global.GetDemoFileDetails">GetDemoFileDetails</a>.</p>
]]
---@param filename string # The file name of the save.
---@return table # Save data.
function GetSaveFileDetails(filename) end
--[[<p>Returns if the client is timing out, and time since last ping from the server. Similar to the server side <a class="link-page exists" href="/gmod/Player:IsTimingOut">Player:IsTimingOut</a>.</p>
]]
---@return boolean # Is timing out?
---@return number # Get time since last pinged received.
function GetTimeoutInfo() end
--[[<p>Returns the entity the client is using to see from (such as the player itself, the camera, or another entity).</p>
]]
---@return Entity # The view entity.
function GetViewEntity() end
--[[<p>Converts a color from <a href="https://en.wikipedia.org/wiki/HSL_and_HSV">HSL color space</a> into RGB color space and returns a <a class="link-page exists" href="/gmod/Color">Color</a>.</p>
<div class="bug"><div class="inner">The returned color will not have the color metatable.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/2407">2407</a></div></div>]]
---@param hue number # The hue in degrees from 0-360.
---@param saturation number # The saturation from 0-1.
---@param value number # The lightness from 0-1.
---@return table # The <a class="link-page exists" href="/gmod/Color">Color</a> created from the HSL color space.
function HSLToColor(hue, saturation, value) end
--[[<p>Converts a color from <a href="https://en.wikipedia.org/wiki/HSL_and_HSV">HSV color space</a> into RGB color space and returns a <a class="link-page exists" href="/gmod/Color">Color</a>.</p>
<div class="bug"><div class="inner">The returned color will not have the color metatable.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/2407">2407</a></div></div>]]
---@param hue number # The hue in degrees from 0-360.
---@param saturation number # The saturation from 0-1.
---@param value number # The value from 0-1.
---@return table # The <a class="link-page exists" href="/gmod/Color">Color</a> created from the HSV color space.
function HSVToColor(hue, saturation, value) end
--[[<p>Launches an asynchronous http request with the given parameters.</p>
<div class="bug"><div class="inner">This cannot send or receive multiple headers with the same name.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/2232">2232</a></div></div><div class="note"><div class="inner">HTTP-requests to destinations on private networks (such as <code>192.168.0.1</code>) won't work.<br>
To enable HTTP-requests to destinations on private networks use <a class="link-page exists" href="/gmod/Command_Line_Parameters">Command Line Parameters</a> <code>-allowlocalhttp</code>.</div></div>]]
---@param parameters table # The request parameters. See <a class="link-page exists" href="/gmod/Structures/HTTPRequest">Structures/HTTPRequest</a>.
---@return boolean # <code>true</code> if we made a request, <code>nil</code> if we failed.
function HTTP(parameters) end
--[[<p>Executes a Lua script.</p>
<div class="note"><div class="inner">Addon files (.gma files) do not support relative parent folders (<code>..</code> notation).<p></p>
<p>This function will try to load local client file if <code>sv_allowcslua</code> is <strong>1</strong>.</p></div></div><div class="warning"><div class="inner">The file you are attempting to include <strong>MUST NOT</strong> be empty or the include will fail. Files over a certain size may fail as well.<p></p>
<p>If the file you are including is clientside or shared, it <strong>must</strong> be <a class="link-page exists" href="/gmod/Global.AddCSLuaFile">AddCSLuaFile</a>'d or this function will error saying the file doesn't exist.</p></div></div>]]
---@param fileName string # The name of the script to be executed. The path must be either relative to the current file, or be an absolute path (relative to and excluding the <strong>lua/</strong> folder).<p></p><br/><div class="note"><div class="inner">Please make sure your file names are unique, the filesystem is shared across all addons, so a file named <code>lua/config.lua</code> in your addon may be overwritten by the same file in another addon.</div></div>
---@return vararg # Anything that the executed Lua script returns.
function include(fileName) end
--[[<div class="deprecated"><div class="inner">We advise against using this. It may be changed or removed in a future update.

To send the target file to the client simply call AddCSLuaFile() in the target file itself.</div></div>
<p>This function works exactly the same as <a class="link-page exists" href="/gmod/Global.include">include</a> both clientside and serverside.</p>
<p>The only difference is that on the serverside it also calls <a class="link-page exists" href="/gmod/Global.AddCSLuaFile">AddCSLuaFile</a> on the filename, so that it gets sent to the client.</p>
]]
---@param filename string # The filename of the Lua file you want to include.
function IncludeCS(filename) end
--[[<p>Returns an iterator function for a for loop, to return ordered key-value pairs from a table.</p>
<p>This will only iterate though <strong>numerical</strong> keys, and these must also be <strong>sequential</strong>; starting at 1 with no gaps.</p>
<p>For unordered pairs, see <a class="link-page exists" href="/gmod/Global.pairs">pairs</a>.</p>
<p>For pairs sorted by key in alphabetical order, see <a class="link-page exists" href="/gmod/Global.SortedPairs">SortedPairs</a>.</p>
]]
---@param tab table # The table to iterate over.
---@return function # The iterator function.
---@return table # The table being iterated over.
---@return number # The origin index <strong>=0</strong>.
function ipairs(tab) end
--[[<p>Returns if the passed object is an <a class="link-page exists" href="/gmod/Angle">Angle</a>.</p>
]]
---@param variable any # The variable to perform the type check for.
---@return boolean # True if the variable is an <a class="link-page exists" href="/gmod/Angle">Angle</a>.
function isangle(variable) end
--[[<p>Returns if the passed object is a <a class="link-page exists" href="/gmod/boolean">boolean</a>.</p>
]]
---@param variable any # The variable to perform the type check for.
---@return boolean # True if the variable is a <a class="link-page exists" href="/gmod/boolean">boolean</a>.
function isbool(variable) end
--[[<p>Returns whether the given object does or doesn't have a <code>metatable</code> of a color.</p>
<div class="bug"><div class="inner">Engine functions (i.e. those not written in plain Lua) that return color objects do not currently set the color metatable and this function will return false if you use it on them.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/2407">2407</a></div></div>]]
---@param Object any # The object to be tested
---@return boolean # Whether the given object is a color or not
function IsColor(Object) end
--[[<p>Determines whether or not the provided console command will be blocked if it's ran through Lua functions, such as <a class="link-page exists" href="/gmod/Global.RunConsoleCommand">RunConsoleCommand</a> or <a class="link-page exists" href="/gmod/Player:ConCommand">Player:ConCommand</a>.</p>
<p>For more info on blocked console commands, check out <a class="link-page exists" href="/gmod/Blocked_ConCommands">Blocked ConCommands</a>.</p>
<div class="internal"><div class="inner">This is used internally - although you're able to use it you probably shouldn't.</div></div>]]
---@param name string # The console command to test.
---@return boolean # Whether the command will be blocked.
function IsConCommandBlocked(name) end
--[[<p>Returns if the given NPC class name is an enemy.</p>
<p>Returns true if the entity name is one of the following:</p>
<ul>
<li>"npc_antlion"</li>
<li>"npc_antlionguard"</li>
<li>"npc_antlionguardian"</li>
<li>"npc_barnacle"</li>
<li>"npc_breen"</li>
<li>"npc_clawscanner"</li>
<li>"npc_combine_s"</li>
<li>"npc_cscanner"</li>
<li>"npc_fastzombie"</li>
<li>"npc_fastzombie_torso"</li>
<li>"npc_headcrab"</li>
<li>"npc_headcrab_fast"</li>
<li>"npc_headcrab_poison"</li>
<li>"npc_hunter"</li>
<li>"npc_metropolice"</li>
<li>"npc_manhack"</li>
<li>"npc_poisonzombie"</li>
<li>"npc_strider"</li>
<li>"npc_stalker"</li>
<li>"npc_zombie"</li>
<li>"npc_zombie_torso"</li>
<li>"npc_zombine"</li>
</ul>
]]
---@param className string # Class name of the entity to check
---@return boolean # Is an enemy
function IsEnemyEntityName(className) end
--[[<p>Returns if the passed object is an <a class="link-page exists" href="/gmod/Entity">Entity</a>. Alias of <a class="link-page exists" href="/gmod/Global.isentity">isentity</a>.</p>
]]
---@param variable any # The variable to check.
---@return boolean # True if the variable is an <a class="link-page exists" href="/gmod/Entity">Entity</a>.
function IsEntity(variable) end
--[[<p>Returns if this is the first time this hook was predicted.</p>
<p>This is useful for one-time logic in your SWEPs PrimaryAttack, SecondaryAttack and Reload and other  (to prevent those hooks from being called rapidly in succession). It's also useful in a Move hook for when the client predicts movement.</p>
<p>Visit <a class="link-page exists" href="/gmod/Prediction">Prediction</a> for more information about this behavior.</p>
<div class="note"><div class="inner">This is already used internally for <a class="link-page exists" href="/gmod/Entity:EmitSound">Entity:EmitSound</a>, <a class="link-page exists" href="/gmod/Weapon:SendWeaponAnim">Weapon:SendWeaponAnim</a> and <a class="link-page exists" href="/gmod/Entity:FireBullets">Entity:FireBullets</a>, but NOT in  <a class="link-page exists" href="/gmod/util.Effect">util.Effect</a>.</div></div>]]
---@return boolean # Whether or not this is the first time being predicted.
function IsFirstTimePredicted() end
--[[<p>Returns if the given NPC class name is a friend.</p>
<p>Returns true if the entity name is one of the following:</p>
<ul>
<li>"npc_alyx"</li>
<li>"npc_barney"</li>
<li>"npc_citizen"</li>
<li>"npc_dog"</li>
<li>"npc_eli"</li>
<li>"npc_fisherman"</li>
<li>"npc_gman"</li>
<li>"npc_kleiner"</li>
<li>"npc_magnusson"</li>
<li>"npc_monk"</li>
<li>"npc_mossman"</li>
<li>"npc_odessa"</li>
<li>"npc_vortigaunt"</li>
</ul>
]]
---@param className string # Class name of the entity to check
---@return boolean # Is a friend
function IsFriendEntityName(className) end
--[[<p>Returns if the passed object is a <a class="link-page exists" href="/gmod/function">function</a>.</p>
]]
---@param variable any # The variable to perform the type check for.
---@return boolean # True if the variable is a <a class="link-page exists" href="/gmod/function">function</a>.
function isfunction(variable) end
--[[<p>Returns true if the client is currently playing either a singleplayer or multiplayer game.</p>
]]
---@return boolean # True if we are in a game.
function IsInGame() end
--[[<p>Returns whether the passed object is a <a class="link-page exists" href="/gmod/VMatrix">VMatrix</a>.</p>
]]
---@param variable any # The variable to perform the type check for.
---@return boolean # True if the variable is a <a class="link-page exists" href="/gmod/VMatrix">VMatrix</a>.
function ismatrix(variable) end
--[[<p>Checks whether or not a game is currently mounted. Uses data given by <a class="link-page exists" href="/gmod/engine.GetGames">engine.GetGames</a>.</p>
]]
---@param game string # The game string/app ID to check.
---@return boolean # True if the game is mounted.
function IsMounted(game) end
--[[<p>Returns if the passed object is a <a class="link-page exists" href="/gmod/number">number</a>.</p>
]]
---@param variable any # The variable to perform the type check for.
---@return boolean # True if the variable is a <a class="link-page exists" href="/gmod/number">number</a>.
function isnumber(variable) end
--[[<p>Returns if the passed object is a <a class="link-page exists" href="/gmod/Panel">Panel</a>.</p>
]]
---@param variable any # The variable to perform the type check for.
---@return boolean # True if the variable is a <a class="link-page exists" href="/gmod/Panel">Panel</a>.
function ispanel(variable) end
--[[<p>Returns if the passed object is a <a class="link-page exists" href="/gmod/string">string</a>.</p>
]]
---@param variable any # The variable to perform the type check for.
---@return boolean # True if the variable is a <a class="link-page exists" href="/gmod/string">string</a>.
function isstring(variable) end
--[[<p>Returns if the passed object is a <a class="link-page exists" href="/gmod/table">table</a>.</p>
<div class="note"><div class="inner">Will return TRUE for variables of type <a class="link-page exists" href="/gmod/Color">Color</a></div></div>]]
---@param variable any # The variable to perform the type check for.
---@return boolean # True if the variable is a <a class="link-page exists" href="/gmod/table">table</a>.
function istable(variable) end
--[[<p>Returns whether or not every element within a table is a valid entity</p>
]]
---@param table table # Table containing entities to check
---@return boolean # All entities valid
function IsTableOfEntitiesValid(table) end
--[[<p>Returns whether or not a model is useless by checking that the file path is that of a proper model.</p>
<p>If the string ".mdl" is not found in the model name, the function will return true.</p>
<p>The function will also return true if any of the following strings are found in the given model name:</p>
<ul>
<li>"_gesture"</li>
<li>"_anim"</li>
<li>"_gst"</li>
<li>"_pst"</li>
<li>"_shd"</li>
<li>"_ss"</li>
<li>"_posture"</li>
<li>"_anm"</li>
<li>"ghostanim"</li>
<li>"_paths"</li>
<li>"_shared"</li>
<li>"anim_"</li>
<li>"gestures_"</li>
<li>"shared_ragdoll_"</li>
</ul>
]]
---@param modelName string # The model name to be checked
---@return boolean # Whether or not the model is useless
function IsUselessModel(modelName) end
--[[<p>Returns whether an object is valid or not. (Such as <a class="link-page exists" href="/gmod/Entity">Entity</a>s, <a class="link-page exists" href="/gmod/Panel">Panel</a>s, custom <a class="link-page exists" href="/gmod/table">table</a> objects and more).
Checks that an object is not nil, has an IsValid method and if this method returns true.</p>
<div class="note"><div class="inner">Due to vehicles being technically valid the moment they're spawned, also use <a class="link-page exists" href="/gmod/Vehicle:IsValidVehicle">Vehicle:IsValidVehicle</a> to make sure they're fully initialized</div></div>]]
---@param toBeValidated any # The table or object to be validated.
---@return boolean # True if the object is valid.
function IsValid(toBeValidated) end
--[[<p>Returns if the passed object is a <a class="link-page exists" href="/gmod/Vector">Vector</a>.</p>
]]
---@param variable any # The variable to perform the type check for.
---@return boolean # True if the variable is a <a class="link-page exists" href="/gmod/Vector">Vector</a>.
function isvector(variable) end
--[[<p>Joins the server with the specified IP.</p>
]]
---@param IP string # The IP of the server to join
function JoinServer(IP) end
--[[<p>Adds javascript function 'language.Update' to an HTML panel as a method to call Lua's <a class="link-page exists" href="/gmod/language.GetPhrase">language.GetPhrase</a> function.</p>
]]
---@param htmlPanel Panel # Panel to add javascript function 'language.Update' to.
function JS_Language(htmlPanel) end
--[[<p>Adds javascript function 'util.MotionSensorAvailable' to an HTML panel as a method to call Lua's <a class="link-page exists" href="/gmod/motionsensor.IsAvailable">motionsensor.IsAvailable</a> function.</p>
]]
---@param htmlPanel Panel # Panel to add javascript function 'util.MotionSensorAvailable' to.
function JS_Utility(htmlPanel) end
--[[<p>Adds workshop related javascript functions to an HTML panel, used by the "Dupes" and "Saves" tabs in the spawnmenu.</p>
]]
---@param htmlPanel Panel # Panel to add javascript functions to.
function JS_Workshop(htmlPanel) end
--[[<p>Convenience function that creates a <a class="link-page exists" href="/gmod/DLabel">DLabel</a>, sets the text, and returns it</p>
]]
---@param text string # The string to set the label's text to
---@param parent Panel # Optional. The panel to parent the DLabel to
---@return Panel # The created <a class="link-page exists" href="/gmod/DLabel">DLabel</a>
function Label(text, parent) end
--[[<p>Callback function for when the client's language changes. Called by the engine.</p>
]]
---@param lang string # The new language code.
function LanguageChanged(lang) end
--[[<p>Performs a linear interpolation from the start number to the end number.</p>
<p>This function provides a very efficient and easy way to smooth out movements.</p>
<div class="note"><div class="inner">This function is not meant to be used with constant value in the first argument, if you're dealing with animation! Use a value that changes over time. See example for <strong>proper</strong> usage of Lerp for animations.</div></div>]]
---@param t number # The fraction for finding the result. This number is clamped between 0 and 1. Shouldn't be a constant.
---@param from number # The starting number. The result will be equal to this if delta is 0.
---@param to number # The ending number. The result will be equal to this if delta is 1.
---@return number # The result of the linear interpolation, <code>from + (to - from) * t</code>.
function Lerp(t, from, to) end
--[[<p>Returns point between first and second angle using given fraction and linear interpolation</p>
<div class="note"><div class="inner">This function is not meant to be used with constant value in the first argument, if you're dealing with animation! Use a value that changes over time</div></div>]]
---@param ratio number # Ratio of progress through values
---@param angleStart Angle # Angle to begin from
---@param angleEnd Angle # Angle to end at
---@return Angle # angle
function LerpAngle(ratio, angleStart, angleEnd) end
--[[<p>Linear interpolation between two vectors. It is commonly used to smooth movement between two vectors</p>
<div class="note"><div class="inner">This function is not meant to be used with constant value in the first argument, if you're dealing with animation! Use a value that changes over time</div></div>]]
---@param fraction number # Fraction ranging from 0 to 1
---@param from Vector # The initial Vector
---@param to Vector # The desired Vector
---@return Vector # The lerped vector.
function LerpVector(fraction, from, to) end
--[[<p>Returns the contents of <code>addonpresets.txt</code> located in the <code>garrysmod/settings</code> folder. By default, this file stores your addon presets as JSON.</p>
<p>You can use <a class="link-page exists" href="/gmod/Global.SaveAddonPresets">SaveAddonPresets</a> to modify this file.</p>
]]
---@return string # The contents of the file.
function LoadAddonPresets() end
--[[<div class="internal"><div class="inner">This is used internally - although you're able to use it you probably shouldn't.</div></div>
<p>This function is used to get the last map and category to which the map belongs from the cookie saved with <a class="link-page exists" href="/gmod/Global.SaveLastMap">SaveLastMap</a>.</p>
]]
function LoadLastMap() end
--[[<p>Loads all preset settings for the <a class="link-page exists" href="/gmod/presets">presets</a> and returns them in a table</p>
]]
---@return table # Preset data
function LoadPresets() end
--[[<p>Returns a localisation for the given token, if none is found it will return the default (second) parameter.</p>
]]
---@param localisationToken string # The token to find a translation for.
---@param default string # The default value to be returned if no translation was found.
function Localize(localisationToken, default) end
--[[<p>Returns the player object of the current client.</p>
<div class="note"><div class="inner">LocalPlayer() will return NULL until all entities have been initialized. See <a class="link-page exists" href="/gmod/GM:InitPostEntity">GM:InitPostEntity</a>.</div></div>]]
---@return Player # The player object representing the client.
function LocalPlayer() end
--[[<p>Translates the specified position and angle from the specified local coordinate system into worldspace coordinates.</p>
<p>If you're working with an entity's local vectors, use <a class="link-page exists" href="/gmod/Entity:LocalToWorld">Entity:LocalToWorld</a> and/or <a class="link-page exists" href="/gmod/Entity:LocalToWorldAngles">Entity:LocalToWorldAngles</a> instead.</p>
<p>See also: <a class="link-page exists" href="/gmod/Global.WorldToLocal">WorldToLocal</a>, the reverse of this function.</p>
]]
---@param localPos Vector # The position vector in the source coordinate system, that should be translated to world coordinates
---@param localAng Angle # The angle in the source coordinate system, that should be converted to a world angle. If you don't need to convert an angle, you can supply an arbitrary valid angle (e.g. <a class="link-page exists" href="/gmod/Global.Angle">Angle</a>()).
---@param originPos Vector # The origin point of the source coordinate system, in world coordinates
---@param originAngle Angle # The angles of the source coordinate system, as a world angle
---@return Vector # The world position of the supplied local position.
---@return Angle # The world angles of the supplied local angle.
function LocalToWorld(localPos, localAng, originPos, originAngle) end
--[[<p>Either returns the material with the given name, or loads the material interpreting the first argument as the path.</p>
<div class="note"><div class="inner">When using .png or .jpg textures, try to make their sizes Power Of 2 (1, 2, 4, 8, 16, 32, 64, etc). While images are no longer scaled to Power of 2 sizes since February 2019, it is a good practice for things like icons, etc.</div></div><div class="warning"><div class="inner">This function is very expensive when used in rendering hooks or in operations requiring very frequent calls. It is better to store the Material in a variable (like in examples).</div></div>]]
---@param materialName string # The material name or path. The path is relative to the <code>materials/</code> folder. You do not need to add <code>materials/</code> to your path.<p></p><br/><p>To retrieve a Lua material created with <a class="link-page exists" href="/gmod/Global.CreateMaterial">CreateMaterial</a>, just prepend a <code>!</code> to the material name.</p><br/><div class="note"><div class="inner">Since paths are relative to the materials folder, resource paths like ../data/MyImage.jpg will work since <code>..</code> translates to moving up a parent directory in the file tree.</div></div><br/><p>.</p>
---@param pngParameters string # A string containing space separated keywords which will be used to add material parameters.<p></p><br/><p>See <a class="link-page exists" href="/gmod/Material_Parameters">Material Parameters</a> for more information.</p><br/><div class="note"><div class="inner">This feature only works when importing .png or .jpeg image files.</div></div>
---@return IMaterial # Generated material.
---@return number # How long it took for the function to run.
function Material(materialName, pngParameters) end
--[[<p>Returns a <a class="link-page exists" href="/gmod/VMatrix">VMatrix</a> object.</p>
]]
---@param data table # Initial data to initialize the matrix with. Leave empty to initialize an identity matrix. See examples for usage.<p></p><br/><p>Can be a <a class="link-page exists" href="/gmod/VMatrix">VMatrix</a> to copy its data.</p>
---@return VMatrix # New matrix.
function Matrix(data) end
--[[<p>Returns a new mesh object.</p>
]]
---@param mat IMaterial # The material the mesh is intended to be rendered with. It's merely a hint that tells that mesh what vertex format it should use.
---@return IMesh # The created object.
function Mesh(mat) end
--[[<p>Runs <a class="link-page exists" href="/gmod/util.PrecacheModel">util.PrecacheModel</a> and returns the string.</p>
]]
---@param model string # The model to precache.
---@return string # The same string entered as an argument.
function Model(model) end
--[[<p>Creates a table with the specified module name and sets the function environment for said table.</p>
<p>Any passed loaders are called with the table as an argument. An example of this is <a class="link-page exists" href="/gmod/package.seeall">package.seeall</a>.</p>
]]
---@param name string # The name of the module. This will be used to access the module table in the runtime environment.
---@param loaders vararg # Calls each function passed with the new table as an argument.
function module(name, loaders) end
--[[<p>Writes every given argument to the console.</p>
<p>Automatically attempts to convert each argument to a string. (See <a class="link-page exists" href="/gmod/Global.tostring">tostring</a>)</p>
<p>Unlike <a class="link-page exists" href="/gmod/Global.print">print</a>, arguments are not separated by anything. They are simply concatenated.</p>
<p>Additionally, a newline isn't added automatically to the end, so subsequent Msg or print operations will continue the same line of text in the console. See <a class="link-page exists" href="/gmod/Global.MsgN">MsgN</a> for a version that does add a newline.</p>
<p>The text is blue on the server, orange on the client, and green on the menu: <img class="image" src="//files.facepunch.com/wiki/files/msg_server_client_colors.png"></p>
]]
---@param args vararg # List of values to print.
function Msg(args) end
--[[<p>Works exactly like <a class="link-page exists" href="/gmod/Global.Msg">Msg</a> except that, if called on the server, will print to all players consoles plus the server console.</p>
]]
---@param args vararg # List of values to print.
function MsgAll(args) end
--[[<p>Just like <a class="link-page exists" href="/gmod/Global.Msg">Msg</a>, except it can also print colored text, just like <a class="link-page exists" href="/gmod/chat.AddText">chat.AddText</a>.</p>
]]
---@param args vararg # Values to print. If you put in a color, all text after that color will be printed in that color.
function MsgC(args) end
--[[<p>Same as <a class="link-page exists" href="/gmod/Global.print">print</a>, except it concatinates the arguments without inserting any whitespace in between them.</p>
<p>See also <a class="link-page exists" href="/gmod/Global.Msg">Msg</a>, which doesn't add a newline (<code>"\n"</code>) at the end.</p>
]]
---@param args vararg # List of values to print. They can be of any type and will be converted to strings with <a class="link-page exists" href="/gmod/Global.tostring">tostring</a>.
function MsgN(args) end
--[[<p>Returns named color defined in resource/ClientScheme.res.</p>
]]
---@param name string # Name of color
---@return table # A <a class="link-page exists" href="/gmod/Color">Color</a> or nil
function NamedColor(name) end
--[[<p>Returns a new userdata object.</p>
]]
---@param addMetatable boolean # If true, the userdata will get its own metatable automatically. If another newproxy is passed, it will create new one and copy its metatable.
---@return userdata # The newly created userdata.
function newproxy(addMetatable) end
--[[<p>Returns the next key and value pair in a table.</p>
<div class="note"><div class="inner">Table keys in Lua have no specific order, and will be returned in whatever order they exist in memory. This may not always be in ascending order or alphabetical order. If you need to iterate over an array in order, use <a class="link-page exists" href="/gmod/Global.ipairs">ipairs</a>.</div></div>]]
---@param tab table # The table
---@param prevKey any # The previous key in the table.
---@return any # The next key for the table. If the previous key was nil, this will be the first key in the table. If the previous key was the last key in the table, this will be nil.
---@return any # The value associated with that key. If the previous key was the last key in the table, this will be nil.
function next(tab, prevKey) end
--[[<p>Returns the number of files needed from the server you are currently joining.</p>
]]
---@return number # The number of downloadables
function NumDownloadables() end
--[[<p>Returns the amount of skins the specified model has.</p>
<p>See also <a class="link-page exists" href="/gmod/Entity:SkinCount">Entity:SkinCount</a> if you have an entity.</p>
]]
---@param modelName string # Model to return amount of skins of
---@return number # Amount of skins
function NumModelSkins(modelName) end
--[[<div class="internal"><div class="inner">This is used internally - although you're able to use it you probably shouldn't.</div></div>
<p>Called by the engine when a model has been loaded. Caches model information with the <a class="link-page exists" href="/gmod/sql">sql</a>.</p>
]]
---@param modelName string # Name of the model.
---@param numPostParams number # Number of pose parameters the model has.
---@param numSeq number # Number of sequences the model has.
---@param numAttachments number # Number of attachments the model has.
---@param numBoneControllers number # Number of bone controllers the model has.
---@param numSkins number # Number of skins that the model has.
---@param size number # Size of the model.
function OnModelLoaded(modelName, numPostParams, numSeq, numAttachments, numBoneControllers, numSkins, size) end
--[[<p>Opens a folder with the given name in the garrysmod folder using the operating system's file browser.</p>
<div class="bug"><div class="inner">This does not work on OSX or Linux.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/1532">1532</a></div></div>]]
---@param folder string # The subdirectory to open in the garrysmod folder.
function OpenFolder(folder) end
--[[<p>Modifies the given vectors so that all of vector2's axis are larger than vector1's by switching them around. Also known as ordering vectors.</p>
<div class="note"><div class="inner">This function will irreversibly modify the given vectors</div></div>]]
---@param vector1 Vector # Bounding box min resultant
---@param vector2 Vector # Bounding box max resultant
function OrderVectors(vector1, vector2) end
--[[<p>Returns an iterator function(<a class="link-page exists" href="/gmod/Global.next">next</a>) for a for loop that will return the values of the specified table in an arbitrary order.</p>
<ul>
<li>For alphabetical <strong>key</strong> order use <a class="link-page exists" href="/gmod/Global.SortedPairs">SortedPairs</a>.</li>
<li>For alphabetical <strong>value</strong> order use <a class="link-page exists" href="/gmod/Global.SortedPairsByValue">SortedPairsByValue</a>.</li>
</ul>
]]
---@param tab table # The table to iterate over.
---@return function # The iterator (<a class="link-page exists" href="/gmod/Global.next">next</a>).
---@return table # The table being iterated over.
---@return any # <strong>nil</strong> (for the constructor).
function pairs(tab) end
--[[<p>Calls <a class="link-page exists" href="/gmod/game.AddParticles">game.AddParticles</a> and returns given string.</p>
]]
---@param file string # The particle file.
---@return string # The particle file.
function Particle(file) end
--[[<p>Creates a particle effect.</p>
<div class="note"><div class="inner">The particle effect must be precached with <a class="link-page exists" href="/gmod/Global.PrecacheParticleSystem">PrecacheParticleSystem</a> and the file its from must be added via <a class="link-page exists" href="/gmod/game.AddParticles">game.AddParticles</a> before it can be used!</div></div>]]
---@param particleName string # The name of the particle effect.
---@param position Vector # The start position of the effect.
---@param angles Angle # The orientation of the effect.
---@param parent Entity # If set, the particle will be parented to the entity.
function ParticleEffect(particleName, position, angles, parent) end
--[[<p>Creates a particle effect with specialized parameters.</p>
<div class="note"><div class="inner">The particle effect must be precached with <a class="link-page exists" href="/gmod/Global.PrecacheParticleSystem">PrecacheParticleSystem</a> and the file its from must be added via <a class="link-page exists" href="/gmod/game.AddParticles">game.AddParticles</a> before it can be used!</div></div>]]
---@param particleName string # The name of the particle effect.
---@param attachType number # Attachment type using <a class="link-page exists" href="/gmod/Enums/PATTACH">Enums/PATTACH</a>.
---@param entity Entity # The entity to be used in the way specified by the attachType.
---@param attachmentID number # The id of the attachment to be used in the way specified by the attachType.
function ParticleEffectAttach(particleName, attachType, entity, attachmentID) end
--[[<p>Creates a new <a class="link-page exists" href="/gmod/CLuaEmitter">CLuaEmitter</a>.</p>
<div class="note"><div class="inner">Do not forget to delete the emitter with <a class="link-page exists" href="/gmod/CLuaEmitter:Finish">CLuaEmitter:Finish</a> once you are done with it</div></div>]]
---@param position Vector # The start position of the emitter.<p></p><br/><p>This is only used to determine particle drawing order for translucent particles.</p>
---@param use3D boolean # Whenever to render the particles in 2D or 3D mode.
---@return CLuaEmitter # The new particle emitter.
function ParticleEmitter(position, use3D) end
--[[<p>Creates a path for the bot to follow</p>
]]
---@param type string # The name of the path to create.<br/>This is going to be "Follow" or "Chase" right now.
---@return PathFollower # The path
function Path(type) end
--[[<p>Calls a function and catches an error that can be thrown while the execution of the call.</p>
<div class="bug"><div class="inner">This cannot stop errors from hooks called from the engine.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/2036">2036</a></div></div><div class="bug"><div class="inner">This does not stop <a class="link-page exists" href="/gmod/Global.Error">Error</a> and <a class="link-page exists" href="/gmod/Global.ErrorNoHalt">ErrorNoHalt</a> from sending error messages to the server (if called clientside) or calling the <a class="link-page exists" href="/gmod/GM:OnLuaError">GM:OnLuaError</a> hook. The success boolean returned will always return true and thus you will not get the error message returned. <a class="link-page exists" href="/gmod/Global.error">error</a> does not exhibit these behaviours.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/2498">2498</a></div></div><div class="bug"><div class="inner">This does not stop errors incurred by <a class="link-page exists" href="/gmod/Global.include">include</a>.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/3112">3112</a></div></div>]]
---@param func function # Function to be executed and of which the errors should be caught of
---@param arguments vararg # Arguments to call the function with.
---@return boolean # If the function had no errors occur within it.
---@return vararg # If an error occurred, this will be a string containing the error message. Otherwise, this will be the return values of the function passed in.
function pcall(func, arguments) end
--[[<p>Returns the player with the matching <a class="link-page exists" href="/gmod/Player:UserID">Player:UserID</a>.</p>
<p>For a function that returns a player based on their <a class="link-page exists" href="/gmod/Entity:EntIndex">Entity:EntIndex</a>, see <a class="link-page exists" href="/gmod/Global.Entity">Entity</a>.</p>
<p>For a function that returns a player based on their connection ID, see <a class="link-page exists" href="/gmod/player.GetByID">player.GetByID</a>.</p>
]]
---@param playerIndex number # The player index.
---@return Player # The retrieved player.
function Player(playerIndex) end
--[[<p>Moves the given model to the given position and calculates appropriate camera parameters for rendering the model to an icon.</p>
<p>The output table interacts nicely with <a class="link-page exists" href="/gmod/Panel:RebuildSpawnIconEx">Panel:RebuildSpawnIconEx</a> with a few key renames.</p>
]]
---@param model Entity # Model that is being rendered to the spawn icon
---@param position Vector # Position that the model is being rendered at
---@param noAngles boolean # If true the function won't reset the angles to 0 for the model.
---@return table # Table of information of the view which can be used for rendering
function PositionSpawnIcon(model, position, noAngles) end
--[[<p>Precaches the particle with the specified name.</p>
]]
---@param particleSystemName string # The name of the particle system.
function PrecacheParticleSystem(particleSystemName) end
--[[<p>Precaches a scene file.</p>
]]
---@param scene string # Path to the scene file to precache.
function PrecacheScene(scene) end
--[[<p>Load and precache a custom sentence file.</p>
]]
---@param filename string # The path to the custom sentences.txt.
function PrecacheSentenceFile(filename) end
--[[<p>Precache a sentence group in a sentences.txt definition file.</p>
]]
---@param group string # The group to precache.
function PrecacheSentenceGroup(group) end
--[[<p>Writes every given argument to the console.
Automatically attempts to convert each argument to a string. (See <a class="link-page exists" href="/gmod/Global.tostring">tostring</a>)</p>
<p>Seperates lines with a line break (<code>"\n"</code>)</p>
<p>Separates arguments with a tab character (<code>"\t"</code>).</p>
]]
---@param args vararg # List of values to print.
function print(args) end
--[[<p>Displays a message in the chat, console, or center of screen of every player.</p>
<p>This uses the archaic user message system (<a class="link-page exists" href="/gmod/umsg">umsg</a>) and hence is limited to ≈250 characters.</p>
]]
---@param type number # Which type of message should be sent to the players (see <a class="link-page exists" href="/gmod/Enums/HUD">Enums/HUD</a>)
---@param message string # Message to be sent to the players
function PrintMessage(type, message) end
--[[<p>Recursively prints the contents of a table to the console.</p>
]]
---@param tableToPrint table # The table to be printed
---@param indent number # Number of tabs to start indenting at. Increases by 2 when entering another table.
---@param done table # Internal argument, you shouldn't normally change this. Used to check if a nested table has already been printed so it doesn't get caught in a loop.
function PrintTable(tableToPrint, indent, done) end
--[[<p>Creates a new <a class="link-page exists" href="/gmod/ProjectedTexture">ProjectedTexture</a>.</p>
]]
---@return ProjectedTexture # Newly created projected texture.
function ProjectedTexture() end
--[[<p>Runs a function without stopping the whole script on error.</p>
<p>This function is similar to <a class="link-page exists" href="/gmod/Global.pcall">pcall</a> and <a class="link-page exists" href="/gmod/Global.xpcall">xpcall</a> except the errors are still printed and sent to the error handler (i.e. sent to server console if clientside and <a class="link-page exists" href="/gmod/GM:OnLuaError">GM:OnLuaError</a> called).</p>
]]
---@param func function # Function to run
---@return boolean # Whether the function executed successfully or not
function ProtectedCall(func) end
--[[<p>Returns an iterator function that can be used to loop through a table in random order</p>
]]
---@param table table # Table to create iterator for
---@param descending boolean # Whether the iterator should iterate descending or not
---@return function # Iterator function
function RandomPairs(table, descending) end
--[[<p>Compares the two values without calling their __eq operator.</p>
]]
---@param value1 any # The first value to compare.
---@param value2 any # The second value to compare.
---@return boolean # Whether or not the two values are equal.
function rawequal(value1, value2) end
--[[<p>Gets the value with the specified key from the table without calling the __index method.</p>
]]
---@param table table # Table to get the value from.
---@param index any # The index to get the value from.
---@return any # The value.
function rawget(table, index) end
--[[<p>Sets the value with the specified key from the table without calling the __newindex method.</p>
]]
---@param table table # Table to get the value from.
---@param index any # The index to get the value from.
---@param value any # The value to set for the specified key.
function rawset(table, index, value) end
--[[<p>Returns the real frame-time which is unaffected by host_timescale. To be used for GUI effects (for example)</p>
]]
---@return number # Real frame time
function RealFrameTime() end
--[[<p>Returns the uptime of the game/server in seconds (to at least <strong>4</strong> decimal places). This value updates itself once every time the realm thinks. For servers, this is the server tickrate. For clients, its their current FPS.</p>
<div class="note"><div class="inner">This is <strong>not</strong> synchronised or affected by the game.<p></p>
<p>This will be affected by precision loss if the uptime is more than 30+(?) days, and effectively cease to be functional after 50+(?) days.</p>
<p>Changing the map will <strong>not</strong> fix it like it does with <a class="link-page exists" href="/gmod/Global.CurTime">CurTime</a>. A server restart is necessary.</p></div></div>
<p>You should use this function (or <a class="link-page exists" href="/gmod/Global.SysTime">SysTime</a>) for timing real-world events such as user interaction, but not for timing game events such as animations.</p>
<p>See also: <a class="link-page exists" href="/gmod/Global.CurTime">CurTime</a>, <a class="link-page exists" href="/gmod/Global.SysTime">SysTime</a></p>
]]
---@return number # Uptime of the game/server.
function RealTime() end
--[[<p>Creates a new <a class="link-page exists" href="/gmod/CRecipientFilter">CRecipientFilter</a>.</p>
]]
---@param unreliable boolean # If set to true, makes the filter unreliable.<p></p><br/><p>This means, when sending over the network in cases like <a class="link-page exists" href="/gmod/Global.CreateSound">CreateSound</a> (and its subsequent updates), the message is not guaranteed to reach all clients.</p>
---@return CRecipientFilter # The new created recipient filter.
function RecipientFilter(unreliable) end
--[[<div class="internal"><div class="inner">This is used internally - although you're able to use it you probably shouldn't.</div></div>
<p>Adds a frame to the currently recording demo.</p>
]]
function RecordDemoFrame() end
--[[<p>Registers a Derma element to be closed the next time <a class="link-page exists" href="/gmod/Global.CloseDermaMenus">CloseDermaMenus</a> is called</p>
]]
---@param menu Panel # Menu to be registered for closure
function RegisterDermaMenuForClose(menu) end
--[[<p>Saves position of your cursor on screen. You can restore it by using
<a class="link-page exists" href="/gmod/Global.RestoreCursorPosition">RestoreCursorPosition</a>.</p>
]]
function RememberCursorPosition() end
--[[<p>Does the removing of the tooltip panel. Called by <a class="link-page exists" href="/gmod/Global.EndTooltip">EndTooltip</a>.</p>
]]
function RemoveTooltip() end
--[[<p>Returns the angle that the clients view is being rendered at</p>
]]
---@return Angle # Render Angles
function RenderAngles() end
--[[<p>Renders a Depth of Field effect</p>
]]
---@param origin Vector # Origin to render the effect at
---@param angle Angle # Angle to render the effect at
---@param usableFocusPoint Vector # Point to focus the effect at
---@param angleSize number # Angle size of the effect
---@param radialSteps number # Amount of radial steps to render the effect with
---@param passes number # Amount of render passes
---@param spin boolean # Whether to cycle the frame or not
---@param inView table # Table of view data
---@param fov number # FOV to render the effect with
function RenderDoF(origin, angle, usableFocusPoint, angleSize, radialSteps, passes, spin, inView, fov) end
--[[<p>Renders the stereoscopic post-process effect</p>
]]
---@param viewOrigin Vector # Origin to render the effect at
---@param viewAngles Angle # Angles to render the effect at
function RenderStereoscopy(viewOrigin, viewAngles) end
--[[<p>Renders the Super Depth of Field post-process effect</p>
]]
---@param viewOrigin Vector # Origin to render the effect at
---@param viewAngles Angle # Angles to render the effect at
---@param viewFOV number # Field of View to render the effect at
function RenderSuperDoF(viewOrigin, viewAngles, viewFOV) end
--[[<p>First tries to load a binary module with the given name, if unsuccessful, it tries to load a Lua module with the given name.</p>
<div class="bug"><div class="inner">Running this function with <a class="link-page exists" href="/gmod/Global.pcall">pcall</a> or <a class="link-page exists" href="/gmod/Global.xpcall">xpcall</a> will still print an error that counts towards sv_kickerrornum.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/1041">1041</a></div></div><div class="note"><div class="inner">This function will try to load local client file if <code>sv_allowcslua</code> is <strong>1</strong></div></div><div class="note"><div class="inner">Modules can't be installed as part of an addon and have to be put directly into <strong>garrysmod/lua/bin/</strong> to be detected.
This is a safety measure, because modules can be malicious and harm the system.</div></div>]]
---@param name string # The name of the module to be loaded.
function require(name) end
--[[<p>Restores position of your cursor on screen. You can save it by using <a class="link-page exists" href="/gmod/Global.RememberCursorPosition">RememberCursorPosition</a>.</p>
]]
function RestoreCursorPosition() end
--[[<p>Executes the given console command with the parameters.</p>
<div class="note"><div class="inner">Some commands/convars are blocked from being ran/changed using this function, usually to prevent harm/annoyance to clients. For a list of blocked commands, see <a class="link-page exists" href="/gmod/Blocked_ConCommands">Blocked ConCommands</a>.</div></div>]]
---@param command string # The command to be executed.
---@param arguments vararg # The arguments. Note, that unlike <a class="link-page exists" href="/gmod/Player:ConCommand">Player:ConCommand</a>, you must pass each argument as a new string, not separating them with a space.
function RunConsoleCommand(command, arguments) end
--[[<p>Runs a menu command. Equivalent to <a class="link-page exists" href="/gmod/Global.RunConsoleCommand">RunConsoleCommand</a>( "gamemenucommand", command ) unless the command starts with the "engine" keyword in which case it is equivalent to <a class="link-page exists" href="/gmod/Global.RunConsoleCommand">RunConsoleCommand</a>( command ).</p>
]]
---@param command string # The menu command to run<p></p><br/><p>Should be one of the following:</p><br/><ul><br/><li>Disconnect - Disconnects from the current server.</li><br/><li>OpenBenchmarkDialog - Opens the "Video Hardware Stress Test" dialog.</li><br/><li>OpenChangeGameDialog - Does not work in GMod.</li><br/><li>OpenCreateMultiplayerGameDialog - Opens the Source dialog for creating a listen server.</li><br/><li>OpenCustomMapsDialog - Does nothing.</li><br/><li>OpenFriendsDialog - Does nothing.</li><br/><li>OpenGameMenu - Does not work in GMod.</li><br/><li>OpenLoadCommentaryDialog - Opens the "Developer Commentary" selection dialog. Useless in GMod.</li><br/><li>OpenLoadDemoDialog - Does nothing.</li><br/><li>OpenLoadGameDialog - Opens the Source "Load Game" dialog.</li><br/><li>OpenNewGameDialog - Opens the "New Game" dialog. Useless in GMod.</li><br/><li>OpenOptionsDialog - Opens the options dialog.</li><br/><li>OpenPlayerListDialog - Opens the "Mute Players" dialog that shows all players connected to the server and allows to mute them.</li><br/><li>OpenSaveGameDialog - Opens the Source "Save Game" dialog.</li><br/><li>OpenServerBrowser - Opens the legacy server browser.</li><br/><li>Quit - Quits the game <code>without</code> confirmation (unlike other Source games).</li><br/><li>QuitNoConfirm - Quits the game without confirmation (like other Source games).</li><br/><li>ResumeGame - Closes the menu and returns to the game.</li><br/><li>engine &lt;concommand&gt; - Runs a console command. Equivalent to <a class="link-page exists" href="/gmod/Global.RunConsoleCommand">RunConsoleCommand</a>( &lt;concommand&gt; ).</li><br/></ul>
function RunGameUICommand(command) end
--[[<p>Evaluates and executes the given code, will throw an error on failure.</p>
<div class="note"><div class="inner">Local variables are not passed to the given code.</div></div>]]
---@param code string # The code to execute.
---@param identifier string # The name that should appear in any error messages caused by this code.
---@param handleError boolean # If false, this function will return a string containing any error messages instead of throwing an error.
---@return string # If handleError is false, the error message (if any).
function RunString(code, identifier, handleError) end
--[[<p>Alias of <a class="link-page exists" href="/gmod/Global.RunString">RunString</a>.</p>
<div class="deprecated"><div class="inner">We advise against using this. It may be changed or removed in a future update.

Use <a class="link-page exists" href="/gmod/Global.RunString">RunString</a> instead.</div></div>]]
function RunStringEx() end
--[[<p>Removes the given entity unless it is a player or the world entity</p>
]]
---@param ent Entity # Entity to safely remove.
function SafeRemoveEntity(ent) end
--[[<p>Removes entity after delay using <a class="link-page exists" href="/gmod/Global.SafeRemoveEntity">SafeRemoveEntity</a></p>
]]
---@param entity Entity # Entity to be removed
---@param delay number # Delay for entity removal in seconds
function SafeRemoveEntityDelayed(entity, delay) end
--[[<p>Sets the content of <code>addonpresets.txt</code> located in the <code>garrysmod/settings</code> folder. By default, this file stores your addon presets as JSON.</p>
<p>You can use <a class="link-page exists" href="/gmod/Global.LoadAddonPresets">LoadAddonPresets</a> to retrieve the data in this file.</p>
]]
---@param JSON string # The new contents of the file.
function SaveAddonPresets(JSON) end
--[[<div class="internal"><div class="inner">This is used internally - although you're able to use it you probably shouldn't.</div></div>
<p>This function is used to save the last map and category to which the map belongs as a .</p>
]]
---@param map string # The name of the map.
---@param category string # The name of the category to which this map belongs.
function SaveLastMap(map, category) end
--[[<p>Overwrites all presets with the supplied table. Used by the <a class="link-page exists" href="/gmod/presets">presets</a> for preset saving</p>
]]
---@param presets table # Presets to be saved
function SavePresets(presets) end
--[[<p>Returns a number based on the Size argument and your screen's width. The screen's width is always equal to size 640. This function is primarily used for scaling font sizes.</p>
]]
---@param Size number # The number you want to scale.
---@return number # The scaled number based on your screen's width
function ScreenScale(Size) end
--[[<p>Gets the height of the game's window (in pixels).</p>
]]
---@return number # The height of the game's window in pixels
function ScrH() end
--[[<p>Gets the width of the game's window (in pixels).</p>
]]
---@return number # The width of the game's window in pixels
function ScrW() end
--[[<p>Used to select single values from a vararg or get the count of values in it.</p>
]]
---@param parameter any # Can be a <a class="link-page exists" href="/gmod/number">number</a> or <a class="link-page exists" href="/gmod/string">string</a>.<p></p><br/><ul><br/><li>If it's a string and starts with "#", the function will return the amount of values in the vararg (ignoring the rest of the string).</li><br/><li>If it's a positive number, the function will return all values starting from the given index.</li><br/><li>If the number is negative, it will return the amount specified from the end instead of the beginning. This mode will not be compiled by LuaJIT.</li><br/></ul>
---@param vararg vararg # The vararg. These are the values from which you want to select.
---@return any # Returns a <a class="link-page exists" href="/gmod/number">number</a> or <a class="link-page exists" href="/gmod/vararg">vararg</a>, depending on the select method.
function select(parameter, vararg) end
--[[<div class="deprecated"><div class="inner">We advise against using this. It may be changed or removed in a future update.

This uses the <a class="link-page exists" href="/gmod/umsg">umsg</a> internally, which has been deprecated. Use the <a class="link-page exists" href="/gmod/net">net</a> instead.</div></div>
<p>Send a usermessage</p>
<div class="note"><div class="inner">Useless on client, only server can send info to client.</div></div>]]
---@param name string # The name of the usermessage
---@param recipients any # Can be a <a class="link-page exists" href="/gmod/CRecipientFilter">CRecipientFilter</a>, <a class="link-page exists" href="/gmod/table">table</a> or <a class="link-page exists" href="/gmod/Player">Player</a> object.
---@param args vararg # Data to send in the usermessage
function SendUserMessage(name, recipients, args) end
--[[<p>Returns approximate duration of a sentence by name. See <a class="link-page exists" href="/gmod/Global.EmitSentence">EmitSentence</a>.</p>
]]
---@param name string # The sentence name.
---@return number # The approximate duration.
function SentenceDuration(name) end
--[[<p>Prints <code>ServerLog: PARAM</code> without a newline, to the server log and console.</p>
<p>As of June 2022, if <code>sv_logecho</code> is set to <code>0</code> (defaults to <code>1</code>) the message will not print to console and will only be written to the server's log file.</p>
]]
---@param parameter string # The value to be printed to console.
function ServerLog(parameter) end
--[[<p>Adds the given string to the computers clipboard, which can then be pasted in or outside of GMod with Ctrl + V.</p>
]]
---@param text string # The text to add to the clipboard.
function SetClipboardText(text) end
--[[<p>Sets the enviroment for a function or a stack level.</p>
]]
---@param location function # The function to set the enviroment for or a number representing stack level.
---@param enviroment table # Table to be used as enviroment.
---@return function # The function passed, otherwise nil.
function setfenv(location, enviroment) end
--[[<p>Defines an angle to be automatically networked to clients</p>
<div class="note"><div class="inner">Running this function clientside will only set it clientside for the client it is called on!</div></div>]]
---@param index any # Index to identify the global angle with
---@param angle Angle # Angle to be networked
function SetGlobalAngle(index, angle) end
--[[<p>Defined a boolean to be automatically networked to clients</p>
<div class="note"><div class="inner">Running this function clientside will only set it clientside for the client it is called on!</div></div>]]
---@param index any # Index to identify the global boolean with
---@param bool boolean # Boolean to be networked
function SetGlobalBool(index, bool) end
--[[<p>Defines an entity to be automatically networked to clients</p>
<div class="note"><div class="inner">Running this function clientside will only set it clientside for the client it is called on!</div></div>]]
---@param index any # Index to identify the global entity with
---@param ent Entity # Entity to be networked
function SetGlobalEntity(index, ent) end
--[[<p>Defines a floating point number to be automatically networked to clients</p>
<div class="note"><div class="inner">Running this function clientside will only set it clientside for the client it is called on!</div></div>]]
---@param index any # Index to identify the global float with
---@param float number # Float to be networked
function SetGlobalFloat(index, float) end
--[[<p>Sets an integer that is shared between the server and all clients.</p>
<div class="note"><div class="inner">Running this function clientside will only set it clientside for the client it is called on!</div></div><div class="bug"><div class="inner">This function will not round decimal values as it actually networks a float internally.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/3374">3374</a></div></div>]]
---@param index string # The unique index to identify the global value with.
---@param value number # The value to set the global value to
function SetGlobalInt(index, value) end
--[[<p>Defines a string with a maximum of 199 characters to be automatically networked to clients</p>
<div class="note"><div class="inner">Running this function clientside will only set it clientside for the client it is called on!</div></div>]]
---@param index any # Index to identify the global string with
---@param string string # String to be networked
function SetGlobalString(index, string) end
--[[<p>Defines a vector to be automatically networked to clients</p>
<div class="note"><div class="inner">Running this function clientside will only set it clientside for the client it is called on!</div></div>]]
---@param index any # Index to identify the global vector with
---@param vec Vector # Vector to be networked
function SetGlobalVector(index, vec) end
--[[<p>Sets, changes or removes a table's metatable. Returns Tab (the first argument).</p>
]]
---@param Tab table # The table who's metatable to change.
---@param Metatable table # The metatable to assign. <br> If it's nil, the metatable will be removed.
---@return table # The first argument.
function setmetatable(Tab, Metatable) end
--[[<p>Called by the engine to set which <a href="https://developer.valvesoftware.com/wiki/Phys_constraintsystem">constraint system</a> the next created constraints should use.</p>
]]
---@param constraintSystem Entity # Constraint system to use
function SetPhysConstraintSystem(constraintSystem) end
--[[<p>This function can be used in a for loop instead of <a class="link-page exists" href="/gmod/Global.pairs">pairs</a>. It sorts all <strong>keys</strong> alphabetically.</p>
<p>For sorting by specific <strong>value member</strong>, use <a class="link-page exists" href="/gmod/Global.SortedPairsByMemberValue">SortedPairsByMemberValue</a>.</p>
<p>For sorting by <strong>value</strong>, use <a class="link-page exists" href="/gmod/Global.SortedPairsByValue">SortedPairsByValue</a>.</p>
]]
---@param table table # The table to sort
---@param desc boolean # Reverse the sorting order
---@return function # Iterator function
---@return table # The table being iterated over
function SortedPairs(table, desc) end
--[[<p>Returns an iterator function that can be used to loop through a table in order of member values, when the values of the table are also tables and contain that member.</p>
<p>To sort by <strong>value</strong>, use <a class="link-page exists" href="/gmod/Global.SortedPairsByValue">SortedPairsByValue</a>.</p>
<p>To sort by <strong>keys</strong>, use <a class="link-page exists" href="/gmod/Global.SortedPairs">SortedPairs</a>.</p>
]]
---@param table table # Table to create iterator for.
---@param memberKey any # Key of the value member to sort by.
---@param descending boolean # Whether the iterator should iterate in descending order or not.
---@return function # Iterator function
---@return table # The table the iterator was created for.
function SortedPairsByMemberValue(table, memberKey, descending) end
--[[<p>Returns an iterator function that can be used to loop through a table in order of its <strong>values</strong>.</p>
<p>To sort by specific <strong>value member</strong>, use <a class="link-page exists" href="/gmod/Global.SortedPairsByMemberValue">SortedPairsByMemberValue</a>.</p>
<p>To sort by <strong>keys</strong>, use <a class="link-page exists" href="/gmod/Global.SortedPairs">SortedPairs</a>.</p>
]]
---@param table table # Table to create iterator for
---@param descending boolean # Whether the iterator should iterate in descending order or not
---@return function # Iterator function
---@return table # The table which will be iterated over
function SortedPairsByValue(table, descending) end
--[[<p>Runs <a class="link-page exists" href="/gmod/util.PrecacheSound">util.PrecacheSound</a> and returns the string.</p>
<div class="bug"><div class="inner"><a class="link-page exists" href="/gmod/util.PrecacheSound">util.PrecacheSound</a> does nothing and therefore so does this function.</div></div>]]
---@param soundPath string # The soundpath to precache.
---@return string # The string passed as the first argument.
function Sound(soundPath) end
--[[<p>Returns the duration of the specified sound in seconds.</p>
<div class="bug"><div class="inner">This function does not return the correct duration on MacOS and Linux, or if the file is a non-.wav file on Windows.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/936">936</a></div></div>]]
---@param soundName string # The sound file path.
---@return number # Sound duration in seconds.
function SoundDuration(soundName) end
--[[<p>Returns the input value in an escaped form so that it can safely be used inside of queries. The returned value is surrounded by quotes unless noQuotes is true. Alias of <a class="link-page exists" href="/gmod/sql.SQLStr">sql.SQLStr</a></p>
]]
---@param input string # String to be escaped
---@param noQuotes boolean # Whether the returned value should be surrounded in quotes or not
---@return string # Escaped input
function SQLStr(input, noQuotes) end
--[[<div class="deprecated"><div class="inner">We advise against using this. It may be changed or removed in a future update.

You should be using <a class="link-page exists" href="/gmod/Global.ScreenScale">ScreenScale</a> instead.</div></div>
<p>Returns a number based on the Size argument and your screen's width. Alias of <a class="link-page exists" href="/gmod/Global.ScreenScale">ScreenScale</a>.</p>
]]
---@param Size number # The number you want to scale.
function SScale(Size) end
--[[<p>Returns the ordinal suffix of a given number.</p>
]]
---@param number number # The number to find the ordinal suffix of.
---@return string # suffix
function STNDRD(number) end
--[[<p>Suppress any networking from the server to the specified player. This is automatically called by the engine before/after a player fires their weapon, reloads, or causes any other similar shared-predicted event to occur.</p>
]]
---@param suppressPlayer Player # The player to suppress any networking to.
function SuppressHostEvents(suppressPlayer) end
--[[<p>Returns a highly accurate time in seconds since the start up, ideal for benchmarking. Unlike <a class="link-page exists" href="/gmod/Global.RealTime">RealTime</a>, this value will be updated any time the function is called, allowing for sub-think precision.</p>
]]
---@return number # Uptime of the server.
function SysTime() end
--[[<p>Returns a TauntCamera object</p>
]]
---@return table # TauntCamera
function TauntCamera() end
--[[<p>Clears focus from any text entries player may have focused.</p>
]]
function TextEntryLoseFocus() end
--[[<p>Returns a cosine value that fluctuates based on the current time</p>
]]
---@param frequency number # The frequency of fluctuation
---@param min number # Minimum value
---@param max number # Maximum value
---@param offset number # Offset variable that doesn't affect the rate of change, but causes the returned value to be offset by time
---@return number # Cosine value
function TimedCos(frequency, min, max, offset) end
--[[<p>Returns a sine value that fluctuates based on <a class="link-page exists" href="/gmod/Global.CurTime">CurTime</a>. The value returned will be between the start value plus/minus the range value.</p>
<div class="bug"><div class="inner">The range arguments don't work as intended. The existing (bugged) behavior is documented below.</div></div>]]
---@param frequency number # The frequency of fluctuation, in
---@param origin number # The center value of the sine wave.
---@param max number # This argument's distance from origin defines the size of the full range of the sine wave. For example, if origin is 3 and max is 5, then the full range of the sine wave is 5-3 = 2. 3 is the center point of the sine wave, so the sine wave will range between 2 and 4.
---@param offset number # Offset variable that doesn't affect the rate of change, but causes the returned value to be offset by time
---@return number # Sine value
function TimedSin(frequency, origin, max, offset) end
--[[<p>Attempts to return an appropriate boolean for the given value</p>
]]
---@param val any # The object to be converted to a boolean
---@return boolean # <strong>false</strong> for the boolean false.<br/><strong>false</strong> for "false".<br/><strong>false</strong> for "0".<br/><strong>false</strong> for numeric 0.<br/><strong>false</strong> for nil.<br/><strong>true</strong> otherwise.
function tobool(val) end
--[[<p>Toggles whether or not the named map is favorited in the new game list.</p>
]]
---@param map string # Map to toggle favorite.
function ToggleFavourite(map) end
--[[<p>Attempts to convert the value to a number.</p>
<p>Returns nil on failure.</p>
]]
---@param value any # The value to convert. Can be a number or string.
---@param base number # The  used in the string. Can be any integer between 2 and 36, inclusive.
---@return number # The numeric representation of the value with the given base, or nil if the conversion failed.
function tonumber(value, base) end
--[[<p>Attempts to convert the value to a string. If the value is an object and its metatable has defined the __tostring metamethod, this will call that function.</p>
<p><a class="link-page exists" href="/gmod/Global.print">print</a> also uses this functionality.</p>
]]
---@param value any # The object to be converted to a string.
---@return string # The string representation of the value.
function tostring(value) end
--[[<div class="deprecated"><div class="inner">We advise against using this. It may be changed or removed in a future update.</div></div><div class="internal"><div class="inner">This is used internally - although you're able to use it you probably shouldn't.</div></div>
<p>Returns "Lua Cache File" if the given file name is in a certain string table, nothing otherwise.</p>
]]
---@param filename string # File name to test
---@return string # "Lua Cache File" if the given file name is in a certain string table, nothing otherwise.
function TranslateDownloadableName(filename) end
--[[<p>Returns a string representing the name of the type of the passed object.</p>
]]
---@param var any # The object to get the type of.
---@return string # The name of the object's type.
function type(var) end
--[[<p>Gets the associated type ID of the variable. Unlike <a class="link-page exists" href="/gmod/Global.type">type</a>, this does not work with <a class="link-page exists" href="/gmod/no_value">no value</a> - an argument must be provided.</p>
<div class="bug"><div class="inner">This returns garbage for _LOADLIB objects.</div></div><div class="bug"><div class="inner">This returns TYPE_NIL for <a class="link-page exists" href="/gmod/proto">proto</a>s.</div></div>]]
---@param variable any # The variable to get the type ID of.
---@return number # The type ID of the variable. See the <a class="link-page exists" href="/gmod/Enums/TYPE">Enums/TYPE</a>.
function TypeID(variable) end
--[[<p>This function takes a numeric indexed table and return all the members as a vararg. If specified, it will start at the given index and end at end index.</p>
]]
---@param tbl table # The table to generate the vararg from.
---@param startIndex number # Which index to start from. Optional.
---@param endIndex number # Which index to end at. Optional, even if you set StartIndex.
---@return vararg # Output values
function unpack(tbl, startIndex, endIndex) end
--[[<p>Returns the current asynchronous in-game time.</p>
]]
---@return number # The asynchronous in-game time.
function UnPredictedCurTime() end
--[[<p>Runs JavaScript on the loading screen panel (<a class="link-page exists" href="/gmod/Global.GetLoadPanel">GetLoadPanel</a>).</p>
]]
---@param javascript string # JavaScript to run on the loading panel.
function UpdateLoadPanel(javascript) end
--[[<div class="deprecated"><div class="inner">We advise against using this. It may be changed or removed in a future update.

You should use <a class="link-page exists" href="/gmod/Global.IsUselessModel">IsUselessModel</a> instead.</div></div>
<p>Returns whether or not a model is useless by checking that the file path is that of a proper model.</p>
<p>If the string ".mdl" is not found in the model name, the function will return true.</p>
<p>The function will also return true if any of the following strings are found in the given model name:</p>
<ul>
<li>"_gesture"</li>
<li>"_anim"</li>
<li>"_gst"</li>
<li>"_pst"</li>
<li>"_shd"</li>
<li>"_ss"</li>
<li>"_posture"</li>
<li>"_anm"</li>
<li>"ghostanim"</li>
<li>"_paths"</li>
<li>"_shared"</li>
<li>"anim_"</li>
<li>"gestures_"</li>
<li>"shared_ragdoll_"</li>
</ul>
]]
---@param modelName string # The model name to be checked
---@return boolean # Whether or not the model is useless
function UTIL_IsUselessModel(modelName) end
--[[<div class="deprecated"><div class="inner">We advise against using this. It may be changed or removed in a future update.

You should use <a class="link-page exists" href="/gmod/Global.IsValid">IsValid</a> instead</div></div>
<p>Returns if a panel is safe to use.</p>
]]
---@param panel Panel # The panel to validate.
function ValidPanel(panel) end
--[[<p>Creates a <a class="link-page exists" href="/gmod/Vector">Vector</a> object.</p>
]]
---@param x number # The x component of the vector.<p></p><br/><p>If this is a <a class="link-page exists" href="/gmod/Vector">Vector</a>, this function will return a copy of the given vector.</p><br/><p>If this is a <a class="link-page exists" href="/gmod/string">string</a>, this function will try to parse the string as a vector. If it fails, it returns a 0 vector.<br/>(See examples)</p>
---@param y number # The y component of the vector.
---@param z number # The z component of the vector.
---@return Vector # The created vector object.
function Vector(x, y, z) end
--[[<p>Returns a random vector whose components are each between min(inclusive), max(exclusive).</p>
]]
---@param min number # Min bound inclusive.
---@param max number # Max bound exclusive.
---@return Vector # The random direction vector.
function VectorRand(min, max) end
--[[<p>Returns the time in seconds it took to render the VGUI.</p>
]]
function VGUIFrameTime() end
--[[<p>Creates and returns a <a class="link-page exists" href="/gmod/DShape">DShape</a> rectangle GUI element with the given dimensions.</p>
]]
---@param x number # X position of the created element
---@param y number # Y position of the created element
---@param w number # Width of the created element
---@param h number # Height of the created element
---@return Panel # <a class="link-page exists" href="/gmod/DShape">DShape</a> element
function VGUIRect(x, y, w, h) end
--[[<div class="internal"><div class="inner">This is used internally - although you're able to use it you probably shouldn't.

Used by the <strong>vgui_visualizelayout</strong> convar</div></div>
<p>Briefly displays layout details of the given panel on-screen</p>
]]
---@param panel Panel # Panel to display layout details of
function VisualizeLayout(panel) end
--[[<div class="internal"><div class="inner">This is used internally - although you're able to use it you probably shouldn't.</div></div>
<p>Returns a new WorkshopFileBase element</p>
]]
---@param namespace string # Namespace for the file base
---@param requiredTags table # Tags required for a Workshop submission to be interacted with by the filebase
---@return table # WorkshopFileBase element
function WorkshopFileBase(namespace, requiredTags) end
--[[<p>Translates the specified position and angle into the specified coordinate system.</p>
]]
---@param position Vector # The position that should be translated from the current to the new system.
---@param angle Angle # The angles that should be translated from the current to the new system.
---@param newSystemOrigin Vector # The origin of the system to translate to.
---@param newSystemAngles Angle # The angles of the system to translate to.
---@return Vector # Local position
---@return Angle # Local angles
function WorldToLocal(position, angle, newSystemOrigin, newSystemAngles) end
--[[<p>Attempts to call the first function. If the execution succeeds, this returns <code>true</code> followed by the returns of the function. If execution fails, this returns <code>false</code> and the second function is called with the error message.</p>
<p>Unlike in <a class="link-page exists" href="/gmod/Global.pcall">pcall</a>, the stack is not unwound and can therefore be used for stack analyses with the <a class="link-page exists" href="/gmod/debug">debug</a>.</p>
<div class="bug"><div class="inner">This cannot stop errors from hooks called from the engine.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/2036">2036</a></div></div><div class="bug"><div class="inner">This does not stop <a class="link-page exists" href="/gmod/Global.Error">Error</a> and <a class="link-page exists" href="/gmod/Global.ErrorNoHalt">ErrorNoHalt</a> from sending error messages to the server (if called clientside) or calling the <a class="link-page exists" href="/gmod/GM:OnLuaError">GM:OnLuaError</a> hook. The success boolean returned will always return true and thus you will not get the error message returned. <a class="link-page exists" href="/gmod/Global.error">error</a> does not exhibit these behaviours.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/2498">2498</a></div></div><div class="bug"><div class="inner">This does not stop errors incurred by <a class="link-page exists" href="/gmod/Global.include">include</a>.<br><br>Issue Tracker: <a href="https://github.com/Facepunch/garrysmod-issues/issues/3112">3112</a></div></div>]]
---@param func function # The function to call initially.
---@param errorCallback function # The function to be called if execution of the first fails; the error message is passed as a string.<p></p><br/><p>You cannot throw an <a class="link-page exists" href="/gmod/Global.error">error</a>() from this callback: it will have no effect (not even stopping the callback).</p>
---@param arguments vararg # Arguments to pass to the initial function.
---@return boolean # Status of the execution; <code>true</code> for success, <code>false</code> for failure.
---@return vararg # The returns of the first function if execution succeeded, otherwise the <strong>first</strong> return value of the error callback.
function xpcall(func, errorCallback, arguments) end
CONTINUOUS_USE = 0
ONOFF_USE = 1
DIRECTIONAL_USE = 2
SIMPLE_USE = 3
ACT_INVALID = -1
ACT_RESET = 0
ACT_IDLE = 1
ACT_TRANSITION = 2
ACT_COVER = 3
ACT_COVER_MED = 4
ACT_COVER_LOW = 5
ACT_WALK = 6
ACT_WALK_AIM = 7
ACT_WALK_CROUCH = 8
ACT_WALK_CROUCH_AIM = 9
ACT_RUN = 10
ACT_RUN_AIM = 11
ACT_RUN_CROUCH = 12
ACT_RUN_CROUCH_AIM = 13
ACT_RUN_PROTECTED = 14
ACT_SCRIPT_CUSTOM_MOVE = 15
ACT_RANGE_ATTACK1 = 16
ACT_RANGE_ATTACK2 = 17
ACT_RANGE_ATTACK1_LOW = 18
ACT_RANGE_ATTACK2_LOW = 19
ACT_DIESIMPLE = 20
ACT_DIEBACKWARD = 21
ACT_DIEFORWARD = 22
ACT_DIEVIOLENT = 23
ACT_DIERAGDOLL = 24
ACT_FLY = 25
ACT_HOVER = 26
ACT_GLIDE = 27
ACT_SWIM = 28
ACT_SWIM_IDLE = 29
ACT_JUMP = 30
ACT_HOP = 31
ACT_LEAP = 32
ACT_LAND = 33
ACT_CLIMB_UP = 34
ACT_CLIMB_DOWN = 35
ACT_CLIMB_DISMOUNT = 36
ACT_SHIPLADDER_UP = 37
ACT_SHIPLADDER_DOWN = 38
ACT_STRAFE_LEFT = 39
ACT_STRAFE_RIGHT = 40
ACT_ROLL_LEFT = 41
ACT_ROLL_RIGHT = 42
ACT_TURN_LEFT = 43
ACT_TURN_RIGHT = 44
ACT_CROUCH = 45
ACT_CROUCHIDLE = 46
ACT_STAND = 47
ACT_USE = 48
ACT_SIGNAL1 = 49
ACT_SIGNAL2 = 50
ACT_SIGNAL3 = 51
ACT_SIGNAL_ADVANCE = 52
ACT_SIGNAL_FORWARD = 53
ACT_SIGNAL_GROUP = 54
ACT_SIGNAL_HALT = 55
ACT_SIGNAL_LEFT = 56
ACT_SIGNAL_RIGHT = 57
ACT_SIGNAL_TAKECOVER = 58
ACT_LOOKBACK_RIGHT = 59
ACT_LOOKBACK_LEFT = 60
ACT_COWER = 61
ACT_SMALL_FLINCH = 62
ACT_BIG_FLINCH = 63
ACT_MELEE_ATTACK1 = 64
ACT_MELEE_ATTACK2 = 65
ACT_RELOAD = 66
ACT_RELOAD_START = 67
ACT_RELOAD_FINISH = 68
ACT_RELOAD_LOW = 69
ACT_ARM = 70
ACT_DISARM = 71
ACT_DROP_WEAPON = 72
ACT_DROP_WEAPON_SHOTGUN = 73
ACT_PICKUP_GROUND = 74
ACT_PICKUP_RACK = 75
ACT_IDLE_ANGRY = 76
ACT_IDLE_RELAXED = 77
ACT_IDLE_STIMULATED = 78
ACT_IDLE_AGITATED = 79
ACT_IDLE_STEALTH = 80
ACT_IDLE_HURT = 81
ACT_WALK_RELAXED = 82
ACT_WALK_STIMULATED = 83
ACT_WALK_AGITATED = 84
ACT_WALK_STEALTH = 85
ACT_RUN_RELAXED = 86
ACT_RUN_STIMULATED = 87
ACT_RUN_AGITATED = 88
ACT_RUN_STEALTH = 89
ACT_IDLE_AIM_RELAXED = 90
ACT_IDLE_AIM_STIMULATED = 91
ACT_IDLE_AIM_AGITATED = 92
ACT_IDLE_AIM_STEALTH = 93
ACT_WALK_AIM_RELAXED = 94
ACT_WALK_AIM_STIMULATED = 95
ACT_WALK_AIM_AGITATED = 96
ACT_WALK_AIM_STEALTH = 97
ACT_RUN_AIM_RELAXED = 98
ACT_RUN_AIM_STIMULATED = 99
ACT_RUN_AIM_AGITATED = 100
ACT_RUN_AIM_STEALTH = 101
ACT_CROUCHIDLE_STIMULATED = 102
ACT_CROUCHIDLE_AIM_STIMULATED = 103
ACT_CROUCHIDLE_AGITATED = 104
ACT_WALK_HURT = 105
ACT_RUN_HURT = 106
ACT_SPECIAL_ATTACK1 = 107
ACT_SPECIAL_ATTACK2 = 108
ACT_COMBAT_IDLE = 109
ACT_WALK_SCARED = 110
ACT_RUN_SCARED = 111
ACT_VICTORY_DANCE = 112
ACT_DIE_HEADSHOT = 113
ACT_DIE_CHESTSHOT = 114
ACT_DIE_GUTSHOT = 115
ACT_DIE_BACKSHOT = 116
ACT_FLINCH_HEAD = 117
ACT_FLINCH_CHEST = 118
ACT_FLINCH_STOMACH = 119
ACT_FLINCH_LEFTARM = 120
ACT_FLINCH_RIGHTARM = 121
ACT_FLINCH_LEFTLEG = 122
ACT_FLINCH_RIGHTLEG = 123
ACT_FLINCH_PHYSICS = 124
ACT_IDLE_ON_FIRE = 125
ACT_WALK_ON_FIRE = 126
ACT_RUN_ON_FIRE = 127
ACT_RAPPEL_LOOP = 128
ACT_180_LEFT = 129
ACT_180_RIGHT = 130
ACT_90_LEFT = 131
ACT_90_RIGHT = 132
ACT_STEP_LEFT = 133
ACT_STEP_RIGHT = 134
ACT_STEP_BACK = 135
ACT_STEP_FORE = 136
ACT_GESTURE_RANGE_ATTACK1 = 137
ACT_GESTURE_RANGE_ATTACK2 = 138
ACT_GESTURE_MELEE_ATTACK1 = 139
ACT_GESTURE_MELEE_ATTACK2 = 140
ACT_GESTURE_RANGE_ATTACK1_LOW = 141
ACT_GESTURE_RANGE_ATTACK2_LOW = 142
ACT_MELEE_ATTACK_SWING_GESTURE = 143
ACT_GESTURE_SMALL_FLINCH = 144
ACT_GESTURE_BIG_FLINCH = 145
ACT_GESTURE_FLINCH_BLAST = 146
ACT_GESTURE_FLINCH_BLAST_SHOTGUN = 147
ACT_GESTURE_FLINCH_BLAST_DAMAGED = 148
ACT_GESTURE_FLINCH_BLAST_DAMAGED_SHOTGUN = 149
ACT_GESTURE_FLINCH_HEAD = 150
ACT_GESTURE_FLINCH_CHEST = 151
ACT_GESTURE_FLINCH_STOMACH = 152
ACT_GESTURE_FLINCH_LEFTARM = 153
ACT_GESTURE_FLINCH_RIGHTARM = 154
ACT_GESTURE_FLINCH_LEFTLEG = 155
ACT_GESTURE_FLINCH_RIGHTLEG = 156
ACT_GESTURE_TURN_LEFT = 157
ACT_GESTURE_TURN_RIGHT = 158
ACT_GESTURE_TURN_LEFT45 = 159
ACT_GESTURE_TURN_RIGHT45 = 160
ACT_GESTURE_TURN_LEFT90 = 161
ACT_GESTURE_TURN_RIGHT90 = 162
ACT_GESTURE_TURN_LEFT45_FLAT = 163
ACT_GESTURE_TURN_RIGHT45_FLAT = 164
ACT_GESTURE_TURN_LEFT90_FLAT = 165
ACT_GESTURE_TURN_RIGHT90_FLAT = 166
ACT_BARNACLE_HIT = 167
ACT_BARNACLE_PULL = 168
ACT_BARNACLE_CHOMP = 169
ACT_BARNACLE_CHEW = 170
ACT_DO_NOT_DISTURB = 171
ACT_VM_DRAW = 172
ACT_VM_HOLSTER = 173
ACT_VM_IDLE = 174
ACT_VM_FIDGET = 175
ACT_VM_PULLBACK = 176
ACT_VM_PULLBACK_HIGH = 177
ACT_VM_PULLBACK_LOW = 178
ACT_VM_THROW = 179
ACT_VM_PULLPIN = 180
ACT_VM_PRIMARYATTACK = 181
ACT_VM_SECONDARYATTACK = 182
ACT_VM_RELOAD = 183
ACT_VM_DRYFIRE = 186
ACT_VM_HITLEFT = 187
ACT_VM_HITLEFT2 = 188
ACT_VM_HITRIGHT = 189
ACT_VM_HITRIGHT2 = 190
ACT_VM_HITCENTER = 191
ACT_VM_HITCENTER2 = 192
ACT_VM_MISSLEFT = 193
ACT_VM_MISSLEFT2 = 194
ACT_VM_MISSRIGHT = 195
ACT_VM_MISSRIGHT2 = 196
ACT_VM_MISSCENTER = 197
ACT_VM_MISSCENTER2 = 198
ACT_VM_HAULBACK = 199
ACT_VM_SWINGHARD = 200
ACT_VM_SWINGMISS = 201
ACT_VM_SWINGHIT = 202
ACT_VM_IDLE_TO_LOWERED = 203
ACT_VM_IDLE_LOWERED = 204
ACT_VM_LOWERED_TO_IDLE = 205
ACT_VM_RECOIL1 = 206
ACT_VM_RECOIL2 = 207
ACT_VM_RECOIL3 = 208
ACT_VM_PICKUP = 209
ACT_VM_RELEASE = 210
ACT_VM_ATTACH_SILENCER = 211
ACT_VM_DETACH_SILENCER = 212
ACT_SLAM_STICKWALL_IDLE = 229
ACT_SLAM_STICKWALL_ND_IDLE = 230
ACT_SLAM_STICKWALL_ATTACH = 231
ACT_SLAM_STICKWALL_ATTACH2 = 232
ACT_SLAM_STICKWALL_ND_ATTACH = 233
ACT_SLAM_STICKWALL_ND_ATTACH2 = 234
ACT_SLAM_STICKWALL_DETONATE = 235
ACT_SLAM_STICKWALL_DETONATOR_HOLSTER = 236
ACT_SLAM_STICKWALL_DRAW = 237
ACT_SLAM_STICKWALL_ND_DRAW = 238
ACT_SLAM_STICKWALL_TO_THROW = 239
ACT_SLAM_STICKWALL_TO_THROW_ND = 240
ACT_SLAM_STICKWALL_TO_TRIPMINE_ND = 241
ACT_SLAM_THROW_IDLE = 242
ACT_SLAM_THROW_ND_IDLE = 243
ACT_SLAM_THROW_THROW = 244
ACT_SLAM_THROW_THROW2 = 245
ACT_SLAM_THROW_THROW_ND = 246
ACT_SLAM_THROW_THROW_ND2 = 247
ACT_SLAM_THROW_DRAW = 248
ACT_SLAM_THROW_ND_DRAW = 249
ACT_SLAM_THROW_TO_STICKWALL = 250
ACT_SLAM_THROW_TO_STICKWALL_ND = 251
ACT_SLAM_THROW_DETONATE = 252
ACT_SLAM_THROW_DETONATOR_HOLSTER = 253
ACT_SLAM_THROW_TO_TRIPMINE_ND = 254
ACT_SLAM_TRIPMINE_IDLE = 255
ACT_SLAM_TRIPMINE_DRAW = 256
ACT_SLAM_TRIPMINE_ATTACH = 257
ACT_SLAM_TRIPMINE_ATTACH2 = 258
ACT_SLAM_TRIPMINE_TO_STICKWALL_ND = 259
ACT_SLAM_TRIPMINE_TO_THROW_ND = 260
ACT_SLAM_DETONATOR_IDLE = 261
ACT_SLAM_DETONATOR_DRAW = 262
ACT_SLAM_DETONATOR_DETONATE = 263
ACT_SLAM_DETONATOR_HOLSTER = 264
ACT_SLAM_DETONATOR_STICKWALL_DRAW = 265
ACT_SLAM_DETONATOR_THROW_DRAW = 266
ACT_SHOTGUN_RELOAD_START = 267
ACT_SHOTGUN_RELOAD_FINISH = 268
ACT_SHOTGUN_PUMP = 269
ACT_SMG2_IDLE2 = 270
ACT_SMG2_FIRE2 = 271
ACT_SMG2_DRAW2 = 272
ACT_SMG2_RELOAD2 = 273
ACT_SMG2_DRYFIRE2 = 274
ACT_SMG2_TOAUTO = 275
ACT_SMG2_TOBURST = 276
ACT_PHYSCANNON_UPGRADE = 277
ACT_RANGE_ATTACK_AR1 = 278
ACT_RANGE_ATTACK_AR2 = 279
ACT_RANGE_ATTACK_AR2_LOW = 280
ACT_RANGE_ATTACK_AR2_GRENADE = 281
ACT_RANGE_ATTACK_HMG1 = 282
ACT_RANGE_ATTACK_ML = 283
ACT_RANGE_ATTACK_SMG1 = 284
ACT_RANGE_ATTACK_SMG1_LOW = 285
ACT_RANGE_ATTACK_SMG2 = 286
ACT_RANGE_ATTACK_SHOTGUN = 287
ACT_RANGE_ATTACK_SHOTGUN_LOW = 288
ACT_RANGE_ATTACK_PISTOL = 289
ACT_RANGE_ATTACK_PISTOL_LOW = 290
ACT_RANGE_ATTACK_SLAM = 291
ACT_RANGE_ATTACK_TRIPWIRE = 292
ACT_RANGE_ATTACK_THROW = 293
ACT_RANGE_ATTACK_SNIPER_RIFLE = 294
ACT_RANGE_ATTACK_RPG = 295
ACT_MELEE_ATTACK_SWING = 296
ACT_RANGE_AIM_LOW = 297
ACT_RANGE_AIM_SMG1_LOW = 298
ACT_RANGE_AIM_PISTOL_LOW = 299
ACT_RANGE_AIM_AR2_LOW = 300
ACT_COVER_PISTOL_LOW = 301
ACT_COVER_SMG1_LOW = 302
ACT_GESTURE_RANGE_ATTACK_AR1 = 303
ACT_GESTURE_RANGE_ATTACK_AR2 = 304
ACT_GESTURE_RANGE_ATTACK_AR2_GRENADE = 305
ACT_GESTURE_RANGE_ATTACK_HMG1 = 306
ACT_GESTURE_RANGE_ATTACK_ML = 307
ACT_GESTURE_RANGE_ATTACK_SMG1 = 308
ACT_GESTURE_RANGE_ATTACK_SMG1_LOW = 309
ACT_GESTURE_RANGE_ATTACK_SMG2 = 310
ACT_GESTURE_RANGE_ATTACK_SHOTGUN = 311
ACT_GESTURE_RANGE_ATTACK_PISTOL = 312
ACT_GESTURE_RANGE_ATTACK_PISTOL_LOW = 313
ACT_GESTURE_RANGE_ATTACK_SLAM = 314
ACT_GESTURE_RANGE_ATTACK_TRIPWIRE = 315
ACT_GESTURE_RANGE_ATTACK_THROW = 316
ACT_GESTURE_RANGE_ATTACK_SNIPER_RIFLE = 317
ACT_GESTURE_MELEE_ATTACK_SWING = 318
ACT_IDLE_RIFLE = 319
ACT_IDLE_SMG1 = 320
ACT_IDLE_ANGRY_SMG1 = 321
ACT_IDLE_PISTOL = 322
ACT_IDLE_ANGRY_PISTOL = 323
ACT_IDLE_ANGRY_SHOTGUN = 324
ACT_IDLE_STEALTH_PISTOL = 325
ACT_IDLE_PACKAGE = 326
ACT_WALK_PACKAGE = 327
ACT_IDLE_SUITCASE = 328
ACT_WALK_SUITCASE = 329
ACT_IDLE_SMG1_RELAXED = 330
ACT_IDLE_SMG1_STIMULATED = 331
ACT_WALK_RIFLE_RELAXED = 332
ACT_RUN_RIFLE_RELAXED = 333
ACT_WALK_RIFLE_STIMULATED = 334
ACT_RUN_RIFLE_STIMULATED = 335
ACT_IDLE_AIM_RIFLE_STIMULATED = 336
ACT_WALK_AIM_RIFLE_STIMULATED = 337
ACT_RUN_AIM_RIFLE_STIMULATED = 338
ACT_IDLE_SHOTGUN_RELAXED = 339
ACT_IDLE_SHOTGUN_STIMULATED = 340
ACT_IDLE_SHOTGUN_AGITATED = 341
ACT_WALK_ANGRY = 342
ACT_POLICE_HARASS1 = 343
ACT_POLICE_HARASS2 = 344
ACT_IDLE_MANNEDGUN = 345
ACT_IDLE_MELEE = 346
ACT_IDLE_ANGRY_MELEE = 347
ACT_IDLE_RPG_RELAXED = 348
ACT_IDLE_RPG = 349
ACT_IDLE_ANGRY_RPG = 350
ACT_COVER_LOW_RPG = 351
ACT_WALK_RPG = 352
ACT_RUN_RPG = 353
ACT_WALK_CROUCH_RPG = 354
ACT_RUN_CROUCH_RPG = 355
ACT_WALK_RPG_RELAXED = 356
ACT_RUN_RPG_RELAXED = 357
ACT_WALK_RIFLE = 358
ACT_WALK_AIM_RIFLE = 359
ACT_WALK_CROUCH_RIFLE = 360
ACT_WALK_CROUCH_AIM_RIFLE = 361
ACT_RUN_RIFLE = 362
ACT_RUN_AIM_RIFLE = 363
ACT_RUN_CROUCH_RIFLE = 364
ACT_RUN_CROUCH_AIM_RIFLE = 365
ACT_RUN_STEALTH_PISTOL = 366
ACT_WALK_AIM_SHOTGUN = 367
ACT_RUN_AIM_SHOTGUN = 368
ACT_WALK_PISTOL = 369
ACT_RUN_PISTOL = 370
ACT_WALK_AIM_PISTOL = 371
ACT_RUN_AIM_PISTOL = 372
ACT_WALK_STEALTH_PISTOL = 373
ACT_WALK_AIM_STEALTH_PISTOL = 374
ACT_RUN_AIM_STEALTH_PISTOL = 375
ACT_RELOAD_PISTOL = 376
ACT_RELOAD_PISTOL_LOW = 377
ACT_RELOAD_SMG1 = 378
ACT_RELOAD_SMG1_LOW = 379
ACT_RELOAD_SHOTGUN = 380
ACT_RELOAD_SHOTGUN_LOW = 381
ACT_GESTURE_RELOAD = 382
ACT_GESTURE_RELOAD_PISTOL = 383
ACT_GESTURE_RELOAD_SMG1 = 384
ACT_GESTURE_RELOAD_SHOTGUN = 385
ACT_BUSY_LEAN_LEFT = 386
ACT_BUSY_LEAN_LEFT_ENTRY = 387
ACT_BUSY_LEAN_LEFT_EXIT = 388
ACT_BUSY_LEAN_BACK = 389
ACT_BUSY_LEAN_BACK_ENTRY = 390
ACT_BUSY_LEAN_BACK_EXIT = 391
ACT_BUSY_SIT_GROUND = 392
ACT_BUSY_SIT_GROUND_ENTRY = 393
ACT_BUSY_SIT_GROUND_EXIT = 394
ACT_BUSY_SIT_CHAIR = 395
ACT_BUSY_SIT_CHAIR_ENTRY = 396
ACT_BUSY_SIT_CHAIR_EXIT = 397
ACT_BUSY_STAND = 398
ACT_BUSY_QUEUE = 399
ACT_DUCK_DODGE = 400
ACT_DIE_BARNACLE_SWALLOW = 401
ACT_GESTURE_BARNACLE_STRANGLE = 402
ACT_PHYSCANNON_DETACH = 403
ACT_PHYSCANNON_ANIMATE = 404
ACT_PHYSCANNON_ANIMATE_PRE = 405
ACT_PHYSCANNON_ANIMATE_POST = 406
ACT_DIE_FRONTSIDE = 407
ACT_DIE_RIGHTSIDE = 408
ACT_DIE_BACKSIDE = 409
ACT_DIE_LEFTSIDE = 410
ACT_OPEN_DOOR = 411
ACT_DI_ALYX_ZOMBIE_MELEE = 412
ACT_DI_ALYX_ZOMBIE_TORSO_MELEE = 413
ACT_DI_ALYX_HEADCRAB_MELEE = 414
ACT_DI_ALYX_ANTLION = 415
ACT_DI_ALYX_ZOMBIE_SHOTGUN64 = 416
ACT_DI_ALYX_ZOMBIE_SHOTGUN26 = 417
ACT_READINESS_RELAXED_TO_STIMULATED = 418
ACT_READINESS_RELAXED_TO_STIMULATED_WALK = 419
ACT_READINESS_AGITATED_TO_STIMULATED = 420
ACT_READINESS_STIMULATED_TO_RELAXED = 421
ACT_READINESS_PISTOL_RELAXED_TO_STIMULATED = 422
ACT_READINESS_PISTOL_RELAXED_TO_STIMULATED_WALK = 423
ACT_READINESS_PISTOL_AGITATED_TO_STIMULATED = 424
ACT_READINESS_PISTOL_STIMULATED_TO_RELAXED = 425
ACT_IDLE_CARRY = 426
ACT_WALK_CARRY = 427
ACT_STARTDYING = 428
ACT_DYINGLOOP = 429
ACT_DYINGTODEAD = 430
ACT_RIDE_MANNED_GUN = 431
ACT_VM_SPRINT_ENTER = 432
ACT_VM_SPRINT_IDLE = 433
ACT_VM_SPRINT_LEAVE = 434
ACT_FIRE_START = 435
ACT_FIRE_LOOP = 436
ACT_FIRE_END = 437
ACT_CROUCHING_GRENADEIDLE = 438
ACT_CROUCHING_GRENADEREADY = 439
ACT_CROUCHING_PRIMARYATTACK = 440
ACT_OVERLAY_GRENADEIDLE = 441
ACT_OVERLAY_GRENADEREADY = 442
ACT_OVERLAY_PRIMARYATTACK = 443
ACT_OVERLAY_SHIELD_UP = 444
ACT_OVERLAY_SHIELD_DOWN = 445
ACT_OVERLAY_SHIELD_UP_IDLE = 446
ACT_OVERLAY_SHIELD_ATTACK = 447
ACT_OVERLAY_SHIELD_KNOCKBACK = 448
ACT_SHIELD_UP = 449
ACT_SHIELD_DOWN = 450
ACT_SHIELD_UP_IDLE = 451
ACT_SHIELD_ATTACK = 452
ACT_SHIELD_KNOCKBACK = 453
ACT_CROUCHING_SHIELD_UP = 454
ACT_CROUCHING_SHIELD_DOWN = 455
ACT_CROUCHING_SHIELD_UP_IDLE = 456
ACT_CROUCHING_SHIELD_ATTACK = 457
ACT_CROUCHING_SHIELD_KNOCKBACK = 458
ACT_TURNRIGHT45 = 459
ACT_TURNLEFT45 = 460
ACT_TURN = 461
ACT_OBJ_ASSEMBLING = 462
ACT_OBJ_DISMANTLING = 463
ACT_OBJ_STARTUP = 464
ACT_OBJ_RUNNING = 465
ACT_OBJ_IDLE = 466
ACT_OBJ_PLACING = 467
ACT_OBJ_DETERIORATING = 468
ACT_OBJ_UPGRADING = 469
ACT_DEPLOY = 470
ACT_DEPLOY_IDLE = 471
ACT_UNDEPLOY = 472
ACT_GRENADE_ROLL = 473
ACT_GRENADE_TOSS = 474
ACT_HANDGRENADE_THROW1 = 475
ACT_HANDGRENADE_THROW2 = 476
ACT_HANDGRENADE_THROW3 = 477
ACT_SHOTGUN_IDLE_DEEP = 478
ACT_SHOTGUN_IDLE4 = 479
ACT_GLOCK_SHOOTEMPTY = 480
ACT_GLOCK_SHOOT_RELOAD = 481
ACT_RPG_DRAW_UNLOADED = 482
ACT_RPG_HOLSTER_UNLOADED = 483
ACT_RPG_IDLE_UNLOADED = 484
ACT_RPG_FIDGET_UNLOADED = 485
ACT_CROSSBOW_DRAW_UNLOADED = 486
ACT_CROSSBOW_IDLE_UNLOADED = 487
ACT_CROSSBOW_FIDGET_UNLOADED = 488
ACT_GAUSS_SPINUP = 489
ACT_GAUSS_SPINCYCLE = 490
ACT_TRIPMINE_GROUND = 491
ACT_TRIPMINE_WORLD = 492
ACT_VM_PRIMARYATTACK_SILENCED = 493
ACT_VM_RELOAD_SILENCED = 494
ACT_VM_DRYFIRE_SILENCED = 495
ACT_VM_IDLE_SILENCED = 496
ACT_VM_DRAW_SILENCED = 497
ACT_VM_IDLE_EMPTY_LEFT = 498
ACT_VM_DRYFIRE_LEFT = 499
ACT_PLAYER_IDLE_FIRE = 500
ACT_PLAYER_CROUCH_FIRE = 501
ACT_PLAYER_CROUCH_WALK_FIRE = 502
ACT_PLAYER_WALK_FIRE = 503
ACT_PLAYER_RUN_FIRE = 504
ACT_IDLETORUN = 505
ACT_RUNTOIDLE = 506
ACT_SPRINT = 507
ACT_GET_DOWN_STAND = 508
ACT_GET_UP_STAND = 509
ACT_GET_DOWN_CROUCH = 510
ACT_GET_UP_CROUCH = 511
ACT_PRONE_FORWARD = 512
ACT_PRONE_IDLE = 513
ACT_DEEPIDLE1 = 514
ACT_DEEPIDLE2 = 515
ACT_DEEPIDLE3 = 516
ACT_DEEPIDLE4 = 517
ACT_VM_RELOAD_DEPLOYED = 518
ACT_VM_RELOAD_IDLE = 519
ACT_VM_DRAW_DEPLOYED = 520
ACT_VM_DRAW_EMPTY = 521
ACT_VM_PRIMARYATTACK_EMPTY = 522
ACT_VM_RELOAD_EMPTY = 523
ACT_VM_IDLE_EMPTY = 524
ACT_VM_IDLE_DEPLOYED_EMPTY = 525
ACT_VM_IDLE_8 = 526
ACT_VM_IDLE_7 = 527
ACT_VM_IDLE_6 = 528
ACT_VM_IDLE_5 = 529
ACT_VM_IDLE_4 = 530
ACT_VM_IDLE_3 = 531
ACT_VM_IDLE_2 = 532
ACT_VM_IDLE_1 = 533
ACT_VM_IDLE_DEPLOYED = 534
ACT_VM_IDLE_DEPLOYED_8 = 535
ACT_VM_IDLE_DEPLOYED_7 = 536
ACT_VM_IDLE_DEPLOYED_6 = 537
ACT_VM_IDLE_DEPLOYED_5 = 538
ACT_VM_IDLE_DEPLOYED_4 = 539
ACT_VM_IDLE_DEPLOYED_3 = 540
ACT_VM_IDLE_DEPLOYED_2 = 541
ACT_VM_IDLE_DEPLOYED_1 = 542
ACT_VM_UNDEPLOY = 543
ACT_VM_UNDEPLOY_8 = 544
ACT_VM_UNDEPLOY_7 = 545
ACT_VM_UNDEPLOY_6 = 546
ACT_VM_UNDEPLOY_5 = 547
ACT_VM_UNDEPLOY_4 = 548
ACT_VM_UNDEPLOY_3 = 549
ACT_VM_UNDEPLOY_2 = 550
ACT_VM_UNDEPLOY_1 = 551
ACT_VM_UNDEPLOY_EMPTY = 552
ACT_VM_DEPLOY = 553
ACT_VM_DEPLOY_8 = 554
ACT_VM_DEPLOY_7 = 555
ACT_VM_DEPLOY_6 = 556
ACT_VM_DEPLOY_5 = 557
ACT_VM_DEPLOY_4 = 558
ACT_VM_DEPLOY_3 = 559
ACT_VM_DEPLOY_2 = 560
ACT_VM_DEPLOY_1 = 561
ACT_VM_DEPLOY_EMPTY = 562
ACT_VM_PRIMARYATTACK_8 = 563
ACT_VM_PRIMARYATTACK_7 = 564
ACT_VM_PRIMARYATTACK_6 = 565
ACT_VM_PRIMARYATTACK_5 = 566
ACT_VM_PRIMARYATTACK_4 = 567
ACT_VM_PRIMARYATTACK_3 = 568
ACT_VM_PRIMARYATTACK_2 = 569
ACT_VM_PRIMARYATTACK_1 = 570
ACT_VM_PRIMARYATTACK_DEPLOYED = 571
ACT_VM_PRIMARYATTACK_DEPLOYED_8 = 572
ACT_VM_PRIMARYATTACK_DEPLOYED_7 = 573
ACT_VM_PRIMARYATTACK_DEPLOYED_6 = 574
ACT_VM_PRIMARYATTACK_DEPLOYED_5 = 575
ACT_VM_PRIMARYATTACK_DEPLOYED_4 = 576
ACT_VM_PRIMARYATTACK_DEPLOYED_3 = 577
ACT_VM_PRIMARYATTACK_DEPLOYED_2 = 578
ACT_VM_PRIMARYATTACK_DEPLOYED_1 = 579
ACT_VM_PRIMARYATTACK_DEPLOYED_EMPTY = 580
ACT_DOD_DEPLOYED = 581
ACT_DOD_PRONE_DEPLOYED = 582
ACT_DOD_IDLE_ZOOMED = 583
ACT_DOD_WALK_ZOOMED = 584
ACT_DOD_CROUCH_ZOOMED = 585
ACT_DOD_CROUCHWALK_ZOOMED = 586
ACT_DOD_PRONE_ZOOMED = 587
ACT_DOD_PRONE_FORWARD_ZOOMED = 588
ACT_DOD_PRIMARYATTACK_DEPLOYED = 589
ACT_DOD_PRIMARYATTACK_PRONE_DEPLOYED = 590
ACT_DOD_RELOAD_DEPLOYED = 591
ACT_DOD_RELOAD_PRONE_DEPLOYED = 592
ACT_DOD_PRIMARYATTACK_PRONE = 593
ACT_DOD_SECONDARYATTACK_PRONE = 594
ACT_DOD_RELOAD_CROUCH = 595
ACT_DOD_RELOAD_PRONE = 596
ACT_DOD_STAND_IDLE = 597
ACT_DOD_STAND_AIM = 598
ACT_DOD_CROUCH_IDLE = 599
ACT_DOD_CROUCH_AIM = 600
ACT_DOD_CROUCHWALK_IDLE = 601
ACT_DOD_CROUCHWALK_AIM = 602
ACT_DOD_WALK_IDLE = 603
ACT_DOD_WALK_AIM = 604
ACT_DOD_RUN_IDLE = 605
ACT_DOD_RUN_AIM = 606
ACT_DOD_STAND_AIM_PISTOL = 607
ACT_DOD_CROUCH_AIM_PISTOL = 608
ACT_DOD_CROUCHWALK_AIM_PISTOL = 609
ACT_DOD_WALK_AIM_PISTOL = 610
ACT_DOD_RUN_AIM_PISTOL = 611
ACT_DOD_PRONE_AIM_PISTOL = 612
ACT_DOD_STAND_IDLE_PISTOL = 613
ACT_DOD_CROUCH_IDLE_PISTOL = 614
ACT_DOD_CROUCHWALK_IDLE_PISTOL = 615
ACT_DOD_WALK_IDLE_PISTOL = 616
ACT_DOD_RUN_IDLE_PISTOL = 617
ACT_DOD_SPRINT_IDLE_PISTOL = 618
ACT_DOD_PRONEWALK_IDLE_PISTOL = 619
ACT_DOD_STAND_AIM_C96 = 620
ACT_DOD_CROUCH_AIM_C96 = 621
ACT_DOD_CROUCHWALK_AIM_C96 = 622
ACT_DOD_WALK_AIM_C96 = 623
ACT_DOD_RUN_AIM_C96 = 624
ACT_DOD_PRONE_AIM_C96 = 625
ACT_DOD_STAND_IDLE_C96 = 626
ACT_DOD_CROUCH_IDLE_C96 = 627
ACT_DOD_CROUCHWALK_IDLE_C96 = 628
ACT_DOD_WALK_IDLE_C96 = 629
ACT_DOD_RUN_IDLE_C96 = 630
ACT_DOD_SPRINT_IDLE_C96 = 631
ACT_DOD_PRONEWALK_IDLE_C96 = 632
ACT_DOD_STAND_AIM_RIFLE = 633
ACT_DOD_CROUCH_AIM_RIFLE = 634
ACT_DOD_CROUCHWALK_AIM_RIFLE = 635
ACT_DOD_WALK_AIM_RIFLE = 636
ACT_DOD_RUN_AIM_RIFLE = 637
ACT_DOD_PRONE_AIM_RIFLE = 638
ACT_DOD_STAND_IDLE_RIFLE = 639
ACT_DOD_CROUCH_IDLE_RIFLE = 640
ACT_DOD_CROUCHWALK_IDLE_RIFLE = 641
ACT_DOD_WALK_IDLE_RIFLE = 642
ACT_DOD_RUN_IDLE_RIFLE = 643
ACT_DOD_SPRINT_IDLE_RIFLE = 644
ACT_DOD_PRONEWALK_IDLE_RIFLE = 645
ACT_DOD_STAND_AIM_BOLT = 646
ACT_DOD_CROUCH_AIM_BOLT = 647
ACT_DOD_CROUCHWALK_AIM_BOLT = 648
ACT_DOD_WALK_AIM_BOLT = 649
ACT_DOD_RUN_AIM_BOLT = 650
ACT_DOD_PRONE_AIM_BOLT = 651
ACT_DOD_STAND_IDLE_BOLT = 652
ACT_DOD_CROUCH_IDLE_BOLT = 653
ACT_DOD_CROUCHWALK_IDLE_BOLT = 654
ACT_DOD_WALK_IDLE_BOLT = 655
ACT_DOD_RUN_IDLE_BOLT = 656
ACT_DOD_SPRINT_IDLE_BOLT = 657
ACT_DOD_PRONEWALK_IDLE_BOLT = 658
ACT_DOD_STAND_AIM_TOMMY = 659
ACT_DOD_CROUCH_AIM_TOMMY = 660
ACT_DOD_CROUCHWALK_AIM_TOMMY = 661
ACT_DOD_WALK_AIM_TOMMY = 662
ACT_DOD_RUN_AIM_TOMMY = 663
ACT_DOD_PRONE_AIM_TOMMY = 664
ACT_DOD_STAND_IDLE_TOMMY = 665
ACT_DOD_CROUCH_IDLE_TOMMY = 666
ACT_DOD_CROUCHWALK_IDLE_TOMMY = 667
ACT_DOD_WALK_IDLE_TOMMY = 668
ACT_DOD_RUN_IDLE_TOMMY = 669
ACT_DOD_SPRINT_IDLE_TOMMY = 670
ACT_DOD_PRONEWALK_IDLE_TOMMY = 671
ACT_DOD_STAND_AIM_MP40 = 672
ACT_DOD_CROUCH_AIM_MP40 = 673
ACT_DOD_CROUCHWALK_AIM_MP40 = 674
ACT_DOD_WALK_AIM_MP40 = 675
ACT_DOD_RUN_AIM_MP40 = 676
ACT_DOD_PRONE_AIM_MP40 = 677
ACT_DOD_STAND_IDLE_MP40 = 678
ACT_DOD_CROUCH_IDLE_MP40 = 679
ACT_DOD_CROUCHWALK_IDLE_MP40 = 680
ACT_DOD_WALK_IDLE_MP40 = 681
ACT_DOD_RUN_IDLE_MP40 = 682
ACT_DOD_SPRINT_IDLE_MP40 = 683
ACT_DOD_PRONEWALK_IDLE_MP40 = 684
ACT_DOD_STAND_AIM_MP44 = 685
ACT_DOD_CROUCH_AIM_MP44 = 686
ACT_DOD_CROUCHWALK_AIM_MP44 = 687
ACT_DOD_WALK_AIM_MP44 = 688
ACT_DOD_RUN_AIM_MP44 = 689
ACT_DOD_PRONE_AIM_MP44 = 690
ACT_DOD_STAND_IDLE_MP44 = 691
ACT_DOD_CROUCH_IDLE_MP44 = 692
ACT_DOD_CROUCHWALK_IDLE_MP44 = 693
ACT_DOD_WALK_IDLE_MP44 = 694
ACT_DOD_RUN_IDLE_MP44 = 695
ACT_DOD_SPRINT_IDLE_MP44 = 696
ACT_DOD_PRONEWALK_IDLE_MP44 = 697
ACT_DOD_STAND_AIM_GREASE = 698
ACT_DOD_CROUCH_AIM_GREASE = 699
ACT_DOD_CROUCHWALK_AIM_GREASE = 700
ACT_DOD_WALK_AIM_GREASE = 701
ACT_DOD_RUN_AIM_GREASE = 702
ACT_DOD_PRONE_AIM_GREASE = 703
ACT_DOD_STAND_IDLE_GREASE = 704
ACT_DOD_CROUCH_IDLE_GREASE = 705
ACT_DOD_CROUCHWALK_IDLE_GREASE = 706
ACT_DOD_WALK_IDLE_GREASE = 707
ACT_DOD_RUN_IDLE_GREASE = 708
ACT_DOD_SPRINT_IDLE_GREASE = 709
ACT_DOD_PRONEWALK_IDLE_GREASE = 710
ACT_DOD_STAND_AIM_MG = 711
ACT_DOD_CROUCH_AIM_MG = 712
ACT_DOD_CROUCHWALK_AIM_MG = 713
ACT_DOD_WALK_AIM_MG = 714
ACT_DOD_RUN_AIM_MG = 715
ACT_DOD_PRONE_AIM_MG = 716
ACT_DOD_STAND_IDLE_MG = 717
ACT_DOD_CROUCH_IDLE_MG = 718
ACT_DOD_CROUCHWALK_IDLE_MG = 719
ACT_DOD_WALK_IDLE_MG = 720
ACT_DOD_RUN_IDLE_MG = 721
ACT_DOD_SPRINT_IDLE_MG = 722
ACT_DOD_PRONEWALK_IDLE_MG = 723
ACT_DOD_STAND_AIM_30CAL = 724
ACT_DOD_CROUCH_AIM_30CAL = 725
ACT_DOD_CROUCHWALK_AIM_30CAL = 726
ACT_DOD_WALK_AIM_30CAL = 727
ACT_DOD_RUN_AIM_30CAL = 728
ACT_DOD_PRONE_AIM_30CAL = 729
ACT_DOD_STAND_IDLE_30CAL = 730
ACT_DOD_CROUCH_IDLE_30CAL = 731
ACT_DOD_CROUCHWALK_IDLE_30CAL = 732
ACT_DOD_WALK_IDLE_30CAL = 733
ACT_DOD_RUN_IDLE_30CAL = 734
ACT_DOD_SPRINT_IDLE_30CAL = 735
ACT_DOD_PRONEWALK_IDLE_30CAL = 736
ACT_DOD_STAND_AIM_GREN_FRAG = 737
ACT_DOD_CROUCH_AIM_GREN_FRAG = 738
ACT_DOD_CROUCHWALK_AIM_GREN_FRAG = 739
ACT_DOD_WALK_AIM_GREN_FRAG = 740
ACT_DOD_RUN_AIM_GREN_FRAG = 741
ACT_DOD_PRONE_AIM_GREN_FRAG = 742
ACT_DOD_SPRINT_AIM_GREN_FRAG = 743
ACT_DOD_PRONEWALK_AIM_GREN_FRAG = 744
ACT_DOD_STAND_AIM_GREN_STICK = 745
ACT_DOD_CROUCH_AIM_GREN_STICK = 746
ACT_DOD_CROUCHWALK_AIM_GREN_STICK = 747
ACT_DOD_WALK_AIM_GREN_STICK = 748
ACT_DOD_RUN_AIM_GREN_STICK = 749
ACT_DOD_PRONE_AIM_GREN_STICK = 750
ACT_DOD_SPRINT_AIM_GREN_STICK = 751
ACT_DOD_PRONEWALK_AIM_GREN_STICK = 752
ACT_DOD_STAND_AIM_KNIFE = 753
ACT_DOD_CROUCH_AIM_KNIFE = 754
ACT_DOD_CROUCHWALK_AIM_KNIFE = 755
ACT_DOD_WALK_AIM_KNIFE = 756
ACT_DOD_RUN_AIM_KNIFE = 757
ACT_DOD_PRONE_AIM_KNIFE = 758
ACT_DOD_SPRINT_AIM_KNIFE = 759
ACT_DOD_PRONEWALK_AIM_KNIFE = 760
ACT_DOD_STAND_AIM_SPADE = 761
ACT_DOD_CROUCH_AIM_SPADE = 762
ACT_DOD_CROUCHWALK_AIM_SPADE = 763
ACT_DOD_WALK_AIM_SPADE = 764
ACT_DOD_RUN_AIM_SPADE = 765
ACT_DOD_PRONE_AIM_SPADE = 766
ACT_DOD_SPRINT_AIM_SPADE = 767
ACT_DOD_PRONEWALK_AIM_SPADE = 768
ACT_DOD_STAND_AIM_BAZOOKA = 769
ACT_DOD_CROUCH_AIM_BAZOOKA = 770
ACT_DOD_CROUCHWALK_AIM_BAZOOKA = 771
ACT_DOD_WALK_AIM_BAZOOKA = 772
ACT_DOD_RUN_AIM_BAZOOKA = 773
ACT_DOD_PRONE_AIM_BAZOOKA = 774
ACT_DOD_STAND_IDLE_BAZOOKA = 775
ACT_DOD_CROUCH_IDLE_BAZOOKA = 776
ACT_DOD_CROUCHWALK_IDLE_BAZOOKA = 777
ACT_DOD_WALK_IDLE_BAZOOKA = 778
ACT_DOD_RUN_IDLE_BAZOOKA = 779
ACT_DOD_SPRINT_IDLE_BAZOOKA = 780
ACT_DOD_PRONEWALK_IDLE_BAZOOKA = 781
ACT_DOD_STAND_AIM_PSCHRECK = 782
ACT_DOD_CROUCH_AIM_PSCHRECK = 783
ACT_DOD_CROUCHWALK_AIM_PSCHRECK = 784
ACT_DOD_WALK_AIM_PSCHRECK = 785
ACT_DOD_RUN_AIM_PSCHRECK = 786
ACT_DOD_PRONE_AIM_PSCHRECK = 787
ACT_DOD_STAND_IDLE_PSCHRECK = 788
ACT_DOD_CROUCH_IDLE_PSCHRECK = 789
ACT_DOD_CROUCHWALK_IDLE_PSCHRECK = 790
ACT_DOD_WALK_IDLE_PSCHRECK = 791
ACT_DOD_RUN_IDLE_PSCHRECK = 792
ACT_DOD_SPRINT_IDLE_PSCHRECK = 793
ACT_DOD_PRONEWALK_IDLE_PSCHRECK = 794
ACT_DOD_STAND_AIM_BAR = 795
ACT_DOD_CROUCH_AIM_BAR = 796
ACT_DOD_CROUCHWALK_AIM_BAR = 797
ACT_DOD_WALK_AIM_BAR = 798
ACT_DOD_RUN_AIM_BAR = 799
ACT_DOD_PRONE_AIM_BAR = 800
ACT_DOD_STAND_IDLE_BAR = 801
ACT_DOD_CROUCH_IDLE_BAR = 802
ACT_DOD_CROUCHWALK_IDLE_BAR = 803
ACT_DOD_WALK_IDLE_BAR = 804
ACT_DOD_RUN_IDLE_BAR = 805
ACT_DOD_SPRINT_IDLE_BAR = 806
ACT_DOD_PRONEWALK_IDLE_BAR = 807
ACT_DOD_STAND_ZOOM_RIFLE = 808
ACT_DOD_CROUCH_ZOOM_RIFLE = 809
ACT_DOD_CROUCHWALK_ZOOM_RIFLE = 810
ACT_DOD_WALK_ZOOM_RIFLE = 811
ACT_DOD_RUN_ZOOM_RIFLE = 812
ACT_DOD_PRONE_ZOOM_RIFLE = 813
ACT_DOD_STAND_ZOOM_BOLT = 814
ACT_DOD_CROUCH_ZOOM_BOLT = 815
ACT_DOD_CROUCHWALK_ZOOM_BOLT = 816
ACT_DOD_WALK_ZOOM_BOLT = 817
ACT_DOD_RUN_ZOOM_BOLT = 818
ACT_DOD_PRONE_ZOOM_BOLT = 819
ACT_DOD_STAND_ZOOM_BAZOOKA = 820
ACT_DOD_CROUCH_ZOOM_BAZOOKA = 821
ACT_DOD_CROUCHWALK_ZOOM_BAZOOKA = 822
ACT_DOD_WALK_ZOOM_BAZOOKA = 823
ACT_DOD_RUN_ZOOM_BAZOOKA = 824
ACT_DOD_PRONE_ZOOM_BAZOOKA = 825
ACT_DOD_STAND_ZOOM_PSCHRECK = 826
ACT_DOD_CROUCH_ZOOM_PSCHRECK = 827
ACT_DOD_CROUCHWALK_ZOOM_PSCHRECK = 828
ACT_DOD_WALK_ZOOM_PSCHRECK = 829
ACT_DOD_RUN_ZOOM_PSCHRECK = 830
ACT_DOD_PRONE_ZOOM_PSCHRECK = 831
ACT_DOD_DEPLOY_RIFLE = 832
ACT_DOD_DEPLOY_TOMMY = 833
ACT_DOD_DEPLOY_MG = 834
ACT_DOD_DEPLOY_30CAL = 835
ACT_DOD_PRONE_DEPLOY_RIFLE = 836
ACT_DOD_PRONE_DEPLOY_TOMMY = 837
ACT_DOD_PRONE_DEPLOY_MG = 838
ACT_DOD_PRONE_DEPLOY_30CAL = 839
ACT_DOD_PRIMARYATTACK_RIFLE = 840
ACT_DOD_SECONDARYATTACK_RIFLE = 841
ACT_DOD_PRIMARYATTACK_PRONE_RIFLE = 842
ACT_DOD_SECONDARYATTACK_PRONE_RIFLE = 843
ACT_DOD_PRIMARYATTACK_PRONE_DEPLOYED_RIFLE = 844
ACT_DOD_PRIMARYATTACK_DEPLOYED_RIFLE = 845
ACT_DOD_PRIMARYATTACK_BOLT = 846
ACT_DOD_SECONDARYATTACK_BOLT = 847
ACT_DOD_PRIMARYATTACK_PRONE_BOLT = 848
ACT_DOD_SECONDARYATTACK_PRONE_BOLT = 849
ACT_DOD_PRIMARYATTACK_TOMMY = 850
ACT_DOD_PRIMARYATTACK_PRONE_TOMMY = 851
ACT_DOD_SECONDARYATTACK_TOMMY = 852
ACT_DOD_SECONDARYATTACK_PRONE_TOMMY = 853
ACT_DOD_PRIMARYATTACK_MP40 = 854
ACT_DOD_PRIMARYATTACK_PRONE_MP40 = 855
ACT_DOD_SECONDARYATTACK_MP40 = 856
ACT_DOD_SECONDARYATTACK_PRONE_MP40 = 857
ACT_DOD_PRIMARYATTACK_MP44 = 858
ACT_DOD_PRIMARYATTACK_PRONE_MP44 = 859
ACT_DOD_PRIMARYATTACK_GREASE = 860
ACT_DOD_PRIMARYATTACK_PRONE_GREASE = 861
ACT_DOD_PRIMARYATTACK_PISTOL = 862
ACT_DOD_PRIMARYATTACK_PRONE_PISTOL = 863
ACT_DOD_PRIMARYATTACK_C96 = 864
ACT_DOD_PRIMARYATTACK_PRONE_C96 = 865
ACT_DOD_PRIMARYATTACK_MG = 866
ACT_DOD_PRIMARYATTACK_PRONE_MG = 867
ACT_DOD_PRIMARYATTACK_PRONE_DEPLOYED_MG = 868
ACT_DOD_PRIMARYATTACK_DEPLOYED_MG = 869
ACT_DOD_PRIMARYATTACK_30CAL = 870
ACT_DOD_PRIMARYATTACK_PRONE_30CAL = 871
ACT_DOD_PRIMARYATTACK_DEPLOYED_30CAL = 872
ACT_DOD_PRIMARYATTACK_PRONE_DEPLOYED_30CAL = 873
ACT_DOD_PRIMARYATTACK_GREN_FRAG = 874
ACT_DOD_PRIMARYATTACK_PRONE_GREN_FRAG = 875
ACT_DOD_PRIMARYATTACK_GREN_STICK = 876
ACT_DOD_PRIMARYATTACK_PRONE_GREN_STICK = 877
ACT_DOD_PRIMARYATTACK_KNIFE = 878
ACT_DOD_PRIMARYATTACK_PRONE_KNIFE = 879
ACT_DOD_PRIMARYATTACK_SPADE = 880
ACT_DOD_PRIMARYATTACK_PRONE_SPADE = 881
ACT_DOD_PRIMARYATTACK_BAZOOKA = 882
ACT_DOD_PRIMARYATTACK_PRONE_BAZOOKA = 883
ACT_DOD_PRIMARYATTACK_PSCHRECK = 884
ACT_DOD_PRIMARYATTACK_PRONE_PSCHRECK = 885
ACT_DOD_PRIMARYATTACK_BAR = 886
ACT_DOD_PRIMARYATTACK_PRONE_BAR = 887
ACT_DOD_RELOAD_GARAND = 888
ACT_DOD_RELOAD_K43 = 889
ACT_DOD_RELOAD_BAR = 890
ACT_DOD_RELOAD_MP40 = 891
ACT_DOD_RELOAD_MP44 = 892
ACT_DOD_RELOAD_BOLT = 893
ACT_DOD_RELOAD_M1CARBINE = 894
ACT_DOD_RELOAD_TOMMY = 895
ACT_DOD_RELOAD_GREASEGUN = 896
ACT_DOD_RELOAD_PISTOL = 897
ACT_DOD_RELOAD_FG42 = 898
ACT_DOD_RELOAD_RIFLE = 899
ACT_DOD_RELOAD_RIFLEGRENADE = 900
ACT_DOD_RELOAD_C96 = 901
ACT_DOD_RELOAD_CROUCH_BAR = 902
ACT_DOD_RELOAD_CROUCH_RIFLE = 903
ACT_DOD_RELOAD_CROUCH_RIFLEGRENADE = 904
ACT_DOD_RELOAD_CROUCH_BOLT = 905
ACT_DOD_RELOAD_CROUCH_MP44 = 906
ACT_DOD_RELOAD_CROUCH_MP40 = 907
ACT_DOD_RELOAD_CROUCH_TOMMY = 908
ACT_DOD_RELOAD_CROUCH_BAZOOKA = 909
ACT_DOD_RELOAD_CROUCH_PSCHRECK = 910
ACT_DOD_RELOAD_CROUCH_PISTOL = 911
ACT_DOD_RELOAD_CROUCH_M1CARBINE = 912
ACT_DOD_RELOAD_CROUCH_C96 = 913
ACT_DOD_RELOAD_BAZOOKA = 914
ACT_DOD_ZOOMLOAD_BAZOOKA = 915
ACT_DOD_RELOAD_PSCHRECK = 916
ACT_DOD_ZOOMLOAD_PSCHRECK = 917
ACT_DOD_RELOAD_DEPLOYED_FG42 = 918
ACT_DOD_RELOAD_DEPLOYED_30CAL = 919
ACT_DOD_RELOAD_DEPLOYED_MG = 920
ACT_DOD_RELOAD_DEPLOYED_MG34 = 921
ACT_DOD_RELOAD_DEPLOYED_BAR = 922
ACT_DOD_RELOAD_PRONE_PISTOL = 923
ACT_DOD_RELOAD_PRONE_GARAND = 924
ACT_DOD_RELOAD_PRONE_M1CARBINE = 925
ACT_DOD_RELOAD_PRONE_BOLT = 926
ACT_DOD_RELOAD_PRONE_K43 = 927
ACT_DOD_RELOAD_PRONE_MP40 = 928
ACT_DOD_RELOAD_PRONE_MP44 = 929
ACT_DOD_RELOAD_PRONE_BAR = 930
ACT_DOD_RELOAD_PRONE_GREASEGUN = 931
ACT_DOD_RELOAD_PRONE_TOMMY = 932
ACT_DOD_RELOAD_PRONE_FG42 = 933
ACT_DOD_RELOAD_PRONE_RIFLE = 934
ACT_DOD_RELOAD_PRONE_RIFLEGRENADE = 935
ACT_DOD_RELOAD_PRONE_C96 = 936
ACT_DOD_RELOAD_PRONE_BAZOOKA = 937
ACT_DOD_ZOOMLOAD_PRONE_BAZOOKA = 938
ACT_DOD_RELOAD_PRONE_PSCHRECK = 939
ACT_DOD_ZOOMLOAD_PRONE_PSCHRECK = 940
ACT_DOD_RELOAD_PRONE_DEPLOYED_BAR = 941
ACT_DOD_RELOAD_PRONE_DEPLOYED_FG42 = 942
ACT_DOD_RELOAD_PRONE_DEPLOYED_30CAL = 943
ACT_DOD_RELOAD_PRONE_DEPLOYED_MG = 944
ACT_DOD_RELOAD_PRONE_DEPLOYED_MG34 = 945
ACT_DOD_PRONE_ZOOM_FORWARD_RIFLE = 946
ACT_DOD_PRONE_ZOOM_FORWARD_BOLT = 947
ACT_DOD_PRONE_ZOOM_FORWARD_BAZOOKA = 948
ACT_DOD_PRONE_ZOOM_FORWARD_PSCHRECK = 949
ACT_DOD_PRIMARYATTACK_CROUCH = 950
ACT_DOD_PRIMARYATTACK_CROUCH_SPADE = 951
ACT_DOD_PRIMARYATTACK_CROUCH_KNIFE = 952
ACT_DOD_PRIMARYATTACK_CROUCH_GREN_FRAG = 953
ACT_DOD_PRIMARYATTACK_CROUCH_GREN_STICK = 954
ACT_DOD_SECONDARYATTACK_CROUCH = 955
ACT_DOD_SECONDARYATTACK_CROUCH_TOMMY = 956
ACT_DOD_SECONDARYATTACK_CROUCH_MP40 = 957
ACT_DOD_HS_IDLE = 958
ACT_DOD_HS_CROUCH = 959
ACT_DOD_HS_IDLE_30CAL = 960
ACT_DOD_HS_IDLE_BAZOOKA = 961
ACT_DOD_HS_IDLE_PSCHRECK = 962
ACT_DOD_HS_IDLE_KNIFE = 963
ACT_DOD_HS_IDLE_MG42 = 964
ACT_DOD_HS_IDLE_PISTOL = 965
ACT_DOD_HS_IDLE_STICKGRENADE = 966
ACT_DOD_HS_IDLE_TOMMY = 967
ACT_DOD_HS_IDLE_MP44 = 968
ACT_DOD_HS_IDLE_K98 = 969
ACT_DOD_HS_CROUCH_30CAL = 970
ACT_DOD_HS_CROUCH_BAZOOKA = 971
ACT_DOD_HS_CROUCH_PSCHRECK = 972
ACT_DOD_HS_CROUCH_KNIFE = 973
ACT_DOD_HS_CROUCH_MG42 = 974
ACT_DOD_HS_CROUCH_PISTOL = 975
ACT_DOD_HS_CROUCH_STICKGRENADE = 976
ACT_DOD_HS_CROUCH_TOMMY = 977
ACT_DOD_HS_CROUCH_MP44 = 978
ACT_DOD_HS_CROUCH_K98 = 979
ACT_DOD_STAND_IDLE_TNT = 980
ACT_DOD_CROUCH_IDLE_TNT = 981
ACT_DOD_CROUCHWALK_IDLE_TNT = 982
ACT_DOD_WALK_IDLE_TNT = 983
ACT_DOD_RUN_IDLE_TNT = 984
ACT_DOD_SPRINT_IDLE_TNT = 985
ACT_DOD_PRONEWALK_IDLE_TNT = 986
ACT_DOD_PLANT_TNT = 987
ACT_DOD_DEFUSE_TNT = 988
ACT_VM_FIZZLE = 989
ACT_MP_STAND_IDLE = 990
ACT_MP_CROUCH_IDLE = 991
ACT_MP_CROUCH_DEPLOYED_IDLE = 992
ACT_MP_CROUCH_DEPLOYED = 993
ACT_MP_DEPLOYED_IDLE = 995
ACT_MP_RUN = 996
ACT_MP_WALK = 997
ACT_MP_AIRWALK = 998
ACT_MP_CROUCHWALK = 999
ACT_MP_SPRINT = 1000
ACT_MP_JUMP = 1001
ACT_MP_JUMP_START = 1002
ACT_MP_JUMP_FLOAT = 1003
ACT_MP_JUMP_LAND = 1004
ACT_MP_DOUBLEJUMP = 1005
ACT_MP_SWIM = 1006
ACT_MP_DEPLOYED = 1007
ACT_MP_SWIM_DEPLOYED = 1008
ACT_MP_VCD = 1009
ACT_MP_SWIM_IDLE = 1010
ACT_MP_ATTACK_STAND_PRIMARYFIRE = 1011
ACT_MP_ATTACK_STAND_PRIMARYFIRE_DEPLOYED = 1012
ACT_MP_ATTACK_STAND_SECONDARYFIRE = 1013
ACT_MP_ATTACK_STAND_GRENADE = 1014
ACT_MP_ATTACK_CROUCH_PRIMARYFIRE = 1015
ACT_MP_ATTACK_CROUCH_PRIMARYFIRE_DEPLOYED = 1016
ACT_MP_ATTACK_CROUCH_SECONDARYFIRE = 1017
ACT_MP_ATTACK_CROUCH_GRENADE = 1018
ACT_MP_ATTACK_SWIM_PRIMARYFIRE = 1019
ACT_MP_ATTACK_SWIM_SECONDARYFIRE = 1020
ACT_MP_ATTACK_SWIM_GRENADE = 1021
ACT_MP_ATTACK_AIRWALK_PRIMARYFIRE = 1022
ACT_MP_ATTACK_AIRWALK_SECONDARYFIRE = 1023
ACT_MP_ATTACK_AIRWALK_GRENADE = 1024
ACT_MP_RELOAD_STAND = 1025
ACT_MP_RELOAD_STAND_LOOP = 1026
ACT_MP_RELOAD_STAND_END = 1027
ACT_MP_RELOAD_CROUCH = 1028
ACT_MP_RELOAD_CROUCH_LOOP = 1029
ACT_MP_RELOAD_CROUCH_END = 1030
ACT_MP_RELOAD_SWIM = 1031
ACT_MP_RELOAD_SWIM_LOOP = 1032
ACT_MP_RELOAD_SWIM_END = 1033
ACT_MP_RELOAD_AIRWALK = 1034
ACT_MP_RELOAD_AIRWALK_LOOP = 1035
ACT_MP_RELOAD_AIRWALK_END = 1036
ACT_MP_ATTACK_STAND_PREFIRE = 1037
ACT_MP_ATTACK_STAND_POSTFIRE = 1038
ACT_MP_ATTACK_STAND_STARTFIRE = 1039
ACT_MP_ATTACK_CROUCH_PREFIRE = 1040
ACT_MP_ATTACK_CROUCH_POSTFIRE = 1041
ACT_MP_ATTACK_SWIM_PREFIRE = 1042
ACT_MP_ATTACK_SWIM_POSTFIRE = 1043
ACT_MP_STAND_PRIMARY = 1044
ACT_MP_CROUCH_PRIMARY = 1045
ACT_MP_RUN_PRIMARY = 1046
ACT_MP_WALK_PRIMARY = 1047
ACT_MP_AIRWALK_PRIMARY = 1048
ACT_MP_CROUCHWALK_PRIMARY = 1049
ACT_MP_JUMP_PRIMARY = 1050
ACT_MP_JUMP_START_PRIMARY = 1051
ACT_MP_JUMP_FLOAT_PRIMARY = 1052
ACT_MP_JUMP_LAND_PRIMARY = 1053
ACT_MP_SWIM_PRIMARY = 1054
ACT_MP_DEPLOYED_PRIMARY = 1055
ACT_MP_SWIM_DEPLOYED_PRIMARY = 1056
ACT_MP_ATTACK_STAND_PRIMARY = 1059
ACT_MP_ATTACK_STAND_PRIMARY_DEPLOYED = 1060
ACT_MP_ATTACK_CROUCH_PRIMARY = 1061
ACT_MP_ATTACK_CROUCH_PRIMARY_DEPLOYED = 1062
ACT_MP_ATTACK_SWIM_PRIMARY = 1063
ACT_MP_ATTACK_AIRWALK_PRIMARY = 1064
ACT_MP_RELOAD_STAND_PRIMARY = 1065
ACT_MP_RELOAD_STAND_PRIMARY_LOOP = 1066
ACT_MP_RELOAD_STAND_PRIMARY_END = 1067
ACT_MP_RELOAD_CROUCH_PRIMARY = 1068
ACT_MP_RELOAD_CROUCH_PRIMARY_LOOP = 1069
ACT_MP_RELOAD_CROUCH_PRIMARY_END = 1070
ACT_MP_RELOAD_SWIM_PRIMARY = 1071
ACT_MP_RELOAD_SWIM_PRIMARY_LOOP = 1072
ACT_MP_RELOAD_SWIM_PRIMARY_END = 1073
ACT_MP_RELOAD_AIRWALK_PRIMARY = 1074
ACT_MP_RELOAD_AIRWALK_PRIMARY_LOOP = 1075
ACT_MP_RELOAD_AIRWALK_PRIMARY_END = 1076
ACT_MP_ATTACK_STAND_GRENADE_PRIMARY = 1105
ACT_MP_ATTACK_CROUCH_GRENADE_PRIMARY = 1106
ACT_MP_ATTACK_SWIM_GRENADE_PRIMARY = 1107
ACT_MP_ATTACK_AIRWALK_GRENADE_PRIMARY = 1108
ACT_MP_STAND_SECONDARY = 1109
ACT_MP_CROUCH_SECONDARY = 1110
ACT_MP_RUN_SECONDARY = 1111
ACT_MP_WALK_SECONDARY = 1112
ACT_MP_AIRWALK_SECONDARY = 1113
ACT_MP_CROUCHWALK_SECONDARY = 1114
ACT_MP_JUMP_SECONDARY = 1115
ACT_MP_JUMP_START_SECONDARY = 1116
ACT_MP_JUMP_FLOAT_SECONDARY = 1117
ACT_MP_JUMP_LAND_SECONDARY = 1118
ACT_MP_SWIM_SECONDARY = 1119
ACT_MP_ATTACK_STAND_SECONDARY = 1120
ACT_MP_ATTACK_CROUCH_SECONDARY = 1121
ACT_MP_ATTACK_SWIM_SECONDARY = 1122
ACT_MP_ATTACK_AIRWALK_SECONDARY = 1123
ACT_MP_RELOAD_STAND_SECONDARY = 1124
ACT_MP_RELOAD_STAND_SECONDARY_LOOP = 1125
ACT_MP_RELOAD_STAND_SECONDARY_END = 1126
ACT_MP_RELOAD_CROUCH_SECONDARY = 1127
ACT_MP_RELOAD_CROUCH_SECONDARY_LOOP = 1128
ACT_MP_RELOAD_CROUCH_SECONDARY_END = 1129
ACT_MP_RELOAD_SWIM_SECONDARY = 1130
ACT_MP_RELOAD_SWIM_SECONDARY_LOOP = 1131
ACT_MP_RELOAD_SWIM_SECONDARY_END = 1132
ACT_MP_RELOAD_AIRWALK_SECONDARY = 1133
ACT_MP_RELOAD_AIRWALK_SECONDARY_LOOP = 1134
ACT_MP_RELOAD_AIRWALK_SECONDARY_END = 1135
ACT_MP_ATTACK_STAND_GRENADE_SECONDARY = 1140
ACT_MP_ATTACK_CROUCH_GRENADE_SECONDARY = 1141
ACT_MP_ATTACK_SWIM_GRENADE_SECONDARY = 1142
ACT_MP_ATTACK_AIRWALK_GRENADE_SECONDARY = 1143
ACT_MP_STAND_MELEE = 1171
ACT_MP_CROUCH_MELEE = 1172
ACT_MP_RUN_MELEE = 1173
ACT_MP_WALK_MELEE = 1174
ACT_MP_AIRWALK_MELEE = 1175
ACT_MP_CROUCHWALK_MELEE = 1176
ACT_MP_JUMP_MELEE = 1177
ACT_MP_JUMP_START_MELEE = 1178
ACT_MP_JUMP_FLOAT_MELEE = 1179
ACT_MP_JUMP_LAND_MELEE = 1180
ACT_MP_SWIM_MELEE = 1181
ACT_MP_ATTACK_STAND_MELEE = 1182
ACT_MP_ATTACK_STAND_MELEE_SECONDARY = 1183
ACT_MP_ATTACK_CROUCH_MELEE = 1184
ACT_MP_ATTACK_CROUCH_MELEE_SECONDARY = 1185
ACT_MP_ATTACK_SWIM_MELEE = 1186
ACT_MP_ATTACK_AIRWALK_MELEE = 1187
ACT_MP_ATTACK_STAND_GRENADE_MELEE = 1188
ACT_MP_ATTACK_CROUCH_GRENADE_MELEE = 1189
ACT_MP_ATTACK_SWIM_GRENADE_MELEE = 1190
ACT_MP_ATTACK_AIRWALK_GRENADE_MELEE = 1191
ACT_MP_GESTURE_FLINCH = 1258
ACT_MP_GESTURE_FLINCH_PRIMARY = 1259
ACT_MP_GESTURE_FLINCH_SECONDARY = 1260
ACT_MP_GESTURE_FLINCH_MELEE = 1261
ACT_MP_GESTURE_FLINCH_HEAD = 1264
ACT_MP_GESTURE_FLINCH_CHEST = 1265
ACT_MP_GESTURE_FLINCH_STOMACH = 1266
ACT_MP_GESTURE_FLINCH_LEFTARM = 1267
ACT_MP_GESTURE_FLINCH_RIGHTARM = 1268
ACT_MP_GESTURE_FLINCH_LEFTLEG = 1269
ACT_MP_GESTURE_FLINCH_RIGHTLEG = 1270
ACT_MP_GRENADE1_DRAW = 1271
ACT_MP_GRENADE1_IDLE = 1272
ACT_MP_GRENADE1_ATTACK = 1273
ACT_MP_GRENADE2_DRAW = 1274
ACT_MP_GRENADE2_IDLE = 1275
ACT_MP_GRENADE2_ATTACK = 1276
ACT_MP_PRIMARY_GRENADE1_DRAW = 1277
ACT_MP_PRIMARY_GRENADE1_IDLE = 1278
ACT_MP_PRIMARY_GRENADE1_ATTACK = 1279
ACT_MP_PRIMARY_GRENADE2_DRAW = 1280
ACT_MP_PRIMARY_GRENADE2_IDLE = 1281
ACT_MP_PRIMARY_GRENADE2_ATTACK = 1282
ACT_MP_SECONDARY_GRENADE1_DRAW = 1283
ACT_MP_SECONDARY_GRENADE1_IDLE = 1284
ACT_MP_SECONDARY_GRENADE1_ATTACK = 1285
ACT_MP_SECONDARY_GRENADE2_DRAW = 1286
ACT_MP_SECONDARY_GRENADE2_IDLE = 1287
ACT_MP_SECONDARY_GRENADE2_ATTACK = 1288
ACT_MP_MELEE_GRENADE1_DRAW = 1289
ACT_MP_MELEE_GRENADE1_IDLE = 1290
ACT_MP_MELEE_GRENADE1_ATTACK = 1291
ACT_MP_MELEE_GRENADE2_DRAW = 1292
ACT_MP_MELEE_GRENADE2_IDLE = 1293
ACT_MP_MELEE_GRENADE2_ATTACK = 1294
ACT_MP_STAND_BUILDING = 1307
ACT_MP_CROUCH_BUILDING = 1308
ACT_MP_RUN_BUILDING = 1309
ACT_MP_WALK_BUILDING = 1310
ACT_MP_AIRWALK_BUILDING = 1311
ACT_MP_CROUCHWALK_BUILDING = 1312
ACT_MP_JUMP_BUILDING = 1313
ACT_MP_JUMP_START_BUILDING = 1314
ACT_MP_JUMP_FLOAT_BUILDING = 1315
ACT_MP_JUMP_LAND_BUILDING = 1316
ACT_MP_SWIM_BUILDING = 1317
ACT_MP_ATTACK_STAND_BUILDING = 1318
ACT_MP_ATTACK_CROUCH_BUILDING = 1319
ACT_MP_ATTACK_SWIM_BUILDING = 1320
ACT_MP_ATTACK_AIRWALK_BUILDING = 1321
ACT_MP_ATTACK_STAND_GRENADE_BUILDING = 1322
ACT_MP_ATTACK_CROUCH_GRENADE_BUILDING = 1323
ACT_MP_ATTACK_SWIM_GRENADE_BUILDING = 1324
ACT_MP_ATTACK_AIRWALK_GRENADE_BUILDING = 1325
ACT_MP_STAND_PDA = 1345
ACT_MP_CROUCH_PDA = 1346
ACT_MP_RUN_PDA = 1347
ACT_MP_WALK_PDA = 1348
ACT_MP_AIRWALK_PDA = 1349
ACT_MP_CROUCHWALK_PDA = 1350
ACT_MP_JUMP_PDA = 1351
ACT_MP_JUMP_START_PDA = 1352
ACT_MP_JUMP_FLOAT_PDA = 1353
ACT_MP_JUMP_LAND_PDA = 1354
ACT_MP_SWIM_PDA = 1355
ACT_MP_ATTACK_STAND_PDA = 1356
ACT_MP_ATTACK_SWIM_PDA = 1357
ACT_MP_GESTURE_VC_HANDMOUTH = 1377
ACT_MP_GESTURE_VC_FINGERPOINT = 1378
ACT_MP_GESTURE_VC_FISTPUMP = 1379
ACT_MP_GESTURE_VC_THUMBSUP = 1380
ACT_MP_GESTURE_VC_NODYES = 1381
ACT_MP_GESTURE_VC_NODNO = 1382
ACT_MP_GESTURE_VC_HANDMOUTH_PRIMARY = 1383
ACT_MP_GESTURE_VC_FINGERPOINT_PRIMARY = 1384
ACT_MP_GESTURE_VC_FISTPUMP_PRIMARY = 1385
ACT_MP_GESTURE_VC_THUMBSUP_PRIMARY = 1386
ACT_MP_GESTURE_VC_NODYES_PRIMARY = 1387
ACT_MP_GESTURE_VC_NODNO_PRIMARY = 1388
ACT_MP_GESTURE_VC_HANDMOUTH_SECONDARY = 1389
ACT_MP_GESTURE_VC_FINGERPOINT_SECONDARY = 1390
ACT_MP_GESTURE_VC_FISTPUMP_SECONDARY = 1391
ACT_MP_GESTURE_VC_THUMBSUP_SECONDARY = 1392
ACT_MP_GESTURE_VC_NODYES_SECONDARY = 1393
ACT_MP_GESTURE_VC_NODNO_SECONDARY = 1394
ACT_MP_GESTURE_VC_HANDMOUTH_MELEE = 1395
ACT_MP_GESTURE_VC_FINGERPOINT_MELEE = 1396
ACT_MP_GESTURE_VC_FISTPUMP_MELEE = 1397
ACT_MP_GESTURE_VC_THUMBSUP_MELEE = 1398
ACT_MP_GESTURE_VC_NODYES_MELEE = 1399
ACT_MP_GESTURE_VC_NODNO_MELEE = 1400
ACT_MP_GESTURE_VC_HANDMOUTH_BUILDING = 1413
ACT_MP_GESTURE_VC_FINGERPOINT_BUILDING = 1414
ACT_MP_GESTURE_VC_FISTPUMP_BUILDING = 1415
ACT_MP_GESTURE_VC_THUMBSUP_BUILDING = 1416
ACT_MP_GESTURE_VC_NODYES_BUILDING = 1417
ACT_MP_GESTURE_VC_NODNO_BUILDING = 1418
ACT_MP_GESTURE_VC_HANDMOUTH_PDA = 1419
ACT_MP_GESTURE_VC_FINGERPOINT_PDA = 1420
ACT_MP_GESTURE_VC_FISTPUMP_PDA = 1421
ACT_MP_GESTURE_VC_THUMBSUP_PDA = 1422
ACT_MP_GESTURE_VC_NODYES_PDA = 1423
ACT_MP_GESTURE_VC_NODNO_PDA = 1424
ACT_VM_UNUSABLE = 1428
ACT_VM_UNUSABLE_TO_USABLE = 1429
ACT_VM_USABLE_TO_UNUSABLE = 1430
ACT_GMOD_GESTURE_AGREE = 1610
ACT_GMOD_GESTURE_BECON = 1611
ACT_GMOD_GESTURE_BOW = 1612
ACT_GMOD_GESTURE_DISAGREE = 1613
ACT_GMOD_TAUNT_SALUTE = 1614
ACT_GMOD_GESTURE_WAVE = 1615
ACT_GMOD_TAUNT_PERSISTENCE = 1616
ACT_GMOD_TAUNT_MUSCLE = 1617
ACT_GMOD_TAUNT_LAUGH = 1618
ACT_GMOD_GESTURE_POINT = 1619
ACT_GMOD_TAUNT_CHEER = 1620
ACT_HL2MP_RUN_FAST = 1621
ACT_HL2MP_RUN_CHARGING = 1622
ACT_HL2MP_RUN_PANICKED = 1623
ACT_HL2MP_RUN_PROTECTED = 1624
ACT_HL2MP_IDLE_MELEE_ANGRY = 1625
ACT_HL2MP_ZOMBIE_SLUMP_IDLE = 1626
ACT_HL2MP_ZOMBIE_SLUMP_RISE = 1627
ACT_HL2MP_WALK_ZOMBIE_01 = 1628
ACT_HL2MP_WALK_ZOMBIE_02 = 1629
ACT_HL2MP_WALK_ZOMBIE_03 = 1630
ACT_HL2MP_WALK_ZOMBIE_04 = 1631
ACT_HL2MP_WALK_ZOMBIE_05 = 1632
ACT_HL2MP_WALK_CROUCH_ZOMBIE_01 = 1633
ACT_HL2MP_WALK_CROUCH_ZOMBIE_02 = 1634
ACT_HL2MP_WALK_CROUCH_ZOMBIE_03 = 1635
ACT_HL2MP_WALK_CROUCH_ZOMBIE_04 = 1636
ACT_HL2MP_WALK_CROUCH_ZOMBIE_05 = 1637
ACT_HL2MP_IDLE_CROUCH_ZOMBIE_01 = 1638
ACT_HL2MP_IDLE_CROUCH_ZOMBIE_02 = 1639
ACT_GMOD_GESTURE_RANGE_ZOMBIE = 1640
ACT_GMOD_GESTURE_TAUNT_ZOMBIE = 1641
ACT_GMOD_TAUNT_DANCE = 1642
ACT_GMOD_TAUNT_ROBOT = 1643
ACT_GMOD_GESTURE_RANGE_ZOMBIE_SPECIAL = 1644
ACT_GMOD_GESTURE_RANGE_FRENZY = 1645
ACT_HL2MP_RUN_ZOMBIE_FAST = 1646
ACT_HL2MP_WALK_ZOMBIE_06 = 1647
ACT_ZOMBIE_LEAP_START = 1648
ACT_ZOMBIE_LEAPING = 1649
ACT_ZOMBIE_CLIMB_UP = 1650
ACT_ZOMBIE_CLIMB_START = 1651
ACT_ZOMBIE_CLIMB_END = 1652
ACT_HL2MP_IDLE_MAGIC = 1653
ACT_HL2MP_WALK_MAGIC = 1654
ACT_HL2MP_RUN_MAGIC = 1655
ACT_HL2MP_IDLE_CROUCH_MAGIC = 1656
ACT_HL2MP_WALK_CROUCH_MAGIC = 1657
ACT_HL2MP_GESTURE_RANGE_ATTACK_MAGIC = 1658
ACT_HL2MP_GESTURE_RELOAD_MAGIC = 1659
ACT_HL2MP_JUMP_MAGIC = 1660
ACT_HL2MP_SWIM_IDLE_MAGIC = 1661
ACT_HL2MP_SWIM_MAGIC = 1662
ACT_HL2MP_IDLE_REVOLVER = 1663
ACT_HL2MP_WALK_REVOLVER = 1664
ACT_HL2MP_RUN_REVOLVER = 1665
ACT_HL2MP_IDLE_CROUCH_REVOLVER = 1666
ACT_HL2MP_WALK_CROUCH_REVOLVER = 1667
ACT_HL2MP_GESTURE_RANGE_ATTACK_REVOLVER = 1668
ACT_HL2MP_GESTURE_RELOAD_REVOLVER = 1669
ACT_HL2MP_JUMP_REVOLVER = 1670
ACT_HL2MP_SWIM_IDLE_REVOLVER = 1671
ACT_HL2MP_SWIM_REVOLVER = 1672
ACT_HL2MP_IDLE_CAMERA = 1673
ACT_HL2MP_WALK_CAMERA = 1674
ACT_HL2MP_RUN_CAMERA = 1675
ACT_HL2MP_IDLE_CROUCH_CAMERA = 1676
ACT_HL2MP_WALK_CROUCH_CAMERA = 1677
ACT_HL2MP_GESTURE_RANGE_ATTACK_CAMERA = 1678
ACT_HL2MP_GESTURE_RELOAD_CAMERA = 1679
ACT_HL2MP_JUMP_CAMERA = 1680
ACT_HL2MP_SWIM_IDLE_CAMERA = 1681
ACT_HL2MP_SWIM_CAMERA = 1682
ACT_HL2MP_IDLE_ANGRY = 1683
ACT_HL2MP_WALK_ANGRY = 1684
ACT_HL2MP_RUN_ANGRY = 1685
ACT_HL2MP_IDLE_CROUCH_ANGRY = 1686
ACT_HL2MP_WALK_CROUCH_ANGRY = 1687
ACT_HL2MP_GESTURE_RANGE_ATTACK_ANGRY = 1688
ACT_HL2MP_GESTURE_RELOAD_ANGRY = 1689
ACT_HL2MP_JUMP_ANGRY = 1690
ACT_HL2MP_SWIM_IDLE_ANGRY = 1691
ACT_HL2MP_SWIM_ANGRY = 1692
ACT_HL2MP_IDLE_SCARED = 1693
ACT_HL2MP_WALK_SCARED = 1694
ACT_HL2MP_RUN_SCARED = 1695
ACT_HL2MP_IDLE_CROUCH_SCARED = 1696
ACT_HL2MP_WALK_CROUCH_SCARED = 1697
ACT_HL2MP_GESTURE_RANGE_ATTACK_SCARED = 1698
ACT_HL2MP_GESTURE_RELOAD_SCARED = 1699
ACT_HL2MP_JUMP_SCARED = 1700
ACT_HL2MP_SWIM_IDLE_SCARED = 1701
ACT_HL2MP_SWIM_SCARED = 1702
ACT_HL2MP_IDLE_ZOMBIE = 1703
ACT_HL2MP_WALK_ZOMBIE = 1704
ACT_HL2MP_RUN_ZOMBIE = 1705
ACT_HL2MP_IDLE_CROUCH_ZOMBIE = 1706
ACT_HL2MP_WALK_CROUCH_ZOMBIE = 1707
ACT_HL2MP_GESTURE_RANGE_ATTACK_ZOMBIE = 1708
ACT_HL2MP_GESTURE_RELOAD_ZOMBIE = 1709
ACT_HL2MP_JUMP_ZOMBIE = 1710
ACT_HL2MP_SWIM_IDLE_ZOMBIE = 1711
ACT_HL2MP_SWIM_ZOMBIE = 1712
ACT_HL2MP_IDLE_SUITCASE = 1713
ACT_HL2MP_WALK_SUITCASE = 1714
ACT_HL2MP_RUN_SUITCASE = 1715
ACT_HL2MP_IDLE_CROUCH_SUITCASE = 1716
ACT_HL2MP_WALK_CROUCH_SUITCASE = 1717
ACT_HL2MP_GESTURE_RANGE_ATTACK_SUITCASE = 1718
ACT_HL2MP_GESTURE_RELOAD_SUITCASE = 1719
ACT_HL2MP_JUMP_SUITCASE = 1720
ACT_HL2MP_SWIM_IDLE_SUITCASE = 1721
ACT_HL2MP_SWIM_SUITCASE = 1722
ACT_HL2MP_IDLE = 1777
ACT_HL2MP_WALK = 1778
ACT_HL2MP_RUN = 1779
ACT_HL2MP_IDLE_CROUCH = 1780
ACT_HL2MP_WALK_CROUCH = 1781
ACT_HL2MP_GESTURE_RANGE_ATTACK = 1782
ACT_HL2MP_GESTURE_RELOAD = 1783
ACT_HL2MP_JUMP = 1784
ACT_HL2MP_SWIM = 1786
ACT_HL2MP_IDLE_PISTOL = 1787
ACT_HL2MP_WALK_PISTOL = 1788
ACT_HL2MP_RUN_PISTOL = 1789
ACT_HL2MP_IDLE_CROUCH_PISTOL = 1790
ACT_HL2MP_WALK_CROUCH_PISTOL = 1791
ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL = 1792
ACT_HL2MP_GESTURE_RELOAD_PISTOL = 1793
ACT_HL2MP_JUMP_PISTOL = 1794
ACT_HL2MP_SWIM_IDLE_PISTOL = 1795
ACT_HL2MP_SWIM_PISTOL = 1796
ACT_HL2MP_IDLE_SMG1 = 1797
ACT_HL2MP_WALK_SMG1 = 1798
ACT_HL2MP_RUN_SMG1 = 1799
ACT_HL2MP_IDLE_CROUCH_SMG1 = 1800
ACT_HL2MP_WALK_CROUCH_SMG1 = 1801
ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1 = 1802
ACT_HL2MP_GESTURE_RELOAD_SMG1 = 1803
ACT_HL2MP_JUMP_SMG1 = 1804
ACT_HL2MP_SWIM_IDLE_SMG1 = 1805
ACT_HL2MP_SWIM_SMG1 = 1806
ACT_HL2MP_IDLE_AR2 = 1807
ACT_HL2MP_WALK_AR2 = 1808
ACT_HL2MP_RUN_AR2 = 1809
ACT_HL2MP_IDLE_CROUCH_AR2 = 1810
ACT_HL2MP_WALK_CROUCH_AR2 = 1811
ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2 = 1812
ACT_HL2MP_GESTURE_RELOAD_AR2 = 1813
ACT_HL2MP_JUMP_AR2 = 1814
ACT_HL2MP_SWIM_IDLE_AR2 = 1815
ACT_HL2MP_SWIM_AR2 = 1816
ACT_HL2MP_IDLE_SHOTGUN = 1817
ACT_HL2MP_WALK_SHOTGUN = 1818
ACT_HL2MP_RUN_SHOTGUN = 1819
ACT_HL2MP_IDLE_CROUCH_SHOTGUN = 1820
ACT_HL2MP_WALK_CROUCH_SHOTGUN = 1821
ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN = 1822
ACT_HL2MP_GESTURE_RELOAD_SHOTGUN = 1823
ACT_HL2MP_JUMP_SHOTGUN = 1824
ACT_HL2MP_SWIM_IDLE_SHOTGUN = 1825
ACT_HL2MP_SWIM_SHOTGUN = 1826
ACT_HL2MP_IDLE_RPG = 1827
ACT_HL2MP_WALK_RPG = 1828
ACT_HL2MP_RUN_RPG = 1829
ACT_HL2MP_IDLE_CROUCH_RPG = 1830
ACT_HL2MP_WALK_CROUCH_RPG = 1831
ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG = 1832
ACT_HL2MP_GESTURE_RELOAD_RPG = 1833
ACT_HL2MP_JUMP_RPG = 1834
ACT_HL2MP_SWIM_IDLE_RPG = 1835
ACT_HL2MP_SWIM_RPG = 1836
ACT_HL2MP_IDLE_GRENADE = 1837
ACT_HL2MP_WALK_GRENADE = 1838
ACT_HL2MP_RUN_GRENADE = 1839
ACT_HL2MP_IDLE_CROUCH_GRENADE = 1840
ACT_HL2MP_WALK_CROUCH_GRENADE = 1841
ACT_HL2MP_GESTURE_RANGE_ATTACK_GRENADE = 1842
ACT_HL2MP_GESTURE_RELOAD_GRENADE = 1843
ACT_HL2MP_JUMP_GRENADE = 1844
ACT_HL2MP_SWIM_IDLE_GRENADE = 1845
ACT_HL2MP_SWIM_GRENADE = 1846
ACT_HL2MP_IDLE_DUEL = 1847
ACT_HL2MP_WALK_DUEL = 1848
ACT_HL2MP_RUN_DUEL = 1849
ACT_HL2MP_IDLE_CROUCH_DUEL = 1850
ACT_HL2MP_WALK_CROUCH_DUEL = 1851
ACT_HL2MP_GESTURE_RANGE_ATTACK_DUEL = 1852
ACT_HL2MP_GESTURE_RELOAD_DUEL = 1853
ACT_HL2MP_JUMP_DUEL = 1854
ACT_HL2MP_SWIM_IDLE_DUEL = 1855
ACT_HL2MP_SWIM_DUEL = 1856
ACT_HL2MP_IDLE_PHYSGUN = 1857
ACT_HL2MP_WALK_PHYSGUN = 1858
ACT_HL2MP_RUN_PHYSGUN = 1859
ACT_HL2MP_IDLE_CROUCH_PHYSGUN = 1860
ACT_HL2MP_WALK_CROUCH_PHYSGUN = 1861
ACT_HL2MP_GESTURE_RANGE_ATTACK_PHYSGUN = 1862
ACT_HL2MP_GESTURE_RELOAD_PHYSGUN = 1863
ACT_HL2MP_JUMP_PHYSGUN = 1864
ACT_HL2MP_SWIM_IDLE_PHYSGUN = 1865
ACT_HL2MP_SWIM_PHYSGUN = 1866
ACT_HL2MP_IDLE_CROSSBOW = 1867
ACT_HL2MP_WALK_CROSSBOW = 1868
ACT_HL2MP_RUN_CROSSBOW = 1869
ACT_HL2MP_IDLE_CROUCH_CROSSBOW = 1870
ACT_HL2MP_WALK_CROUCH_CROSSBOW = 1871
ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW = 1872
ACT_HL2MP_GESTURE_RELOAD_CROSSBOW = 1873
ACT_HL2MP_JUMP_CROSSBOW = 1874
ACT_HL2MP_SWIM_IDLE_CROSSBOW = 1875
ACT_HL2MP_SWIM_CROSSBOW = 1876
ACT_HL2MP_IDLE_MELEE = 1877
ACT_HL2MP_WALK_MELEE = 1878
ACT_HL2MP_RUN_MELEE = 1879
ACT_HL2MP_IDLE_CROUCH_MELEE = 1880
ACT_HL2MP_WALK_CROUCH_MELEE = 1881
ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE = 1882
ACT_HL2MP_GESTURE_RELOAD_MELEE = 1883
ACT_HL2MP_JUMP_MELEE = 1884
ACT_HL2MP_SWIM_IDLE_MELEE = 1885
ACT_HL2MP_SWIM_MELEE = 1886
ACT_HL2MP_IDLE_SLAM = 1887
ACT_HL2MP_WALK_SLAM = 1888
ACT_HL2MP_RUN_SLAM = 1889
ACT_HL2MP_IDLE_CROUCH_SLAM = 1890
ACT_HL2MP_WALK_CROUCH_SLAM = 1891
ACT_HL2MP_GESTURE_RANGE_ATTACK_SLAM = 1892
ACT_HL2MP_GESTURE_RELOAD_SLAM = 1893
ACT_HL2MP_JUMP_SLAM = 1894
ACT_HL2MP_SWIM_IDLE_SLAM = 1895
ACT_HL2MP_SWIM_SLAM = 1896
ACT_VM_CRAWL = 1897
ACT_VM_CRAWL_EMPTY = 1898
ACT_VM_HOLSTER_EMPTY = 1899
ACT_VM_DOWN = 1900
ACT_VM_DOWN_EMPTY = 1901
ACT_VM_READY = 1902
ACT_VM_ISHOOT = 1903
ACT_VM_IIN = 1904
ACT_VM_IIN_EMPTY = 1905
ACT_VM_IIDLE = 1906
ACT_VM_IIDLE_EMPTY = 1907
ACT_VM_IOUT = 1908
ACT_VM_IOUT_EMPTY = 1909
ACT_VM_PULLBACK_HIGH_BAKE = 1910
ACT_VM_HITKILL = 1911
ACT_VM_DEPLOYED_IN = 1912
ACT_VM_DEPLOYED_IDLE = 1913
ACT_VM_DEPLOYED_FIRE = 1914
ACT_VM_DEPLOYED_DRYFIRE = 1915
ACT_VM_DEPLOYED_RELOAD = 1916
ACT_VM_DEPLOYED_RELOAD_EMPTY = 1917
ACT_VM_DEPLOYED_OUT = 1918
ACT_VM_DEPLOYED_IRON_IN = 1919
ACT_VM_DEPLOYED_IRON_IDLE = 1920
ACT_VM_DEPLOYED_IRON_FIRE = 1921
ACT_VM_DEPLOYED_IRON_DRYFIRE = 1922
ACT_VM_DEPLOYED_IRON_OUT = 1923
ACT_VM_DEPLOYED_LIFTED_IN = 1924
ACT_VM_DEPLOYED_LIFTED_IDLE = 1925
ACT_VM_DEPLOYED_LIFTED_OUT = 1926
ACT_VM_RELOADEMPTY = 1927
ACT_VM_IRECOIL1 = 1928
ACT_VM_IRECOIL2 = 1929
ACT_VM_FIREMODE = 1930
ACT_VM_ISHOOT_LAST = 1931
ACT_VM_IFIREMODE = 1932
ACT_VM_DFIREMODE = 1933
ACT_VM_DIFIREMODE = 1934
ACT_VM_SHOOTLAST = 1935
ACT_VM_ISHOOTDRY = 1936
ACT_VM_DRAW_M203 = 1937
ACT_VM_DRAWFULL_M203 = 1938
ACT_VM_READY_M203 = 1939
ACT_VM_IDLE_M203 = 1940
ACT_VM_RELOAD_M203 = 1941
ACT_VM_HOLSTER_M203 = 1942
ACT_VM_HOLSTERFULL_M203 = 1943
ACT_VM_IIN_M203 = 1944
ACT_VM_IIDLE_M203 = 1945
ACT_VM_IOUT_M203 = 1946
ACT_VM_CRAWL_M203 = 1947
ACT_VM_DOWN_M203 = 1948
ACT_VM_ISHOOT_M203 = 1949
ACT_VM_RELOAD_INSERT = 1950
ACT_VM_RELOAD_INSERT_PULL = 1951
ACT_VM_RELOAD_END = 1952
ACT_VM_RELOAD_END_EMPTY = 1953
ACT_VM_RELOAD_INSERT_EMPTY = 1954
ACT_CROSSBOW_HOLSTER_UNLOADED = 1955
ACT_VM_FIRE_TO_EMPTY = 1956
ACT_VM_UNLOAD = 1957
ACT_VM_RELOAD2 = 1958
ACT_GMOD_NOCLIP_LAYER = 1959
ACT_HL2MP_IDLE_FIST = 1960
ACT_HL2MP_WALK_FIST = 1961
ACT_HL2MP_RUN_FIST = 1962
ACT_HL2MP_IDLE_CROUCH_FIST = 1963
ACT_HL2MP_WALK_CROUCH_FIST = 1964
ACT_HL2MP_GESTURE_RANGE_ATTACK_FIST = 1965
ACT_HL2MP_GESTURE_RELOAD_FIST = 1966
ACT_HL2MP_JUMP_FIST = 1967
ACT_HL2MP_SWIM_IDLE_FIST = 1968
ACT_HL2MP_SWIM_FIST = 1969
ACT_HL2MP_SIT = 1970
ACT_HL2MP_FIST_BLOCK = 1971
ACT_DRIVE_AIRBOAT = 1972
ACT_DRIVE_JEEP = 1973
ACT_GMOD_SIT_ROLLERCOASTER = 1974
ACT_HL2MP_IDLE_KNIFE = 1975
ACT_HL2MP_WALK_KNIFE = 1976
ACT_HL2MP_RUN_KNIFE = 1977
ACT_HL2MP_IDLE_CROUCH_KNIFE = 1978
ACT_HL2MP_WALK_CROUCH_KNIFE = 1979
ACT_HL2MP_GESTURE_RANGE_ATTACK_KNIFE = 1980
ACT_HL2MP_GESTURE_RELOAD_KNIFE = 1981
ACT_HL2MP_JUMP_KNIFE = 1982
ACT_HL2MP_SWIM_IDLE_KNIFE = 1983
ACT_HL2MP_SWIM_KNIFE = 1984
ACT_HL2MP_IDLE_PASSIVE = 1985
ACT_HL2MP_WALK_PASSIVE = 1986
ACT_HL2MP_RUN_PASSIVE = 1987
ACT_HL2MP_IDLE_CROUCH_PASSIVE = 1988
ACT_HL2MP_WALK_CROUCH_PASSIVE = 1989
ACT_HL2MP_GESTURE_RANGE_ATTACK_PASSIVE = 1990
ACT_HL2MP_GESTURE_RELOAD_PASSIVE = 1991
ACT_HL2MP_JUMP_PASSIVE = 1992
ACT_HL2MP_SWIM_PASSIVE = 1993
ACT_HL2MP_SWIM_IDLE_PASSIVE = 1994
ACT_HL2MP_IDLE_MELEE2 = 1995
ACT_HL2MP_WALK_MELEE2 = 1996
ACT_HL2MP_RUN_MELEE2 = 1997
ACT_HL2MP_IDLE_CROUCH_MELEE2 = 1998
ACT_HL2MP_WALK_CROUCH_MELEE2 = 1999
ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE2 = 2000
ACT_HL2MP_GESTURE_RELOAD_MELEE2 = 2001
ACT_HL2MP_JUMP_MELEE2 = 2002
ACT_HL2MP_SWIM_IDLE_MELEE2 = 2003
ACT_HL2MP_SWIM_MELEE2 = 2004
ACT_HL2MP_SIT_PISTOL = 2005
ACT_HL2MP_SIT_SHOTGUN = 2006
ACT_HL2MP_SIT_SMG1 = 2007
ACT_HL2MP_SIT_AR2 = 2008
ACT_HL2MP_SIT_PHYSGUN = 2009
ACT_HL2MP_SIT_GRENADE = 2010
ACT_HL2MP_SIT_RPG = 2011
ACT_HL2MP_SIT_CROSSBOW = 2012
ACT_HL2MP_SIT_MELEE = 2013
ACT_HL2MP_SIT_SLAM = 2014
ACT_HL2MP_SIT_FIST = 2015
ACT_GMOD_IN_CHAT = 2019
ACT_GMOD_GESTURE_ITEM_GIVE = 2020
ACT_GMOD_GESTURE_ITEM_DROP = 2021
ACT_GMOD_GESTURE_ITEM_PLACE = 2022
ACT_GMOD_GESTURE_ITEM_THROW = 2023
ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND = 2024
ACT_GMOD_GESTURE_MELEE_SHOVE_1HAND = 2025
ACT_HL2MP_SWIM_IDLE = 2026
ACT_HL2MP_IDLE_COWER = 2027
ACT_GMOD_DEATH = 2028
ACT_DRIVE_POD = 2029
ACT_FLINCH = 2030
ACT_FLINCH_BACK = 2031
ACT_FLINCH_SHOULDER_LEFT = 2032
ACT_FLINCH_SHOULDER_RIGHT = 2033
ACT_HL2MP_SIT_CAMERA = 2034
ACT_HL2MP_SIT_PASSIVE = 2035
ACT_HL2MP_ZOMBIE_SLUMP_ALT_IDLE = 2036
ACT_HL2MP_ZOMBIE_SLUMP_ALT_RISE_FAST = 2037
ACT_HL2MP_ZOMBIE_SLUMP_ALT_RISE_SLOW = 2038
ACT_GMOD_SHOWOFF_STAND_01 = 2039
ACT_GMOD_SHOWOFF_STAND_02 = 2040
ACT_GMOD_SHOWOFF_STAND_03 = 2041
ACT_GMOD_SHOWOFF_STAND_04 = 2042
ACT_GMOD_SHOWOFF_DUCK_01 = 2043
ACT_GMOD_SHOWOFF_DUCK_02 = 2044
LAST_SHARED_ACTIVITY = 2027
AIMR_ILLEGAL = -4
AIMR_BLOCKED_NPC = -3
AIMR_BLOCKED_WORLD = -2
AIMR_BLOCKED_ENTITY = -1
AIMR_OK = 0
AIMR_CHANGE_TYPE = 1
AMMO_FORCE_DROP_IF_CARRIED = 1
AMMO_INTERPRET_PLRDAMAGE_AS_DAMAGE_TO_PLAYER = 2
ANALOG_MOUSE_X = 0
ANALOG_MOUSE_Y = 1
ANALOG_MOUSE_WHEEL = 3
ANALOG_JOY_X = 4
ANALOG_JOY_Y = 5
ANALOG_JOY_Z = 6
ANALOG_JOY_R = 7
ANALOG_JOY_U = 8
ANALOG_JOY_V = 9
BLEND_ZERO = 0
BLEND_ONE = 1
BLEND_DST_COLOR = 2
BLEND_ONE_MINUS_DST_COLOR = 3
BLEND_SRC_ALPHA = 4
BLEND_ONE_MINUS_SRC_ALPHA = 5
BLEND_DST_ALPHA = 6
BLEND_ONE_MINUS_DST_ALPHA = 7
BLEND_SRC_ALPHA_SATURATE = 8
BLEND_SRC_COLOR = 9
BLEND_ONE_MINUS_SRC_COLOR = 10
BLENDFUNC_ADD = 0
BLENDFUNC_SUBTRACT = 1
BLENDFUNC_REVERSE_SUBTRACT = 2
BLENDFUNC_MIN = 3
BLENDFUNC_MAX = 4
DONT_BLEED = -1
BLOOD_COLOR_RED = 0
BLOOD_COLOR_YELLOW = 1
BLOOD_COLOR_GREEN = 2
BLOOD_COLOR_MECH = 3
BLOOD_COLOR_ANTLION = 4
BLOOD_COLOR_ZOMBIE = 5
BLOOD_COLOR_ANTLION_WORKER = 6
BONE_PHYSICALLY_SIMULATED = 1
BONE_PHYSICS_PROCEDURAL = 2
BONE_ALWAYS_PROCEDURAL = 4
BONE_SCREEN_ALIGN_SPHERE = 8
BONE_SCREEN_ALIGN_CYLINDER = 16
BONE_CALCULATE_MASK = 31
BONE_USED_BY_HITBOX = 256
BONE_USED_BY_ATTACHMENT = 512
BONE_USED_BY_VERTEX_LOD0 = 1024
BONE_USED_BY_VERTEX_LOD1 = 2048
BONE_USED_BY_VERTEX_LOD2 = 4096
BONE_USED_BY_VERTEX_LOD3 = 8192
BONE_USED_BY_VERTEX_LOD4 = 16384
BONE_USED_BY_VERTEX_LOD5 = 32768
BONE_USED_BY_VERTEX_LOD6 = 65536
BONE_USED_BY_VERTEX_LOD7 = 131072
BONE_USED_BY_VERTEX_MASK = 261120
BONE_USED_BY_BONE_MERGE = 262144
BONE_USED_BY_ANYTHING = 524032
BONE_USED_MASK = 524032
BOX_FRONT = 0
BOX_BACK = 1
BOX_RIGHT = 2
BOX_LEFT = 3
BOX_TOP = 4
BOX_BOTTOM = 5
BUTTON_CODE_INVALID = -1
BUTTON_CODE_NONE = 0
BUTTON_CODE_LAST = 171
BUTTON_CODE_COUNT = 172
CAP_SIMPLE_RADIUS_DAMAGE = -2147483648
CAP_MOVE_GROUND = 1
CAP_MOVE_JUMP = 2
CAP_MOVE_FLY = 4
CAP_MOVE_CLIMB = 8
CAP_MOVE_SWIM = 16
CAP_MOVE_CRAWL = 32
CAP_MOVE_SHOOT = 64
CAP_SKIP_NAV_GROUND_CHECK = 128
CAP_USE = 256
CAP_AUTO_DOORS = 1024
CAP_OPEN_DOORS = 2048
CAP_TURN_HEAD = 4096
CAP_WEAPON_RANGE_ATTACK1 = 8192
CAP_WEAPON_RANGE_ATTACK2 = 16384
CAP_WEAPON_MELEE_ATTACK1 = 32768
CAP_WEAPON_MELEE_ATTACK2 = 65536
CAP_INNATE_RANGE_ATTACK1 = 131072
CAP_INNATE_RANGE_ATTACK2 = 262144
CAP_INNATE_MELEE_ATTACK1 = 524288
CAP_INNATE_MELEE_ATTACK2 = 1048576
CAP_USE_WEAPONS = 2097152
CAP_USE_SHOT_REGULATOR = 16777216
CAP_ANIMATEDFACE = 8388608
CAP_FRIENDLY_DMG_IMMUNE = 33554432
CAP_SQUAD = 67108864
CAP_DUCK = 134217728
CAP_NO_HIT_PLAYER = 268435456
CAP_AIM_GUN = 536870912
CAP_NO_HIT_SQUADMATES = 1073741824
CHAN_REPLACE = -1
CHAN_AUTO = 0
CHAN_WEAPON = 1
CHAN_VOICE = 2
CHAN_ITEM = 3
CHAN_BODY = 4
CHAN_STREAM = 5
CHAN_STATIC = 6
CHAN_VOICE2 = 7
CHAN_VOICE_BASE = 8
CHAN_USER_BASE = 136
CLASS_NONE = 0
CLASS_PLAYER = 1
CLASS_PLAYER_ALLY = 2
CLASS_PLAYER_ALLY_VITAL = 3
CLASS_ANTLION = 4
CLASS_BARNACLE = 5
CLASS_BULLSEYE = 6
CLASS_CITIZEN_PASSIVE = 7
CLASS_CITIZEN_REBEL = 8
CLASS_COMBINE = 9
CLASS_COMBINE_GUNSHIP = 10
CLASS_CONSCRIPT = 11
CLASS_HEADCRAB = 12
CLASS_MANHACK = 13
CLASS_METROPOLICE = 14
CLASS_MILITARY = 15
CLASS_SCANNER = 16
CLASS_STALKER = 17
CLASS_VORTIGAUNT = 18
CLASS_ZOMBIE = 19
CLASS_PROTOSNIPER = 20
CLASS_MISSILE = 21
CLASS_FLARE = 22
CLASS_EARTH_FAUNA = 23
CLASS_HACKED_ROLLERMINE = 24
CLASS_COMBINE_HUNTER = 25
CLASS_MACHINE = 26
CLASS_HUMAN_PASSIVE = 27
CLASS_HUMAN_MILITARY = 28
CLASS_ALIEN_MILITARY = 29
CLASS_ALIEN_MONSTER = 30
CLASS_ALIEN_PREY = 31
CLASS_ALIEN_PREDATOR = 32
CLASS_INSECT = 33
CLASS_PLAYER_BIOWEAPON = 34
CLASS_ALIEN_BIOWEAPON = 35
COLLISION_GROUP_NONE = 0
COLLISION_GROUP_DEBRIS = 1
COLLISION_GROUP_DEBRIS_TRIGGER = 2
COLLISION_GROUP_INTERACTIVE_DEBRIS = 3
COLLISION_GROUP_INTERACTIVE = 4
COLLISION_GROUP_PLAYER = 5
COLLISION_GROUP_BREAKABLE_GLASS = 6
COLLISION_GROUP_VEHICLE = 7
COLLISION_GROUP_PLAYER_MOVEMENT = 8
COLLISION_GROUP_NPC = 9
COLLISION_GROUP_IN_VEHICLE = 10
COLLISION_GROUP_WEAPON = 11
COLLISION_GROUP_VEHICLE_CLIP = 12
COLLISION_GROUP_PROJECTILE = 13
COLLISION_GROUP_DOOR_BLOCKER = 14
COLLISION_GROUP_PASSABLE_DOOR = 15
COLLISION_GROUP_DISSOLVING = 16
COLLISION_GROUP_PUSHAWAY = 17
COLLISION_GROUP_NPC_ACTOR = 18
COLLISION_GROUP_NPC_SCRIPTED = 19
COLLISION_GROUP_WORLD = 20
LAST_SHARED_COLLISION_GROUP = 21
COND_BEHIND_ENEMY = 29
COND_BETTER_WEAPON_AVAILABLE = 46
COND_CAN_MELEE_ATTACK1 = 23
COND_CAN_MELEE_ATTACK2 = 24
COND_CAN_RANGE_ATTACK1 = 21
COND_CAN_RANGE_ATTACK2 = 22
COND_ENEMY_DEAD = 30
COND_ENEMY_FACING_ME = 28
COND_ENEMY_OCCLUDED = 13
COND_ENEMY_TOO_FAR = 27
COND_ENEMY_UNREACHABLE = 31
COND_ENEMY_WENT_NULL = 12
COND_FLOATING_OFF_GROUND = 61
COND_GIVE_WAY = 48
COND_HAVE_ENEMY_LOS = 15
COND_HAVE_TARGET_LOS = 16
COND_HEALTH_ITEM_AVAILABLE = 47
COND_HEAR_BUGBAIT = 52
COND_HEAR_BULLET_IMPACT = 56
COND_HEAR_COMBAT = 53
COND_HEAR_DANGER = 50
COND_HEAR_MOVE_AWAY = 58
COND_HEAR_PHYSICS_DANGER = 57
COND_HEAR_PLAYER = 55
COND_HEAR_SPOOKY = 59
COND_HEAR_THUMPER = 51
COND_HEAR_WORLD = 54
COND_HEAVY_DAMAGE = 18
COND_IDLE_INTERRUPT = 2
COND_IN_PVS = 1
COND_LIGHT_DAMAGE = 17
COND_LOST_ENEMY = 11
COND_LOST_PLAYER = 33
COND_LOW_PRIMARY_AMMO = 3
COND_MOBBED_BY_ENEMIES = 62
COND_NEW_ENEMY = 26
COND_NO_CUSTOM_INTERRUPTS = 70
COND_NO_HEAR_DANGER = 60
COND_NO_PRIMARY_AMMO = 4
COND_NO_SECONDARY_AMMO = 5
COND_NO_WEAPON = 6
COND_NONE = 0
COND_NOT_FACING_ATTACK = 40
COND_NPC_FREEZE = 67
COND_NPC_UNFREEZE = 68
COND_PHYSICS_DAMAGE = 19
COND_PLAYER_ADDED_TO_SQUAD = 64
COND_PLAYER_PUSHING = 66
COND_PLAYER_REMOVED_FROM_SQUAD = 65
COND_PROVOKED = 25
COND_RECEIVED_ORDERS = 63
COND_REPEATED_DAMAGE = 20
COND_SCHEDULE_DONE = 36
COND_SEE_DISLIKE = 9
COND_SEE_ENEMY = 10
COND_SEE_FEAR = 8
COND_SEE_HATE = 7
COND_SEE_NEMESIS = 34
COND_SEE_PLAYER = 32
COND_SMELL = 37
COND_TALKER_RESPOND_TO_QUESTION = 69
COND_TARGET_OCCLUDED = 14
COND_TASK_FAILED = 35
COND_TOO_CLOSE_TO_ATTACK = 38
COND_TOO_FAR_TO_ATTACK = 39
COND_WAY_CLEAR = 49
COND_WEAPON_BLOCKED_BY_FRIEND = 42
COND_WEAPON_HAS_LOS = 41
COND_WEAPON_PLAYER_IN_SPREAD = 43
COND_WEAPON_PLAYER_NEAR_TARGET = 44
COND_WEAPON_SIGHT_OCCLUDED = 45
CONTENTS_EMPTY = 0
CONTENTS_SOLID = 1
CONTENTS_WINDOW = 2
CONTENTS_AUX = 4
CONTENTS_GRATE = 8
CONTENTS_SLIME = 16
CONTENTS_WATER = 32
CONTENTS_BLOCKLOS = 64
CONTENTS_OPAQUE = 128
CONTENTS_TESTFOGVOLUME = 256
CONTENTS_TEAM4 = 512
CONTENTS_TEAM3 = 1024
CONTENTS_TEAM1 = 2048
CONTENTS_TEAM2 = 4096
CONTENTS_IGNORE_NODRAW_OPAQUE = 8192
CONTENTS_MOVEABLE = 16384
CONTENTS_AREAPORTAL = 32768
CONTENTS_PLAYERCLIP = 65536
CONTENTS_MONSTERCLIP = 131072
CONTENTS_CURRENT_0 = 262144
CONTENTS_CURRENT_180 = 1048576
CONTENTS_CURRENT_270 = 2097152
CONTENTS_CURRENT_90 = 524288
CONTENTS_CURRENT_DOWN = 8388608
CONTENTS_CURRENT_UP = 4194304
CONTENTS_DEBRIS = 67108864
CONTENTS_DETAIL = 134217728
CONTENTS_HITBOX = 1073741824
CONTENTS_LADDER = 536870912
CONTENTS_MONSTER = 33554432
CONTENTS_ORIGIN = 16777216
CONTENTS_TRANSLUCENT = 268435456
LAST_VISIBLE_CONTENTS = 128
ALL_VISIBLE_CONTENTS = 255
CREATERENDERTARGETFLAGS_HDR = 1
CREATERENDERTARGETFLAGS_AUTOMIPMAP = 2
CREATERENDERTARGETFLAGS_UNFILTERABLE_OK = 4
CT_DEFAULT = 0
CT_DOWNTRODDEN = 1
CT_REFUGEE = 2
CT_REBEL = 3
CT_UNIQUE = 4
D_ER = 0
D_HT = 1
D_FR = 2
D_LI = 3
D_NU = 4
DISPSURF_SURFACE = 1
DISPSURF_WALKABLE = 2
DISPSURF_BUILDABLE = 4
DISPSURF_SURFPROP1 = 8
DISPSURF_SURFPROP2 = 16
DMG_GENERIC = 0
DMG_CRUSH = 1
DMG_BULLET = 2
DMG_SLASH = 4
DMG_BURN = 8
DMG_VEHICLE = 16
DMG_FALL = 32
DMG_BLAST = 64
DMG_CLUB = 128
DMG_SHOCK = 256
DMG_SONIC = 512
DMG_ENERGYBEAM = 1024
DMG_PREVENT_PHYSICS_FORCE = 2048
DMG_NEVERGIB = 4096
DMG_ALWAYSGIB = 8192
DMG_DROWN = 16384
DMG_PARALYZE = 32768
DMG_NERVEGAS = 65536
DMG_POISON = 131072
DMG_RADIATION = 262144
DMG_DROWNRECOVER = 524288
DMG_ACID = 1048576
DMG_SLOWBURN = 2097152
DMG_REMOVENORAGDOLL = 4194304
DMG_PHYSGUN = 8388608
DMG_PLASMA = 16777216
DMG_AIRBOAT = 33554432
DMG_DISSOLVE = 67108864
DMG_BLAST_SURFACE = 134217728
DMG_DIRECT = 268435456
DMG_BUCKSHOT = 536870912
DMG_SNIPER = 1073741824
DMG_MISSILEDEFENSE = 2147483648
NODOCK = 0
FILL = 1
LEFT = 2
RIGHT = 3
TOP = 4
BOTTOM = 5
DOF_OFFSET = 256
DOF_SPACING = 512
EF_BONEMERGE = 1
EF_BONEMERGE_FASTCULL = 128
EF_BRIGHTLIGHT = 2
EF_DIMLIGHT = 4
EF_NOINTERP = 8
EF_NOSHADOW = 16
EF_NODRAW = 32
EF_NORECEIVESHADOW = 64
EF_ITEM_BLINK = 256
EF_PARENT_ANIMATES = 512
EF_FOLLOWBONE = 1024
EFL_KILLME = 1
EFL_DORMANT = 2
EFL_NOCLIP_ACTIVE = 4
EFL_SETTING_UP_BONES = 8
EFL_KEEP_ON_RECREATE_ENTITIES = 16
EFL_HAS_PLAYER_CHILD = 16
EFL_DIRTY_SHADOWUPDATE = 32
EFL_NOTIFY = 64
EFL_FORCE_CHECK_TRANSMIT = 128
EFL_BOT_FROZEN = 256
EFL_SERVER_ONLY = 512
EFL_NO_AUTO_EDICT_ATTACH = 1024
EFL_DIRTY_ABSTRANSFORM = 2048
EFL_DIRTY_ABSVELOCITY = 4096
EFL_DIRTY_ABSANGVELOCITY = 8192
EFL_DIRTY_SURROUNDING_COLLISION_BOUNDS = 16384
EFL_DIRTY_SPATIAL_PARTITION = 32768
EFL_IN_SKYBOX = 131072
EFL_USE_PARTITION_WHEN_NOT_SOLID = 262144
EFL_TOUCHING_FLUID = 524288
EFL_IS_BEING_LIFTED_BY_BARNACLE = 1048576
EFL_NO_ROTORWASH_PUSH = 2097152
EFL_NO_THINK_FUNCTION = 4194304
EFL_NO_GAME_PHYSICS_SIMULATION = 8388608
EFL_CHECK_UNTOUCH = 16777216
EFL_DONTBLOCKLOS = 33554432
EFL_DONTWALKON = 67108864
EFL_NO_DISSOLVE = 134217728
EFL_NO_MEGAPHYSCANNON_RAGDOLL = 268435456
EFL_NO_WATER_VELOCITY_CHANGE = 536870912
EFL_NO_PHYSCANNON_INTERACTION = 1073741824
EFL_NO_DAMAGE_FORCES = -2147483648
FCVAR_ARCHIVE = 128
FCVAR_ARCHIVE_XBOX = 16777216
FCVAR_CHEAT = 16384
FCVAR_CLIENTCMD_CAN_EXECUTE = 1073741824
FCVAR_CLIENTDLL = 8
FCVAR_DEMO = 65536
FCVAR_DONTRECORD = 131072
FCVAR_GAMEDLL = 4
FCVAR_LUA_CLIENT = 262144
FCVAR_LUA_SERVER = 524288
FCVAR_NEVER_AS_STRING = 4096
FCVAR_NONE = 0
FCVAR_NOTIFY = 256
FCVAR_NOT_CONNECTED = 4194304
FCVAR_PRINTABLEONLY = 1024
FCVAR_PROTECTED = 32
FCVAR_REPLICATED = 8192
FCVAR_SERVER_CANNOT_QUERY = 536870912
FCVAR_SERVER_CAN_EXECUTE = 268435456
FCVAR_SPONLY = 64
FCVAR_UNLOGGED = 2048
FCVAR_UNREGISTERED = 1
FCVAR_USERINFO = 512
FFT_256 = 0
FFT_512 = 1
FFT_1024 = 2
FFT_2048 = 3
FFT_4096 = 4
FFT_8192 = 5
FFT_16384 = 6
FFT_32768 = 7
FL_ONGROUND = 1
FL_DUCKING = 2
FL_ANIMDUCKING = 4
FL_WATERJUMP = 8
FL_ONTRAIN = 16
FL_INRAIN = 32
FL_FROZEN = 64
FL_ATCONTROLS = 128
FL_CLIENT = 256
FL_FAKECLIENT = 512
FL_INWATER = 1024
FL_FLY = 2048
FL_SWIM = 4096
FL_CONVEYOR = 8192
FL_NPC = 16384
FL_GODMODE = 32768
FL_NOTARGET = 65536
FL_AIMTARGET = 131072
FL_PARTIALGROUND = 262144
FL_STATICPROP = 524288
FL_GRAPHED = 1048576
FL_GRENADE = 2097152
FL_STEPMOVEMENT = 4194304
FL_DONTTOUCH = 8388608
FL_BASEVELOCITY = 16777216
FL_WORLDBRUSH = 33554432
FL_OBJECT = 67108864
FL_KILLME = 134217728
FL_ONFIRE = 268435456
FL_DISSOLVING = 536870912
FL_TRANSRAGDOLL = 1073741824
FL_UNBLOCKABLE_BY_PLAYER = -2147483648
FORCE_STRING = 1
FORCE_NUMBER = 2
FORCE_BOOL = 3
FORCE_ANGLE = 4
FORCE_COLOR = 5
FORCE_VECTOR = 6
FSASYNC_ERR_NOT_MINE = -8
FSASYNC_ERR_RETRY_LATER = -7
FSASYNC_ERR_ALIGNMENT = -6
FSASYNC_ERR_FAILURE = -5
FSASYNC_ERR_READING = -4
FSASYNC_ERR_NOMEMORY = -3
FSASYNC_ERR_UNKNOWNID = -2
FSASYNC_ERR_FILEOPEN = -1
FSASYNC_OK = 0
FSASYNC_STATUS_PENDING = 1
FSASYNC_STATUS_INPROGRESS = 2
FSASYNC_STATUS_ABORTED = 3
FSASYNC_STATUS_UNSERVICED = 4
FSOLID_CUSTOMRAYTEST = 1
FSOLID_CUSTOMBOXTEST = 2
FSOLID_NOT_SOLID = 4
FSOLID_TRIGGER = 8
FSOLID_NOT_STANDABLE = 16
FSOLID_VOLUME_CONTENTS = 32
FSOLID_FORCE_WORLD_ALIGNED = 64
FSOLID_USE_TRIGGER_BOUNDS = 128
FSOLID_ROOT_PARENT_ALIGNED = 256
FSOLID_TRIGGER_TOUCH_DEBRIS = 512
FSOLID_MAX_BITS = 10
FVPHYSICS_CONSTRAINT_STATIC = 2
FVPHYSICS_DMG_DISSOLVE = 512
FVPHYSICS_DMG_SLICE = 1
FVPHYSICS_HEAVY_OBJECT = 32
FVPHYSICS_MULTIOBJECT_ENTITY = 16
FVPHYSICS_NO_IMPACT_DMG = 1024
FVPHYSICS_NO_NPC_IMPACT_DMG = 2048
FVPHYSICS_NO_PLAYER_PICKUP = 128
FVPHYSICS_NO_SELF_COLLISIONS = 32768
FVPHYSICS_PART_OF_RAGDOLL = 8
FVPHYSICS_PENETRATING = 64
FVPHYSICS_PLAYER_HELD = 4
FVPHYSICS_WAS_THROWN = 256
GESTURE_SLOT_ATTACK_AND_RELOAD = 0
GESTURE_SLOT_GRENADE = 1
GESTURE_SLOT_JUMP = 2
GESTURE_SLOT_SWIM = 3
GESTURE_SLOT_FLINCH = 4
GESTURE_SLOT_VCD = 5
GESTURE_SLOT_CUSTOM = 6
GLOBAL_OFF = 0
GLOBAL_ON = 1
GLOBAL_DEAD = 2
GMOD_CHANNEL_STOPPED = 0
GMOD_CHANNEL_PLAYING = 1
GMOD_CHANNEL_PAUSED = 2
GMOD_CHANNEL_STALLED = 3
HITGROUP_GENERIC = 0
HITGROUP_HEAD = 1
HITGROUP_CHEST = 2
HITGROUP_STOMACH = 3
HITGROUP_LEFTARM = 4
HITGROUP_RIGHTARM = 5
HITGROUP_LEFTLEG = 6
HITGROUP_RIGHTLEG = 7
HITGROUP_GEAR = 10
HUD_PRINTNOTIFY = 1
HUD_PRINTCONSOLE = 2
HUD_PRINTTALK = 3
HUD_PRINTCENTER = 4
HULL_HUMAN = 0
HULL_SMALL_CENTERED = 1
HULL_WIDE_HUMAN = 2
HULL_TINY = 3
HULL_WIDE_SHORT = 4
HULL_MEDIUM = 5
HULL_TINY_CENTERED = 6
HULL_LARGE = 7
HULL_LARGE_CENTERED = 8
HULL_MEDIUM_TALL = 9
IMAGE_FORMAT_DEFAULT = -1
IMAGE_FORMAT_RGBA8888 = 0
IMAGE_FORMAT_ABGR8888 = 1
IMAGE_FORMAT_RGB888 = 2
IMAGE_FORMAT_BGR888 = 3
IMAGE_FORMAT_RGB565 = 4
IMAGE_FORMAT_ARGB8888 = 11
IMAGE_FORMAT_BGRA8888 = 12
IMAGE_FORMAT_RGBA16161616 = 25
IMAGE_FORMAT_RGBA16161616F = 24
IN_ATTACK = 1
IN_JUMP = 2
IN_DUCK = 4
IN_FORWARD = 8
IN_BACK = 16
IN_USE = 32
IN_CANCEL = 64
IN_LEFT = 128
IN_RIGHT = 256
IN_MOVELEFT = 512
IN_MOVERIGHT = 1024
IN_ATTACK2 = 2048
IN_RUN = 4096
IN_RELOAD = 8192
IN_ALT1 = 16384
IN_ALT2 = 32768
IN_SCORE = 65536
IN_SPEED = 131072
IN_WALK = 262144
IN_ZOOM = 524288
IN_WEAPON1 = 1048576
IN_WEAPON2 = 2097152
IN_BULLRUSH = 4194304
IN_GRENADE1 = 8388608
IN_GRENADE2 = 16777216
JOYSTICK_FIRST = 114
JOYSTICK_FIRST_BUTTON = 114
JOYSTICK_LAST_BUTTON = 145
JOYSTICK_FIRST_POV_BUTTON = 146
JOYSTICK_LAST_POV_BUTTON = 149
JOYSTICK_FIRST_AXIS_BUTTON = 150
JOYSTICK_LAST_AXIS_BUTTON = 161
JOYSTICK_LAST = 161
KEY_FIRST = 0
KEY_NONE = 0
KEY_0 = 1
KEY_1 = 2
KEY_2 = 3
KEY_3 = 4
KEY_4 = 5
KEY_5 = 6
KEY_6 = 7
KEY_7 = 8
KEY_8 = 9
KEY_9 = 10
KEY_A = 11
KEY_B = 12
KEY_C = 13
KEY_D = 14
KEY_E = 15
KEY_F = 16
KEY_G = 17
KEY_H = 18
KEY_I = 19
KEY_J = 20
KEY_K = 21
KEY_L = 22
KEY_M = 23
KEY_N = 24
KEY_O = 25
KEY_P = 26
KEY_Q = 27
KEY_R = 28
KEY_S = 29
KEY_T = 30
KEY_U = 31
KEY_V = 32
KEY_W = 33
KEY_X = 34
KEY_Y = 35
KEY_Z = 36
KEY_PAD_0 = 37
KEY_PAD_1 = 38
KEY_PAD_2 = 39
KEY_PAD_3 = 40
KEY_PAD_4 = 41
KEY_PAD_5 = 42
KEY_PAD_6 = 43
KEY_PAD_7 = 44
KEY_PAD_8 = 45
KEY_PAD_9 = 46
KEY_PAD_DIVIDE = 47
KEY_PAD_MULTIPLY = 48
KEY_PAD_MINUS = 49
KEY_PAD_PLUS = 50
KEY_PAD_ENTER = 51
KEY_PAD_DECIMAL = 52
KEY_LBRACKET = 53
KEY_RBRACKET = 54
KEY_SEMICOLON = 55
KEY_APOSTROPHE = 56
KEY_BACKQUOTE = 57
KEY_COMMA = 58
KEY_PERIOD = 59
KEY_SLASH = 60
KEY_BACKSLASH = 61
KEY_MINUS = 62
KEY_EQUAL = 63
KEY_ENTER = 64
KEY_SPACE = 65
KEY_BACKSPACE = 66
KEY_TAB = 67
KEY_CAPSLOCK = 68
KEY_NUMLOCK = 69
KEY_ESCAPE = 70
KEY_SCROLLLOCK = 71
KEY_INSERT = 72
KEY_DELETE = 73
KEY_HOME = 74
KEY_END = 75
KEY_PAGEUP = 76
KEY_PAGEDOWN = 77
KEY_BREAK = 78
KEY_LSHIFT = 79
KEY_RSHIFT = 80
KEY_LALT = 81
KEY_RALT = 82
KEY_LCONTROL = 83
KEY_RCONTROL = 84
KEY_LWIN = 85
KEY_RWIN = 86
KEY_APP = 87
KEY_UP = 88
KEY_LEFT = 89
KEY_DOWN = 90
KEY_RIGHT = 91
KEY_F1 = 92
KEY_F2 = 93
KEY_F3 = 94
KEY_F4 = 95
KEY_F5 = 96
KEY_F6 = 97
KEY_F7 = 98
KEY_F8 = 99
KEY_F9 = 100
KEY_F10 = 101
KEY_F11 = 102
KEY_F12 = 103
KEY_CAPSLOCKTOGGLE = 104
KEY_NUMLOCKTOGGLE = 105
KEY_LAST = 106
KEY_SCROLLLOCKTOGGLE = 106
KEY_COUNT = 107
KEY_XBUTTON_A = 114
KEY_XBUTTON_B = 115
KEY_XBUTTON_X = 116
KEY_XBUTTON_Y = 117
KEY_XBUTTON_LEFT_SHOULDER = 118
KEY_XBUTTON_RIGHT_SHOULDER = 119
KEY_XBUTTON_BACK = 120
KEY_XBUTTON_START = 121
KEY_XBUTTON_STICK1 = 122
KEY_XBUTTON_STICK2 = 123
KEY_XBUTTON_UP = 146
KEY_XBUTTON_RIGHT = 147
KEY_XBUTTON_DOWN = 148
KEY_XBUTTON_LEFT = 149
KEY_XSTICK1_RIGHT = 150
KEY_XSTICK1_LEFT = 151
KEY_XSTICK1_DOWN = 152
KEY_XSTICK1_UP = 153
KEY_XBUTTON_LTRIGGER = 154
KEY_XBUTTON_RTRIGGER = 155
KEY_XSTICK2_RIGHT = 156
KEY_XSTICK2_LEFT = 157
KEY_XSTICK2_DOWN = 158
KEY_XSTICK2_UP = 159
kRenderFxNone = 0
kRenderFxPulseSlow = 1
kRenderFxPulseFast = 2
kRenderFxPulseSlowWide = 3
kRenderFxPulseFastWide = 4
kRenderFxFadeSlow = 5
kRenderFxFadeFast = 6
kRenderFxSolidSlow = 7
kRenderFxSolidFast = 8
kRenderFxStrobeSlow = 9
kRenderFxStrobeFast = 10
kRenderFxStrobeFaster = 11
kRenderFxFlickerSlow = 12
kRenderFxFlickerFast = 13
kRenderFxNoDissipation = 14
kRenderFxDistort = 15
kRenderFxHologram = 16
kRenderFxExplode = 17
kRenderFxGlowShell = 18
kRenderFxClampMinScale = 19
kRenderFxEnvRain = 20
kRenderFxEnvSnow = 21
kRenderFxSpotlight = 22
kRenderFxRagdoll = 23
kRenderFxPulseFastWider = 24
MASK_ALL = 4294967295
MASK_BLOCKLOS = 16449
MASK_BLOCKLOS_AND_NPCS = 33570881
MASK_CURRENT = 16515072
MASK_DEADSOLID = 65547
MASK_NPCSOLID = 33701899
MASK_NPCSOLID_BRUSHONLY = 147467
MASK_NPCWORLDSTATIC = 131083
MASK_OPAQUE = 16513
MASK_OPAQUE_AND_NPCS = 33570945
MASK_PLAYERSOLID = 33636363
MASK_PLAYERSOLID_BRUSHONLY = 81931
MASK_SHOT = 1174421507
MASK_SHOT_HULL = 100679691
MASK_SHOT_PORTAL = 33570819
MASK_SOLID = 33570827
MASK_SOLID_BRUSHONLY = 16395
MASK_SPLITAREAPORTAL = 48
MASK_VISIBLE = 24705
MASK_VISIBLE_AND_NPCS = 33579137
MASK_WATER = 16432
MAT_ANTLION = 65
MAT_BLOODYFLESH = 66
MAT_CONCRETE = 67
MAT_DIRT = 68
MAT_EGGSHELL = 69
MAT_FLESH = 70
MAT_GRATE = 71
MAT_ALIENFLESH = 72
MAT_CLIP = 73
MAT_SNOW = 74
MAT_PLASTIC = 76
MAT_METAL = 77
MAT_SAND = 78
MAT_FOLIAGE = 79
MAT_COMPUTER = 80
MAT_SLOSH = 83
MAT_TILE = 84
MAT_GRASS = 85
MAT_VENT = 86
MAT_WOOD = 87
MAT_DEFAULT = 88
MAT_GLASS = 89
MAT_WARPSHIELD = 90
MATERIAL_LINES = 1
MATERIAL_LINE_LOOP = 5
MATERIAL_LINE_STRIP = 4
MATERIAL_POINTS = 0
MATERIAL_POLYGON = 6
MATERIAL_QUADS = 7
MATERIAL_TRIANGLES = 2
MATERIAL_TRIANGLE_STRIP = 3
MATERIAL_CULLMODE_CCW = 0
MATERIAL_CULLMODE_CW = 1
MATERIAL_FOG_NONE = 0
MATERIAL_FOG_LINEAR = 1
MATERIAL_FOG_LINEAR_BELOW_FOG_Z = 2
MATERIAL_LIGHT_DISABLE = 0
MATERIAL_LIGHT_POINT = 1
MATERIAL_LIGHT_DIRECTIONAL = 2
MATERIAL_LIGHT_SPOT = 3
MATERIAL_RT_DEPTH_SHARED = 0
MATERIAL_RT_DEPTH_SEPARATE = 1
MATERIAL_RT_DEPTH_NONE = 2
MATERIAL_RT_DEPTH_ONLY = 3
MOUSE_FIRST = 107
MOUSE_LEFT = 107
MOUSE_RIGHT = 108
MOUSE_MIDDLE = 109
MOUSE_4 = 110
MOUSE_5 = 111
MOUSE_WHEEL_UP = 112
MOUSE_WHEEL_DOWN = 113
MOUSE_LAST = 113
MOUSE_COUNT = 7
MOVECOLLIDE_DEFAULT = 0
MOVECOLLIDE_FLY_BOUNCE = 1
MOVECOLLIDE_FLY_CUSTOM = 2
MOVECOLLIDE_FLY_SLIDE = 3
MOVECOLLIDE_COUNT = 4
MOVETYPE_NONE = 0
MOVETYPE_ISOMETRIC = 1
MOVETYPE_WALK = 2
MOVETYPE_STEP = 3
MOVETYPE_FLY = 4
MOVETYPE_FLYGRAVITY = 5
MOVETYPE_VPHYSICS = 6
MOVETYPE_PUSH = 7
MOVETYPE_NOCLIP = 8
MOVETYPE_LADDER = 9
MOVETYPE_OBSERVER = 10
MOVETYPE_CUSTOM = 11
NAV_NONE = -1
NAV_GROUND = 0
NAV_JUMP = 1
NAV_FLY = 2
NAV_CLIMB = 3
NAV_MESH_INVALID = 0
NAV_MESH_CROUCH = 1
NAV_MESH_JUMP = 2
NAV_MESH_PRECISE = 4
NAV_MESH_NO_JUMP = 8
NAV_MESH_STOP = 16
NAV_MESH_RUN = 32
NAV_MESH_WALK = 64
NAV_MESH_AVOID = 128
NAV_MESH_TRANSIENT = 256
NAV_MESH_DONT_HIDE = 512
NAV_MESH_STAND = 1024
NAV_MESH_NO_HOSTAGES = 2048
NAV_MESH_STAIRS = 4096
NAV_MESH_NO_MERGE = 8192
NAV_MESH_OBSTACLE_TOP = 16384
NAV_MESH_CLIFF = 32768
NAV_MESH_FUNC_COST = 536870912
NAV_MESH_HAS_ELEVATOR = 1073741824
NAV_MESH_NAV_BLOCKER = -2147483648
NORTH_WEST = 0
NORTH_EAST = 1
SOUTH_EAST = 2
SOUTH_WEST = 3
NUM_CORNERS = 4
NORTH = 0
EAST = 1
SOUTH = 2
WEST = 3
GO_NORTH = 0
GO_EAST = 1
GO_SOUTH = 2
GO_WEST = 3
GO_LADDER_UP = 4
GO_LADDER_DOWN = 5
GO_JUMP = 6
GO_ELEVATOR_UP = 7
GO_ELEVATOR_DOWN = 8
NOTIFY_GENERIC = 0
NOTIFY_ERROR = 1
NOTIFY_UNDO = 2
NOTIFY_HINT = 3
NOTIFY_CLEANUP = 4
NPC_STATE_INVALID = -1
NPC_STATE_NONE = 0
NPC_STATE_IDLE = 1
NPC_STATE_ALERT = 2
NPC_STATE_COMBAT = 3
NPC_STATE_SCRIPT = 4
NPC_STATE_PLAYDEAD = 5
NPC_STATE_PRONE = 6
NPC_STATE_DEAD = 7
NUM_AI_CLASSES = 36
NUM_HULLS = 10
OBS_MODE_NONE = 0
OBS_MODE_DEATHCAM = 1
OBS_MODE_FREEZECAM = 2
OBS_MODE_FIXED = 3
OBS_MODE_IN_EYE = 4
OBS_MODE_CHASE = 5
OBS_MODE_ROAMING = 6
PATTACH_ABSORIGIN = 0
PATTACH_ABSORIGIN_FOLLOW = 1
PATTACH_CUSTOMORIGIN = 2
PATTACH_POINT = 3
PATTACH_POINT_FOLLOW = 4
PATTACH_WORLDORIGIN = 5
PLAYER_IDLE = 0
PLAYER_WALK = 1
PLAYER_JUMP = 2
PLAYER_SUPERJUMP = 3
PLAYER_DIE = 4
PLAYER_ATTACK1 = 5
PLAYER_IN_VEHICLE = 6
PLAYER_RELOAD = 7
PLAYER_START_AIMING = 8
PLAYER_LEAVE_AIMING = 9
PLAYERANIMEVENT_ATTACK_PRIMARY = 0
PLAYERANIMEVENT_ATTACK_SECONDARY = 1
PLAYERANIMEVENT_ATTACK_GRENADE = 2
PLAYERANIMEVENT_RELOAD = 3
PLAYERANIMEVENT_RELOAD_LOOP = 4
PLAYERANIMEVENT_RELOAD_END = 5
PLAYERANIMEVENT_JUMP = 6
PLAYERANIMEVENT_SWIM = 7
PLAYERANIMEVENT_DIE = 8
PLAYERANIMEVENT_FLINCH_CHEST = 9
PLAYERANIMEVENT_FLINCH_HEAD = 10
PLAYERANIMEVENT_FLINCH_LEFTARM = 11
PLAYERANIMEVENT_FLINCH_RIGHTARM = 12
PLAYERANIMEVENT_FLINCH_LEFTLEG = 13
PLAYERANIMEVENT_FLINCH_RIGHTLEG = 14
PLAYERANIMEVENT_DOUBLEJUMP = 15
PLAYERANIMEVENT_CANCEL = 16
PLAYERANIMEVENT_SPAWN = 17
PLAYERANIMEVENT_SNAP_YAW = 18
PLAYERANIMEVENT_CUSTOM = 19
PLAYERANIMEVENT_CUSTOM_GESTURE = 20
PLAYERANIMEVENT_CUSTOM_SEQUENCE = 21
PLAYERANIMEVENT_CUSTOM_GESTURE_SEQUENCE = 22
PLAYERANIMEVENT_CANCEL_RELOAD = 23
RENDERGROUP_STATIC_HUGE = 0
RENDERGROUP_OPAQUE_HUGE = 1
RENDERGROUP_STATIC = 6
RENDERGROUP_OPAQUE = 7
RENDERGROUP_TRANSLUCENT = 8
RENDERGROUP_BOTH = 9
RENDERGROUP_VIEWMODEL = 10
RENDERGROUP_VIEWMODEL_TRANSLUCENT = 11
RENDERGROUP_OPAQUE_BRUSH = 12
RENDERGROUP_OTHER = 13
RENDERMODE_NORMAL = 0
RENDERMODE_TRANSCOLOR = 1
RENDERMODE_TRANSTEXTURE = 2
RENDERMODE_GLOW = 3
RENDERMODE_TRANSALPHA = 4
RENDERMODE_TRANSADD = 5
RENDERMODE_ENVIROMENTAL = 6
RENDERMODE_TRANSADDFRAMEBLEND = 7
RENDERMODE_TRANSALPHADD = 8
RENDERMODE_WORLDGLOW = 9
RENDERMODE_NONE = 10
RT_SIZE_NO_CHANGE = 0
RT_SIZE_DEFAULT = 1
RT_SIZE_PICMIP = 2
RT_SIZE_HDR = 3
RT_SIZE_FULL_FRAME_BUFFER = 4
RT_SIZE_OFFSCREEN = 5
RT_SIZE_FULL_FRAME_BUFFER_ROUNDED_UP = 6
RT_SIZE_REPLAY_SCREENSHOT = 7
RT_SIZE_LITERAL = 8
RT_SIZE_LITERAL_PICMIP = 9
LAST_SHARED_SCHEDULE = 88
SCHED_AISCRIPT = 56
SCHED_ALERT_FACE = 5
SCHED_ALERT_FACE_BESTSOUND = 6
SCHED_ALERT_REACT_TO_COMBAT_SOUND = 7
SCHED_ALERT_SCAN = 8
SCHED_ALERT_STAND = 9
SCHED_ALERT_WALK = 10
SCHED_AMBUSH = 52
SCHED_ARM_WEAPON = 48
SCHED_BACK_AWAY_FROM_ENEMY = 24
SCHED_BACK_AWAY_FROM_SAVE_POSITION = 26
SCHED_BIG_FLINCH = 23
SCHED_CHASE_ENEMY = 17
SCHED_CHASE_ENEMY_FAILED = 18
SCHED_COMBAT_FACE = 12
SCHED_COMBAT_PATROL = 75
SCHED_COMBAT_STAND = 15
SCHED_COMBAT_SWEEP = 13
SCHED_COMBAT_WALK = 16
SCHED_COWER = 40
SCHED_DIE = 53
SCHED_DIE_RAGDOLL = 54
SCHED_DISARM_WEAPON = 49
SCHED_DROPSHIP_DUSTOFF = 79
SCHED_DUCK_DODGE = 84
SCHED_ESTABLISH_LINE_OF_FIRE = 35
SCHED_ESTABLISH_LINE_OF_FIRE_FALLBACK = 36
SCHED_FAIL = 81
SCHED_FAIL_ESTABLISH_LINE_OF_FIRE = 38
SCHED_FAIL_NOSTOP = 82
SCHED_FAIL_TAKE_COVER = 31
SCHED_FALL_TO_GROUND = 78
SCHED_FEAR_FACE = 14
SCHED_FLEE_FROM_BEST_SOUND = 29
SCHED_FLINCH_PHYSICS = 80
SCHED_FORCED_GO = 71
SCHED_FORCED_GO_RUN = 72
SCHED_GET_HEALTHKIT = 66
SCHED_HIDE_AND_RELOAD = 50
SCHED_IDLE_STAND = 1
SCHED_IDLE_WALK = 2
SCHED_IDLE_WANDER = 3
SCHED_INTERACTION_MOVE_TO_PARTNER = 85
SCHED_INTERACTION_WAIT_FOR_PARTNER = 86
SCHED_INVESTIGATE_SOUND = 11
SCHED_MELEE_ATTACK1 = 41
SCHED_MELEE_ATTACK2 = 42
SCHED_MOVE_AWAY = 68
SCHED_MOVE_AWAY_END = 70
SCHED_MOVE_AWAY_FAIL = 69
SCHED_MOVE_AWAY_FROM_ENEMY = 25
SCHED_MOVE_TO_WEAPON_RANGE = 34
SCHED_NEW_WEAPON = 63
SCHED_NEW_WEAPON_CHEAT = 64
SCHED_NONE = 0
SCHED_NPC_FREEZE = 73
SCHED_PATROL_RUN = 76
SCHED_PATROL_WALK = 74
SCHED_PRE_FAIL_ESTABLISH_LINE_OF_FIRE = 37
SCHED_RANGE_ATTACK1 = 43
SCHED_RANGE_ATTACK2 = 44
SCHED_RELOAD = 51
SCHED_RUN_FROM_ENEMY = 32
SCHED_RUN_FROM_ENEMY_FALLBACK = 33
SCHED_RUN_FROM_ENEMY_MOB = 83
SCHED_RUN_RANDOM = 77
SCHED_SCENE_GENERIC = 62
SCHED_SCRIPTED_CUSTOM_MOVE = 59
SCHED_SCRIPTED_FACE = 61
SCHED_SCRIPTED_RUN = 58
SCHED_SCRIPTED_WAIT = 60
SCHED_SCRIPTED_WALK = 57
SCHED_SHOOT_ENEMY_COVER = 39
SCHED_SLEEP = 87
SCHED_SMALL_FLINCH = 22
SCHED_SPECIAL_ATTACK1 = 45
SCHED_SPECIAL_ATTACK2 = 46
SCHED_STANDOFF = 47
SCHED_SWITCH_TO_PENDING_WEAPON = 65
SCHED_TAKE_COVER_FROM_BEST_SOUND = 28
SCHED_TAKE_COVER_FROM_ENEMY = 27
SCHED_TAKE_COVER_FROM_ORIGIN = 30
SCHED_TARGET_CHASE = 21
SCHED_TARGET_FACE = 20
SCHED_VICTORY_DANCE = 19
SCHED_WAIT_FOR_SCRIPT = 55
SCHED_WAIT_FOR_SPEAK_FINISH = 67
SCHED_WAKE_ANGRY = 4
SCREENFADE.IN = 1
SCREENFADE.OUT = 2
SCREENFADE.MODULATE = 4
SCREENFADE.STAYOUT = 8
SCREENFADE.PURGE = 16
SENSORBONE.SHOULDER_RIGHT = 8
SENSORBONE.SHOULDER_LEFT = 4
SENSORBONE.HIP = 0
SENSORBONE.ELBOW_RIGHT = 9
SENSORBONE.KNEE_RIGHT = 17
SENSORBONE.WRIST_RIGHT = 10
SENSORBONE.ANKLE_LEFT = 14
SENSORBONE.FOOT_LEFT = 15
SENSORBONE.WRIST_LEFT = 6
SENSORBONE.FOOT_RIGHT = 19
SENSORBONE.HAND_RIGHT = 11
SENSORBONE.SHOULDER = 2
SENSORBONE.HIP_LEFT = 12
SENSORBONE.HIP_RIGHT = 16
SENSORBONE.HAND_LEFT = 7
SENSORBONE.ANKLE_RIGHT = 18
SENSORBONE.SPINE = 1
SENSORBONE.ELBOW_LEFT = 5
SENSORBONE.KNEE_LEFT = 13
SENSORBONE.HEAD = 3
SF_CITIZEN_AMMORESUPPLIER = 524288
SF_CITIZEN_FOLLOW = 65536
SF_CITIZEN_IGNORE_SEMAPHORE = 2097152
SF_CITIZEN_MEDIC = 131072
SF_CITIZEN_NOT_COMMANDABLE = 1048576
SF_CITIZEN_RANDOM_HEAD = 262144
SF_CITIZEN_RANDOM_HEAD_FEMALE = 8388608
SF_CITIZEN_RANDOM_HEAD_MALE = 4194304
SF_CITIZEN_USE_RENDER_BOUNDS = 16777216
SF_FLOOR_TURRET_CITIZEN = 512
SF_NPC_ALTCOLLISION = 4096
SF_NPC_ALWAYSTHINK = 1024
SF_NPC_DROP_HEALTHKIT = 8
SF_NPC_FADE_CORPSE = 512
SF_NPC_FALL_TO_GROUND = 4
SF_NPC_GAG = 2
SF_NPC_LONG_RANGE = 256
SF_NPC_NO_PLAYER_PUSHAWAY = 16384
SF_NPC_NO_WEAPON_DROP = 8192
SF_NPC_START_EFFICIENT = 16
SF_NPC_TEMPLATE = 2048
SF_NPC_WAIT_FOR_SCRIPT = 128
SF_NPC_WAIT_TILL_SEEN = 1
SF_PHYSBOX_MOTIONDISABLED = 32768
SF_PHYSBOX_ALWAYS_PICK_UP = 1048576
SF_PHYSBOX_NEVER_PICK_UP = 2097152
SF_PHYSBOX_NEVER_PUNT = 4194304
SF_PHYSPROP_MOTIONDISABLED = 8
SF_PHYSPROP_PREVENT_PICKUP = 512
SF_PHYSPROP_IS_GIB = 4194304
SF_ROLLERMINE_FRIENDLY = 65536
SF_WEAPON_START_CONSTRAINED = 1
SF_WEAPON_NO_PLAYER_PICKUP = 2
SF_WEAPON_NO_PHYSCANNON_PUNT = 4
SIGNONSTATE_NONE = 0
SIGNONSTATE_CHALLENGE = 1
SIGNONSTATE_CONNECTED = 2
SIGNONSTATE_NEW = 3
SIGNONSTATE_PRESPAWN = 4
SIGNONSTATE_SPAWN = 5
SIGNONSTATE_FULL = 6
SIGNONSTATE_CHANGELEVEL = 7
SIM_NOTHING = 0
SIM_LOCAL_ACCELERATION = 1
SIM_LOCAL_FORCE = 2
SIM_GLOBAL_ACCELERATION = 3
SIM_GLOBAL_FORCE = 4
SND_NOFLAGS = 0
SND_CHANGE_VOL = 1
SND_CHANGE_PITCH = 2
SND_STOP = 4
SND_SPAWNING = 8
SND_DELAY = 16
SND_STOP_LOOPING = 32
SND_SHOULDPAUSE = 128
SND_IGNORE_PHONEMES = 256
SND_IGNORE_NAME = 512
SND_DO_NOT_OVERWRITE_EXISTING_ON_CHANNEL = 1024
SNDLVL_NONE = 0
SNDLVL_20dB = 20
SNDLVL_25dB = 25
SNDLVL_30dB = 30
SNDLVL_35dB = 35
SNDLVL_40dB = 40
SNDLVL_45dB = 45
SNDLVL_50dB = 50
SNDLVL_55dB = 55
SNDLVL_IDLE = 60
SNDLVL_60dB = 60
SNDLVL_65dB = 65
SNDLVL_STATIC = 66
SNDLVL_70dB = 70
SNDLVL_NORM = 75
SNDLVL_75dB = 75
SNDLVL_TALKING = 80
SNDLVL_80dB = 80
SNDLVL_85dB = 85
SNDLVL_90dB = 90
SNDLVL_95dB = 95
SNDLVL_100dB = 100
SNDLVL_105dB = 105
SNDLVL_110dB = 110
SNDLVL_120dB = 120
SNDLVL_130dB = 130
SNDLVL_GUNFIRE = 140
SNDLVL_140dB = 140
SNDLVL_150dB = 150
SNDLVL_180dB = 180
SOLID_NONE = 0
SOLID_BSP = 1
SOLID_BBOX = 2
SOLID_OBB = 3
SOLID_OBB_YAW = 4
SOLID_CUSTOM = 5
SOLID_VPHYSICS = 6
SOUND_NONE = 0
SOUND_COMBAT = 1
SOUND_WORLD = 2
SOUND_PLAYER = 4
SOUND_DANGER = 8
SOUND_BULLET_IMPACT = 16
SOUND_CARCASS = 32
SOUND_MEAT = 64
SOUND_GARBAGE = 128
SOUND_THUMPER = 256
SOUND_BUGBAIT = 512
SOUND_PHYSICS_DANGER = 1024
SOUND_DANGER_SNIPERONLY = 2048
SOUND_MOVE_AWAY = 4096
SOUND_PLAYER_VEHICLE = 8192
SOUND_READINESS_LOW = 16384
SOUND_READINESS_MEDIUM = 32768
SOUND_READINESS_HIGH = 65536
SOUND_CONTEXT_FROM_SNIPER = 1048576
SOUND_CONTEXT_GUNFIRE = 2097152
SOUND_CONTEXT_MORTAR = 4194304
SOUND_CONTEXT_COMBINE_ONLY = 8388608
SOUND_CONTEXT_REACT_TO_SOURCE = 16777216
SOUND_CONTEXT_EXPLOSION = 33554432
SOUND_CONTEXT_EXCLUDE_COMBINE = 67108864
SOUND_CONTEXT_DANGER_APPROACH = 134217728
SOUND_CONTEXT_ALLIES_ONLY = 268435456
SOUND_CONTEXT_PLAYER_VEHICLE = 536870912
STENCIL_NEVER = 1
STENCIL_LESS = 2
STENCIL_EQUAL = 3
STENCIL_LESSEQUAL = 4
STENCIL_GREATER = 5
STENCIL_NOTEQUAL = 6
STENCIL_GREATEREQUAL = 7
STENCIL_ALWAYS = 8
STENCIL_KEEP = 1
STENCIL_ZERO = 2
STENCIL_REPLACE = 3
STENCIL_INCRSAT = 4
STENCIL_DECRSAT = 5
STENCIL_INVERT = 6
STENCIL_INCR = 7
STENCIL_DECR = 8
STENCILCOMPARISONFUNCTION_NEVER = 1
STENCILCOMPARISONFUNCTION_LESS = 2
STENCILCOMPARISONFUNCTION_EQUAL = 3
STENCILCOMPARISONFUNCTION_LESSEQUAL = 4
STENCILCOMPARISONFUNCTION_GREATER = 5
STENCILCOMPARISONFUNCTION_NOTEQUAL = 6
STENCILCOMPARISONFUNCTION_GREATEREQUAL = 7
STENCILCOMPARISONFUNCTION_ALWAYS = 8
STENCILOPERATION_KEEP = 1
STENCILOPERATION_ZERO = 2
STENCILOPERATION_REPLACE = 3
STENCILOPERATION_INCRSAT = 4
STENCILOPERATION_DECRSAT = 5
STENCILOPERATION_INVERT = 6
STENCILOPERATION_INCR = 7
STENCILOPERATION_DECR = 8
STEPSOUNDTIME_NORMAL = 0
STEPSOUNDTIME_ON_LADDER = 1
STEPSOUNDTIME_WATER_KNEE = 2
STEPSOUNDTIME_WATER_FOOT = 3
STUDIO_RENDER = 1
STUDIO_VIEWXFORMATTACHMENTS = 2
STUDIO_DRAWTRANSLUCENTSUBMODELS = 4
STUDIO_TWOPASS = 8
STUDIO_STATIC_LIGHTING = 16
STUDIO_WIREFRAME = 32
STUDIO_ITEM_BLINK = 64
STUDIO_NOSHADOWS = 128
STUDIO_WIREFRAME_VCOLLIDE = 256
STUDIO_GENERATE_STATS = 16777216
STUDIO_SSAODEPTHTEXTURE = 134217728
STUDIO_SHADOWDEPTHTEXTURE = 1073741824
STUDIO_TRANSPARENCY = 2147483648
SURF_LIGHT = 1
SURF_SKY2D = 2
SURF_SKY = 4
SURF_WARP = 8
SURF_TRANS = 16
SURF_NOPORTAL = 32
SURF_TRIGGER = 64
SURF_NODRAW = 128
SURF_HINT = 256
SURF_SKIP = 512
SURF_NOLIGHT = 1024
SURF_BUMPLIGHT = 2048
SURF_NOSHADOWS = 4096
SURF_NODECALS = 8192
SURF_NOCHOP = 16384
SURF_HITBOX = 32768
TASKSTATUS_NEW = 0
TASKSTATUS_RUN_MOVE_AND_TASK = 1
TASKSTATUS_RUN_MOVE = 2
TASKSTATUS_RUN_TASK = 3
TASKSTATUS_COMPLETE = 4
TEAM_CONNECTING = 0
TEAM_UNASSIGNED = 1001
TEAM_SPECTATOR = 1002
TEXFILTER.NONE = 0
TEXFILTER.POINT = 1
TEXFILTER.LINEAR = 2
TEXFILTER.ANISOTROPIC = 3
TEXT_ALIGN_LEFT = 0
TEXT_ALIGN_CENTER = 1
TEXT_ALIGN_RIGHT = 2
TEXT_ALIGN_TOP = 3
TEXT_ALIGN_BOTTOM = 4
TEXT_FILTER_UNKNOWN = 0
TEXT_FILTER_GAME_CONTENT = 1
TEXT_FILTER_CHAT = 2
TEXT_FILTER_NAME = 3
TEXTUREFLAGS_POINTSAMPLE = 1
TEXTUREFLAGS_TRILINEAR = 2
TEXTUREFLAGS_CLAMPS = 4
TEXTUREFLAGS_CLAMPT = 8
TEXTUREFLAGS_ANISOTROPIC = 16
TEXTUREFLAGS_HINT_DXT5 = 32
TEXTUREFLAGS_PWL_CORRECTED = 64
TEXTUREFLAGS_NORMAL = 128
TEXTUREFLAGS_NOMIP = 256
TEXTUREFLAGS_NOLOD = 512
TEXTUREFLAGS_ALL_MIPS = 1024
TEXTUREFLAGS_PROCEDURAL = 2048
TEXTUREFLAGS_ONEBITALPHA = 4096
TEXTUREFLAGS_EIGHTBITALPHA = 8192
TEXTUREFLAGS_ENVMAP = 16384
TEXTUREFLAGS_RENDERTARGET = 32768
TEXTUREFLAGS_DEPTHRENDERTARGET = 65536
TEXTUREFLAGS_NODEBUGOVERRIDE = 131072
TEXTUREFLAGS_SINGLECOPY = 262144
TEXTUREFLAGS_UNUSED_00080000 = 524288
TEXTUREFLAGS_IMMEDIATE_CLEANUP = 1048576
TEXTUREFLAGS_UNUSED_00200000 = 2097152
TEXTUREFLAGS_UNUSED_00400000 = 4194304
TEXTUREFLAGS_NODEPTHBUFFER = 8388608
TEXTUREFLAGS_UNUSED_01000000 = 16777216
TEXTUREFLAGS_CLAMPU = 33554432
TEXTUREFLAGS_VERTEXTEXTURE = 67108864
TEXTUREFLAGS_SSBUMP = 134217728
TEXTUREFLAGS_UNUSED_10000000 = 268435456
TEXTUREFLAGS_BORDER = 536870912
TEXTUREFLAGS_UNUSED_40000000 = 1073741824
TEXTUREFLAGS_UNUSED_80000000 = 2147483648
TRACER_NONE = 0
TRACER_LINE = 1
TRACER_RAIL = 2
TRACER_BEAM = 3
TRACER_LINE_AND_WHIZ = 4
TRANSMIT_ALWAYS = 0
TRANSMIT_NEVER = 1
TRANSMIT_PVS = 2
TYPE_NONE = -1
TYPE_INVALID = -1
TYPE_NIL = 0
TYPE_BOOL = 1
TYPE_LIGHTUSERDATA = 2
TYPE_NUMBER = 3
TYPE_STRING = 4
TYPE_TABLE = 5
TYPE_FUNCTION = 6
TYPE_USERDATA = 7
TYPE_THREAD = 8
TYPE_ENTITY = 9
TYPE_VECTOR = 10
TYPE_ANGLE = 11
TYPE_PHYSOBJ = 12
TYPE_SAVE = 13
TYPE_RESTORE = 14
TYPE_DAMAGEINFO = 15
TYPE_EFFECTDATA = 16
TYPE_MOVEDATA = 17
TYPE_RECIPIENTFILTER = 18
TYPE_USERCMD = 19
TYPE_SCRIPTEDVEHICLE = 20
TYPE_MATERIAL = 21
TYPE_PANEL = 22
TYPE_PARTICLE = 23
TYPE_PARTICLEEMITTER = 24
TYPE_TEXTURE = 25
TYPE_USERMSG = 26
TYPE_CONVAR = 27
TYPE_IMESH = 28
TYPE_MATRIX = 29
TYPE_SOUND = 30
TYPE_PIXELVISHANDLE = 31
TYPE_DLIGHT = 32
TYPE_VIDEO = 33
TYPE_FILE = 34
TYPE_LOCOMOTION = 35
TYPE_PATH = 36
TYPE_NAVAREA = 37
TYPE_SOUNDHANDLE = 38
TYPE_NAVLADDER = 39
TYPE_PARTICLESYSTEM = 40
TYPE_PROJECTEDTEXTURE = 41
TYPE_PHYSCOLLIDE = 42
TYPE_SURFACEINFO = 43
TYPE_COUNT = 44
TYPE_COLOR = 255
USE_OFF = 0
USE_ON = 1
USE_SET = 2
USE_TOGGLE = 3
WEAPON_PROFICIENCY_POOR = 0
WEAPON_PROFICIENCY_AVERAGE = 1
WEAPON_PROFICIENCY_GOOD = 2
WEAPON_PROFICIENCY_VERY_GOOD = 3
WEAPON_PROFICIENCY_PERFECT = 4
