--
-- Closure Module
--

-- require statements here
local C = {}



--
-- Constructor
--

local C.new = function()

  local self = {} -- Or set to a extendable constructor (even, a display object!)
  
  
  
  --
  -- Private variables
  --

  local foo = "foobar"
  
  
  
  --
  -- Private functions
  --
  
  local privFn = function()
    print("I am private!")
  end

  
  
  --
  -- Public functions
  --

  self.publicFn = function()
    print("I am not private!")
  end

  
  
  --
  -- Expose closure API
  --

  return self

end



--
-- Expose closure
--

return C
