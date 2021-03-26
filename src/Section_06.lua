---
--- Created by 杨以鑫. DateTime: 2021/3/26 18:00
--- 字符串：字符串表示，转义字符串，字符串的常用函数
---

-- 字符串的表示
str1 = "Hello";
str2 = '你好';
str3 = [[大家下午好]];
str4 = "大家'上午'好";
str5 = '大家"下午"好';

-- 输出字符串长度
print(string.len(str1));    -- 使用字符串函数
print(#str1);               -- 使用 # 符号

-- 转义字符串
print("你好\r好吗？");       -- 回车 Out: 好吗？
print("Hello\nWorld");      -- 换行
print("Hello\r\nWorld");    -- 回车换行
print("大家\\好");

--- 字符串常用函数
print(string.len(str1));                          -- 字符串的长度
print(string.upper(str1));                        -- 输出大写
print(string.lower(str1));                        -- 输出小写

pos = string.find(str1, "o");            -- 查找，下标从1开始
print(pos);
pos = string.find(str1, 'l', 4);    -- 从下标4开始搜索
print(pos);

ret = string.sub("Hello World", 1, 3);   -- 截取字符串
print(ret);

-- 字符串替换
ret = string.gsub("Hello World", "l", "z");
print("替换结果：" .. ret);

-- 字符串反转
ret = string.reverse("Hello World");
print(ret);

-- 格式化字符串, %d: number, %s: string
ret = string.format("%d + %d = %d", 1, 2, 1 + 2);
print(ret);