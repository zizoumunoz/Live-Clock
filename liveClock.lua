function main()
    while true do
        term.clear()
        term.setCursorPos(1,1)
        displayTime()
        sleep(.2)
    end
end

function displayTime()
    tempTime = os.time()
    decimalTime = math.floor(tempTime*100)/100
    theMinutes = math.floor(decimalTime % 1 * 60)
    theMinutesStr = ""..theMinutes
    
    if #theMinutesStr==1 then
        theMinutesStr = "0"..theMinutesStr
    end
    
    theHour = math.floor(decimalTime)
    theTime = theHour..":"..theMinutesStr
    theDay = os.day()
    print("The current time is "..theTime.." of day "..theDay)
end
pirated = true
function checkDrive()

    --LEFT
    if disk.isPresent("left") then
        if disk.getLabel("left") == "Live C|ock" then
            pirated = false
        end
            
    --RIGHT
    elseif disk.isPresent("right") then
        if disk.getLabel("right") == "Live C|ock" then
            pirated = false
        end
                
    --TOP
    elseif disk.isPresent("top") then
        if disk.getLabel("top") == "Live C|ock" then
            pirated = false
        end
    --BOTTOM
    elseif disk.isPresent("bottom") then
        if disk.getLabel("bottom") == "Live C|ock" then
            pirated = false
        end
    end
end

function displayPirated()
    term.clear()
    term.setCursorPos(1,1)
    print("Pirated Copy. Buy official at Sapitos Inc.")    
end



checkDrive()

if pirated == false then
    main()
else
    displayPirated()
end
