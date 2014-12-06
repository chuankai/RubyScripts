require 'win32ole'

count = ARGV[0]
player = WIN32OLE.new 'WMPlayer.OCX'
1.upto(count) do |i|
	puts	
	puts "***** Test #{i}/#{count} *****"
	`pwrtest /sleep /c:1 /p:15 /d:0 /s:4`
	sleep 10
	puts 'Resume from sleep state'
	player.OpenPlayer 'xxx.mp3'
	player.Controls.currentPosition = 30
	sleep 10
	playr.close
	sleep 3
	puts "******************************"
end

