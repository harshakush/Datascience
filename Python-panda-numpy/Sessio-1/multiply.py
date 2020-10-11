def sorting(arrayin):
    print(len(arrayin))
    for x in arrayin:
        print("\n Element is :", x)


def multiply(inp):
    #print("Table for "+ inp)
    for i in range(11):
        print("\n")
        print(inp*i)

def processArray(sample):
    print(sample[-100:0])

#multiply(2)
#inputnumbers = [10,11,2,8,4,0,-1]
#sorting(inputnumbers)

processArray("namaskara devare")
mystr = "Harsha sha sha256"
print(mystr.endswith("256"))

carcount = 22
carmodel = "fortuner"

print("Todays workd {} {}".format(carcount,carmodel))

print("Todays flot {}".format(2/3))

Dict = {'A1': 'A1','A2': 'A2','A3': {'A1': 'A1','A2': 'A2','A3': 'A3'}}

print(Dict['A3']['A3'])

alist = [1,2,4,5,6]
print(alist[0])
amatrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12],[13,14,15,16]]

row=4
col=4

for r in range(row):
    for c in range(col):
        print(amatrix[r][c])
    print("\n")
value = amatrix.append(23)

for r in range(row):
    for c in range(col):
        print(amatrix[r][c])
    print("\n")