function onCreate()

makeLuaText('watermark', songName .. "  ", 0, -1000, 10); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark', 31);
    addLuaText('watermark');
    setTextColor('watermark', 'C1A3FF')
    setTextFont('bannertext', 'ZillaSlabBold.ttf')
end

    function onBeatHit ()
        if curBeat == 1 then
            doTweenX('watermark', 'watermark', 10, 2)
        end

        if curBeat == 16 then
            doTweenX('watermark', 'watermark', 3300, 5.6)
        end
        if curBeat == 60 then
            removeLuaText('watermark', 2 == true)    
    end
end


--Working like banner left to right by LinkstormZ