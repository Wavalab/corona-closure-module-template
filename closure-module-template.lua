--
-- Closure Module
--

local M = {}
-- include require statements here

--
-- Constructor
--

local new = function()

  local self = {} -- Or set to a extendable constructor

  --
  -- Private variables
  --

  local str = "Test"

  --
  -- Private functions
  --

  local privFn = function()
    print( str .. " 1" )
  end

  local publicFn = function()
    print( str .. " 2" )
  end

  --
  -- Expose closure API
  --

  self.test1 = publicFn
  return self

end

--
-- Expose closure via module
--

M.new = new
return M
