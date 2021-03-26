---
--- Created by 杨以鑫. DateTime: 2021/3/26 9:30
--- 函数：函数的定义，全局与局部(变量/函数)，函数的多返回数值特性，
---       函数作为参数进行赋值与调用，匿名函数
---

-- Lua 函数性质：
-- 无需定义返回类型，可返回任意类型和数量的数值
-- 无需定义参数类型
-- 可把函数赋值给变量，使变量获得相同功能

function fun1(num1, num2)
    return num1 + num2;
end
print(fun1(1, 2));

fun2 = fun1;    -- 可把函数赋值给变量

-- Lua 规定，变量默认都是全局变量
function fun3()             -- fun3 默认为全局的
    print("fun3 called");
    num1 = 10;              -- num1 是全局变量
    local num2 = 20;        -- num2 是局部变量
end
local function fun4()       -- 局部函数
    print("This is local function");
end

-- 函数的多返回数值特性
function GetNumber()
    return 10, 20, 30;
end
num1, num2, num3 = GetNumber();
print(num1, num2, num3);

-- 函数作为参数
function PrintInfo(result)
    print("Result = " .. result);
end
function AddNum(num1, num2, func)
    func(num1 + num2);
end
AddNum(1, 2, PrintInfo);

-- 匿名函数，定义时要把匿名函数赋值给变量
AnonFunc = function (num1, num2)
    print("Anonymous function called")
end
