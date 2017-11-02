--
-- Dependencies
--

local physics = require("physics")

--
-- Function localization
--

local random = math.random

--
-- Description for Instance
--

local Instance = {}

function Instance.new()

  local self = {}

  --
  -- Parameters (read only constants from user)
  --

  local params = {}
  params.x = params.x or 0
  params.y = params.y or 0

  --
  -- Parameter assertions
  --

  assert(params.x >= 0, "x must be non-negative")
  assert(params.y >= 0, "y must be non-negative")

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

  self = display.newCircle(params.x, params.y, opts.pi)

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

  function self:doStuff()
    doStuffPrivately()
    super.setColor()
    return opts.pi
  end

  --
  -- Event binding
  --

  Runtime:addEventListener("touch", handleEvent)

  --
  -- Public properties
  --

  self.name = "instance"

  return self
end

return Instance
