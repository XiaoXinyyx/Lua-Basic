---
--- Created by 杨以鑫. DateTime: 2021/3/26 21:46
--- 表：表的定义，表的构造与基本访问，表的赋值与迭代输出
--- 使用迭代器函数输出，表函数
---

MyArray1 = {11, 22, 33};                      -- 数组类型的表
print(MyArray1[1], MyArray1[2], MyArray1[3]); -- 使用下标输出

MyArray2 = {str1 = "Ming", str2 = "Wang"};    -- 键值对类型的表
print(MyArray2["str1"], MyArray2.str1);       -- 两种访问方式

-- 表的迭代输出
for i = 1, #MyArray1 do                       -- 使用 # 得到表长度(数组类型)
    print(MyArray1[i]);
end
for i = 1, table.getn(MyArray1) do            -- 使用表函数，得到表中数量(数组类型)
    print(MyArray1[i]);
end

-- 使用迭代器函数输出
-- ipairs 输出连续数值，pairs 输出连续与非连续数值
for k, v in pairs(MyArray2) do
    print(k, v);
end

--- 表函数
table.getn(MyArray1);                     -- 得到表长度(适用于数组类型表)
len = #MyArray1;                          -- 得到表长度(适用于数组类型表)
-- 表的链接，输出字符串(适用于数组类型表)
print(table.concat(MyArray1, "|", 2, 3));
-- 表的插入函数
table.insert(MyArray1, 1, 0); -- 添加 0
print(table.concat(MyArray1));
-- 表的移除函数
table.remove(MyArray1, 4);           -- 移除 33
print(table.concat(MyArray1));
-- 表的排序
function greater(a, b) return a > b end
table.sort(MyArray1, greater);
print(table.concat(MyArray1));

-- 资源释放
MyArray1 = nil;     -- 销毁表