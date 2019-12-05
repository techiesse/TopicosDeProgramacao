require "switchcase"

function soma(x, y) return x + y end

function main()
    local oper = '&'
    local x = 2
    local y = 3
    local ret = switch(oper,
        case('+', soma, x, y),
        case('-', function() return x - y end),
        case('*', function() return x * y end),
        case('/', function() return x / y end),
        default(print, "A operacao '" .. oper .. "' eh invalida")
    )

    print(ret)
end

main()

--[[
oper = '+'

x = 2
y = 3

handlers =
{
    ['+'] = function() return x + y end,
    ['-'] = function() return x - y end,
    ['*'] = function() return x * y end,
    ['/'] = function() return x / y end,
}

print(handlers[oper](2))
]]


--[[

oper = '&'

x = 2
y = 3


if oper == '+' then
    print(x + y)
elseif oper == '-' then
    print(x - y)
elseif oper == '*' then
    print(x * y)
elseif oper == '/' then
    print(x / y)
else
    print("A operacao '" .. oper .. "' nao eh invalida")
end
]]
