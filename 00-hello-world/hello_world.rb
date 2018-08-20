
#Hello World Method with "" default
def hello_world(name = "")
  if name.length != 0
    return "Hello, #{name}!"
  else
    return "Hello, World!"
  end
end
