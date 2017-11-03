--
-- Dependencies
--

local physics = require("physics")

--
-- Function localization
--

local random = math.random

--
-- Short description of Instance goes here
--

return function(params)

  --
  -- Parameters (read only constants from user)
  --

  local params = {}
  params.x = params.x or 0
  params.y = params.y or 0

  --
  -- State (mutable stuffs)
  --

  local state = {}
  state.isActive = false

  --
  -- Options (read only constants)
  --

  local opts = {}
  opts.pi = math.pi

  --
  -- Construct instance
  --

  local self = display.newCircle(params.x, params.y, opts.pi)

  --
  -- Accessing super methods
  --

  local super = {}
  super.setColor = self.someMethod

  --
  -- Private functions
  --

  local function doStuffPrivately()
    state.isActive = true
    print(self.x, self.y)
  end

  local function handleEvent(event)
    print(event)
  end

  --
  -- Public methods
  --

  function self.doStuff()
    doStuffPrivately()
    super.setColor()
    return opts.pi
  end

  --
  -- Event binding
  --

  Runtime:addEventListener("touch", handleEvent)

  return self
end
