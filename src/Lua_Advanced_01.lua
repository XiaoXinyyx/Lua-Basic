---
--- Created by 杨以鑫. DateTime: 2021/3/27 12:24
--- 函数进阶 上
---     1. 函数参数的简化
---     2. 可变参数（变长参数）
---     3. 标准函数库
---

--- 参数的简化
function Func1(Name)
    print("Set your name: " .. Name);
end
Func1 "YixinYang";         -- 实参为一个字符串构造式时可省略括号

function SetNameArray(NameArray)
    for i, v in ipairs(NameArray) do
        print(v);
    end
end
SetNameArray {1,2,3,4,5};   -- 实参为一个table构造式时可省略括号

--- 可变参数
function MultiParaFun1(...)      -- "..." 为关键字，表示多个参数
    for i, v in pairs({...}) do
        print(v);
    end
end
MultiParaFun1("章北海", "罗辑", "程心");

-- 使用局部table变量arg代替{...}表达式，#arg返回参数个数
function MultiParaFun2(...)      -- "..." 为关键字，表示多个参数
    print("输入参数个数：" .. #arg);
    for i, v in ipairs(arg) do
        print(i, v);
    end
end
MultiParaFun2("章北海", "罗辑", "程心");

