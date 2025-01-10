local function foo(a, b)
  if a == nil then return nil, "a is nil" end
  if b == nil then return nil, "b is nil" end
  return a + b
end

local result, err = foo(10, nil)
print(result, err)

result, err = foo(nil, 20)
print(result, err)

result = foo(30,40)  --this will cause error
print(result)