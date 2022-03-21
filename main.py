import datetime

start_time = datetime.datetime.now()
a, b, c = 0, 3, 3
for i in range(100000000):
    a += b * 2 + c - i
print(a)
final_time = datetime.datetime.now() - start_time

print('Время выполнения программы: ', final_time)