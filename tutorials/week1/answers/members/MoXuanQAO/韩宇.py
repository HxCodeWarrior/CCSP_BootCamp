#1到10的平方数
for x in range(1,11):
    print(f"{x}**2={x**2}")

#打印图形(第一个)
j = 1
for i in range(1,5):
    while j <= i:
        for x in range(j):
            print("*\t",end= '')
        j +=1
    print()

#打印图形（第二个）
a = 5
for s in range(5):
       while a >= s:
           for d in range(a):
               print("*\t",end='')
           a-=1
           print()

#打印图形第三个
print(" * ")
print("***")
print("***")
print(" * ")
#编程题（i）
print("判断一个数是奇数还是偶数")
x = int(input("请输入一个数字"))
if x % 2 == 0:
    print("这个数是偶数")
else:
    print("这个数是奇数")


#编程题(ii)
num_1 = 1
num_2 = 1
while num_2 < 100:
    num_2 += 1
    num_1 += num_2
print(f"一到一百的和为{num_1}")