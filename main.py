import demo
#
assert demo.greet("world") == "Hello, world!"
assert demo.greet(name="world") == "Hello, world!"
#
fruits=["banana","apple","orange"]
assert demo.count(fruits) == 3
#
upletters=["AA","BB","CC"]
letters=demo.lowercase(upletters)
assert "".join(letters) =="aabbcc"
#
print("all test sucessful")

