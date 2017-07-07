return {
  new = function(params)

    -- Construct and initialize instance
    local ClosureInstance = display.newCircle(0, 0, 0) or {}
    -- local ClosureInstance = require("parent-class-module").new() -- To extend a custom object

    -- Public properties
    ClosureInstance.publicVariable = nil

    -- Private variables
    local privateVariable

    -- Private functions
    local function privateFunction() end

    -- Public methods with access to `self` reference
    function ClosureInstance:publicFunction() end

    -- Overriding inherited methods
    -- function ClosureInstance:inheritedMethod() end

    -- Calling super class methods
    -- ClosureInstance.superInheritedMethod = ClosureInstance.inheritedMethod
    -- function ClosureInstance:inheritedMethod()
    --   self:superInheritedMethod()
    --   -- extend method...
    -- end

  return ClosureInstance end
}
