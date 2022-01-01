local Sound = require('opus.sound')

local os = _G.os

local tunes = {
	{ sound = 'music_disc.11',      length = '1:11' },
	{ sound = 'music_disc.13',      length = '2:58' },
	{ sound = 'music_disc.blocks',  length = '5:45' },
	{ sound = 'music_disc.cat',     length = '3:05' },
	{ sound = 'music_disc.chirp',   length = '3:05' },
	{ sound = 'music_disc.far',     length = '2:54' },
	{ sound = 'music_disc.mall',    length = '3:17' },
	{ sound = 'music_disc.mellohi', length = '1:36' },
	{ sound = 'music_disc.stal',    length = '2:30' },
	{ sound = 'music_disc.strad',   length = '3:08' },
	{ sound = 'music_disc.wait',    length = '3:58' },
	{ sound = 'music_disc.ward',    length = '4:11' },
    { sound = 'music_disc.pigstep',    length = '2:28' },
}

while true do
	local song = tunes[math.random(1, #tunes)]
	Sound.play(song.sound)
	local min, sec = song.length:match('(%d+):(%d+)')
	local length = tonumber(min)*60 + tonumber(sec)
	print(string.format('Playing %s (%s)', song.sound, song.length))
	os.sleep(length + 3)
end
