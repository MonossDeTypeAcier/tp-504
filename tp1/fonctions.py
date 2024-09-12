
def puissance(a,b):
	if not type(a) is int:
		raise TypeError("Only integers are allowed")
	if not type(b) is int:
		raise TypeError("Only integers are allowed")
	#c=a**b
	c=a
	while (i<b-1):
		c=a*c
	return c

