# execute the code in a slot given its name

exe := Object clone
exe script := "1 + 1"
doString(exe getSlot("script")) println

exe := method()
 
