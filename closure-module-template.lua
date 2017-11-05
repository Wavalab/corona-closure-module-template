--[[

  Instance details

--]]

local physics = require("physics")
-- and, other dependencies...

-- Pure functions

local random = math.random

-- Closure

local Instance = {}

function Instance.new(params)
  local self, spec, state, super = {}, {}, {}, {}

  -- Read-only
  
  spec.x = params.x or 0
  spec.y = params.y or 0
  spec.pi = math.pi

  -- Mutable
  
  state.isActive = false

  -- Constructor
  
  self = display.newCircle(spec.x, spec.y, spec.pi)

  -- Super methods
  
  super.someMethod = self.someMethod

  -- Private functions

  local function doStuffPrivately()
    state.isActive = true
    print(self.x, self.y)
  end

  local function handleEvent(event)
    print(event)
  end
  
  -- Event binding
  
  Runtime:addEventListener("touch", handleEvent)

  -- Public methods
  
  function self.doStuff()
    doStuffPrivately()
    super.someMethod()
    return spec.pi
  end

  return self
end
