Total=0
local operation=""
local number=0
Calculate={
    ["plus"]=function (number1, number2) Total=number1+number2 end,
    ["minus"]=function (number1, number2) Total=number1-number2 end,
    ["times"]=function (number1, number2) Total=number1*number2 end,
    ["divide"]=function (number1, number2) Total=number1/number2 end,
    ["power"]=function (number1, number2) Total=number1^number2 end,
    ["modulo"]=function (number1, number2) Total=number1%number2 end
}


function Valid_operation(entered_operation)
    local valid=false

    for key,value in pairs(Calculate) do
        if entered_operation==key then
            valid=true
        end
    end

    if entered_operation=="exit" or entered_operation=="clear" then
        valid=true
    end

    return valid
end

function Valid_number(entered_number)
    local valid=false
    if type(tonumber(entered_number))=="number" then
        valid=true
    end
    return valid
end

function Prompt_number(count, operation) --also does input validation
    io.write("enter number "..count..": ")
    number=io.read()

    if Valid_number(number)~=true then
        while Valid_number(number)~=true do
            print("error, invalid number. please try again")
            io.write("enter number "..count..": ")
            number=io.read()
        end
    end
    
    Calculate[operation](Total, number)
end

function Prompt_operation()
    io.write "enter operation: "
    operation=io.read()
end

Prompt_number(1, "plus")
local count=2

while operation~="exit" do
    Prompt_operation()
    
    if Valid_operation(operation)~=true then
        count=count-1
        print("error, invalid operation. please try again")
    elseif operation=="exit" then
        print("exited")
    elseif operation=="clear" then
        count=1
        Total=0
        print("all previous input cleared")
        Prompt_number(1, "plus")

    else
        Prompt_number(count, operation)
    end

    count=count+1
end

print("total: "..Total)