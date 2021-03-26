--- Created by 杨以鑫. DateTime: 2021/3/25 19:12
--- Lua中三大运算符：算术运算符，关系运算符，逻辑运算符

-- 算术运算符 + - * / % ^ (没有自增与自减运算符)
-- 关系运算符 < <= > >= == ~=
-- nil 只与其自身相等，对于table, function, userdata, lua做引用比较(仅当引用同一对象时相等)

num1 = 10;
num2 = 3;
ret = num1 ^ num2;
print(ret);             -- out: 1000

-- 逻辑运算符 and or not
-- 所有逻辑操作将 false、nil 视为假，其他为真
-- 短路规则
print(not("你好"));      -- out: false
print(10 and 20);        -- out: 20
print(nil and 80);       -- out: nil

-- 多重赋值，值过多则被舍弃，变量过多则被赋值为nil
num1, num2, num3 = 1, 2, 3, 4;
print(num1, num2, num3);

-- 全局与局部变量
-- 变量默认为全局的，局部变量用local修饰
-- 语句块(if, for等)与函数中，定义的变量也为全局变量
-- 可以直接用 do ... end 直接定义语句块
num1 = nil;             -- num1 占用的内存资源被释放
do
    local num1 = 3;
    print(num1);        -- out: 3
end
print(num1);            -- out: nil