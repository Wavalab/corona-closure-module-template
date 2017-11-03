-- Dependencies
local physics = require("physics")

-- Localize functions
local random = math.random

-- Insert short description of Instance
return function(params)
  local self, spec, state, super = {}, {}, {}, {}

  -- Read-only
  spec.x = params.x or 0
  spec.y = params.y or 0
  spec.pi = math.pi

  -- Mutable
  state.isActive = false

  -- Construct instance
  self = display.newCircle(spec.x, spec.y, spec.pi)

  -- Access super methods
  super.someMethod = self.someMethod

  -- Private functions
  local function doStuffPrivately()
    state.isActive = true
    print(self.x, self.y)
  end

  local function handleEvent(event)
    print(event)
  end

  -- Public methods
  function self.doStuff()
    doStuffPrivately()
    super.someMethod()
    return spec.pi
  end

  -- Event binding
  Runtime:addEventListener("touch", handleEvent)

  return self
end
