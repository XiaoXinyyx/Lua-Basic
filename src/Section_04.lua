---
--- Created by 杨以鑫.
--- DateTime: 2021/3/25 22:31
--- 流程控制语句: if, while, repeat, for
---

-- if 条件判断
num1 = 3;
if (num1 > 100) then        -- 小括号可以不写
    print("num1 > 100");
elseif (num1 > 50) then
    print("50 < num1 <= 100");
else
    print("num1 <= 50");
end

-- while 循环
while(num1 < 100) do
    num1 = num1 + 1;
end

-- repeat ... until 循环
i = 1;
repeat
    i = i + 1;
until (i > 100)
print(i);

-- for 循环，分为数值循环和泛型循环
for i = 0, 10, 2 do     -- 数值循环
    print(i);
end

-- ipairs 与 pairs 迭代器
myArray = {10, 20, 31, 56, 12, 46, 23};
-- ipairs 遍历顺序的集合，中间序号不能中断，遇到nil数值停止，一般用于数组类型集合的遍历
for k, v in ipairs(myArray) do
    print(k, v);
end
myArray = {num1 = "张三", num2 = "李四"};
-- pairs 遍历集合中所有数据，序号可以中断，一般用于键值对类型集合的遍历
for k, v in pairs(myArray) do
    print(k, v);
end

-- break 关键字：退出循环 (Lua 中没有 continue 关键字)

-- 其他迭代器
-- io.lines 迭代文件每行
-- string.gmatch 迭代字符串中单词