#1到10的平方数
for x in range(1,11):
    print(f"{x}**2={x**2}")

#打印图形矩形
j = 1
for i in range(1,5):
    while j <= i:
        for x in range(j):
            print("*",end= '')
        j +=1
    print()
a = 5
for s in range(5):
       while a >= s:
           for d in range(a):
               print("*\t",end='')
           a-=1
           print()
print(" * ")
print("***")
print("***")
print(" * ")


#输入一个整数，判断是奇数还是偶数
print("判断一个数的奇偶")
x =int(input("请输入一个整数："))
if x %2 ==0:
    print("这个数是偶数")
else:
    print("这个数是奇数")

#计算1到100的和
summary = 0
n = 1
while n<=100:
    summary +=n
    n +=1
print(f"{summary}")
