---AUTO GENERATED, DO NOT MODIFY!
---@meta cc.LayerMultiplex

---\class LayerMultiplex
---MultipleLayer is a Layer with the ability to multiplex it's children.
---Features:
---- It supports one or more children
---- Only one children will be active a time
---@class cc.LayerMultiplex : cc.Layer
local LayerMultiplex = {}

---Add a certain layer to LayerMultiplex.
---
---@param layer cc.Layer # A layer need to be added to the LayerMultiplex.
function LayerMultiplex:addLayer(layer) end

---Creates and initializes a LayerMultiplex object.
---\lua NA
---
---@return cc.LayerMultiplex # An autoreleased LayerMultiplex object.
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer, layer__3: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer, layer__3: cc.Layer, layer__4: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer, layer__3: cc.Layer, layer__4: cc.Layer, layer__5: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer, layer__3: cc.Layer, layer__4: cc.Layer, layer__5: cc.Layer, layer__6: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer, layer__3: cc.Layer, layer__4: cc.Layer, layer__5: cc.Layer, layer__6: cc.Layer, layer__7: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer, layer__3: cc.Layer, layer__4: cc.Layer, layer__5: cc.Layer, layer__6: cc.Layer, layer__7: cc.Layer, layer__8: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer, layer__3: cc.Layer, layer__4: cc.Layer, layer__5: cc.Layer, layer__6: cc.Layer, layer__7: cc.Layer, layer__8: cc.Layer, layer__9: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer, layer__3: cc.Layer, layer__4: cc.Layer, layer__5: cc.Layer, layer__6: cc.Layer, layer__7: cc.Layer, layer__8: cc.Layer, layer__9: cc.Layer, layer__10: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer, layer__3: cc.Layer, layer__4: cc.Layer, layer__5: cc.Layer, layer__6: cc.Layer, layer__7: cc.Layer, layer__8: cc.Layer, layer__9: cc.Layer, layer__10: cc.Layer, layer__11: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer, layer__3: cc.Layer, layer__4: cc.Layer, layer__5: cc.Layer, layer__6: cc.Layer, layer__7: cc.Layer, layer__8: cc.Layer, layer__9: cc.Layer, layer__10: cc.Layer, layer__11: cc.Layer, layer__12: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer, layer__3: cc.Layer, layer__4: cc.Layer, layer__5: cc.Layer, layer__6: cc.Layer, layer__7: cc.Layer, layer__8: cc.Layer, layer__9: cc.Layer, layer__10: cc.Layer, layer__11: cc.Layer, layer__12: cc.Layer, layer__13: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer, layer__3: cc.Layer, layer__4: cc.Layer, layer__5: cc.Layer, layer__6: cc.Layer, layer__7: cc.Layer, layer__8: cc.Layer, layer__9: cc.Layer, layer__10: cc.Layer, layer__11: cc.Layer, layer__12: cc.Layer, layer__13: cc.Layer, layer__14: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer, layer__3: cc.Layer, layer__4: cc.Layer, layer__5: cc.Layer, layer__6: cc.Layer, layer__7: cc.Layer, layer__8: cc.Layer, layer__9: cc.Layer, layer__10: cc.Layer, layer__11: cc.Layer, layer__12: cc.Layer, layer__13: cc.Layer, layer__14: cc.Layer, layer__15: cc.Layer): cc.LayerMultiplex
---
---Creates a LayerMultiplex with one or more layers using a variable argument list.
---\code
---When this function bound to lua or js,the input params are changed.
---In js:var create(...)
---In lua:local create(...)
---\endcode
---@overload fun(layer: cc.Layer, layer__1: cc.Layer, layer__2: cc.Layer, layer__3: cc.Layer, layer__4: cc.Layer, layer__5: cc.Layer, layer__6: cc.Layer, layer__7: cc.Layer, layer__8: cc.Layer, layer__9: cc.Layer, layer__10: cc.Layer, layer__11: cc.Layer, layer__12: cc.Layer, layer__13: cc.Layer, layer__14: cc.Layer, layer__15: cc.Layer, layer__16: cc.Layer): cc.LayerMultiplex
function LayerMultiplex.create() end

---Creates a LayerMultiplex with an array of layers.
---\since v2.1
---\js NA
---
---@param arrayOfLayers any # An array of layers.
---@return cc.LayerMultiplex # An autoreleased LayerMultiplex object.
function LayerMultiplex.createWithArray(arrayOfLayers) end

---Creates a LayerMultiplex with one layer.
---Lua script can not init with undetermined number of variables
---so add these functions to be used with lua.
---\js NA
---\lua NA
---
---@param layer cc.Layer # A certain layer.
---@return cc.LayerMultiplex # An autoreleased LayerMultiplex object.
function LayerMultiplex.createWithLayer(layer) end

---initializes a MultiplexLayer with an array of layers
---\since v2.1
---@param arrayOfLayers any
---@return boolean
function LayerMultiplex:initWithArray(arrayOfLayers) end

---\js ctor
---@return cc.LayerMultiplex
function LayerMultiplex.new() end

---Switches to a certain layer indexed by n.
---The current (old) layer will be removed from it's parent with 'cleanup=true'.
---
---@param n integer # The layer indexed by n will display.
---
---The same as switchTo(int), but has a parameter to set if need to clean up child.
---@overload fun(self: cc.LayerMultiplex, n: integer, cleanup: boolean)
function LayerMultiplex:switchTo(n) end

---release the current layer and switches to another layer indexed by n.
---The current (old) layer will be removed from it's parent with 'cleanup=true'.
---
---@param n integer # The layer indexed by n will display.
function LayerMultiplex:switchToAndReleaseMe(n) end

return LayerMultiplex