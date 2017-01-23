local M = { new = function()

  -- Construct and initialize instance
  local ClosureInstance = {}

  -- To extend a display object
  -- local ClosureInstance = display.newCircle(0, 0, 0)

  -- To extend a custom object
  -- local ClosureInstance = require("parent-class-module").new()

  -- Public properties
  ClosureInstance.publicVariable = nil

  -- Private variables
  local privateVariable

  -- Private functions
  local function privateFunction() end

  -- Public methods with access to `self` reference
  function ClosureInstance:publicFunction() end

  -- Override inherited methods
  -- function ClosureInstance:inheritedMethod() end

  -- Call super class methods
  -- ClosureInstance.superInheritedMethod = ClosureInstance.inheritedMethod
  -- function ClosureInstance:inheritedMethod()
  --   self:superInheritedMethod()
  --   -- extend method...
  -- end

return ClosureInstance end } return M
