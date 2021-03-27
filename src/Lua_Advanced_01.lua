---
--- Created by 杨以鑫. DateTime: 2021/3/27 12:24
--- 表的嵌套，函数默认参数，模块与包
---

local class = {Class = { Id = 1, Name = "Class A" }, Grade = 1};
local stu = {Name = "Lilei", ClassInfo = class};      -- 表的嵌套

-- 遍历表的内容并输出
function table.ToString(tbl, prefix)
    prefix = prefix or "";    -- 默认参数
    for k, v in pairs(tbl) do
        if type(v) == "table" then
            print(prefix .. k .. ":\n" .. prefix .. "{");
            table.ToString(v, prefix .. "   ");
            print(prefix .. "}");
        else
            print(prefix .. k .. ": " .. v);
        end
    end
end

-- 模块与包
local module =  {};

module.constant = "常量";

function module.func1()
    io.write("这是一个公有函数");
end

local function func2()
    print("这是一个私有函数");
end

function module.func3()
    func2();
end

return module;
