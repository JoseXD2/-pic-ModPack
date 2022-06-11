currentDifficulty =" " ;

function onCreate()
    makeLuaText("Optimizado por Nickobelit",currentDifficulty, 0, 10, 40);
    setTextAlignment(" ", 'left');
    setTextSize(" ", 18);
    setTextBorder(" ", 1, 'FF0000');
    addLuaText( " ");
end

function onCreatePost()
    setProperty('timeBar.y', getProperty('timeBar.y')  -10);
    setProperty('timeTxt.y', getProperty('timeTxt.y')  -10);
end

function onUpdate(elapsed)
    currentDifficulty = getProperty(" ");
end