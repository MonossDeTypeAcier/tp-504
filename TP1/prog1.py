import fonctions as f 
print("Hello, World!")

while(True):	
	a=int(input("Inserer une valeur à monter en puissance: "))
	b=int(input("A quelle puissance? : "))
	y=f.puissance(a,b)
	print(a, "à la puissance",b,"=", y)
