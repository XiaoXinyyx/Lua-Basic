---
--- Created by 杨以鑫. 定义表的字段与方法
---

-- 定义空表，相当于 OOP 编程中的类
Person = {}

-- 引入 this 变量，降低方法引用表字段的耦合性
local this = Person;

-- Person 字段
Person.Name = "XiaoMing";
Person.Gender = "male";
Person.Birth = "2000/1/1";

-- Person 方法
Person.Speak = function()  end      -- 第一种定义方式
function Person.ShowInfo()          -- 第二种定义方式
    -- 使用 this 指针，Person被销毁时函数仍然能使用
    print("ShowInfo", this.Name, this.Gender, this.Birth);
end
function Person:Show()              -- 第三种定义方式，配合self关键字使用(完善，常用)
    -- 使用 self 关键字引用表自身
    print("Show", self.Name, self.Gender, self.Birth);
end

-- 调用字段与方法
print(Person.Name);
Person.ShowInfo();

a = Person;     -- a 是 Person 的引用
Person = nil;   -- 销毁 Person 指针，表内数据未销毁
a.ShowInfo();

a:Show();       -- 更加完善与常用的方法调用方式
