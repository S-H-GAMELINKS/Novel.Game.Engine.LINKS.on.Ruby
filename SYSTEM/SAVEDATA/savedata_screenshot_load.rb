# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#セーブデータ用スクリーンショット読込ソース

#セーブデータ用スクリーンショット1の読込
def savedata1_screenshot_load

	if File.exist?("DATA/SAVE/savedata1.png") then
		savedata1_screenshot = Image.load("DATA/SAVE/savedata1.png")
	else
		savedata1_screenshot = Image.new(640, 480, [0, 0, 0, 0])
	end

	return savedata1_screenshot
end

#セーブデータ用スクリーンショット2の読込
def savedata2_screenshot_load

	if File.exist?("DATA/SAVE/savedata2.png") then
		savedata2_screenshot = Image.load("DATA/SAVE/savedata2.png")
	else
		savedata2_screenshot = Image.new(640, 480, [0, 0, 0, 0])
	end

	return savedata2_screenshot
end

#セーブデータ用スクリーンショット3の読込
def savedata3_screenshot_load

	if File.exist?("DATA/SAVE/savedata3.png") then
		savedata3_screenshot = Image.load("DATA/SAVE/savedata3.png")
	else
		savedata3_screenshot = Image.new(640, 480, [0, 0, 0, 0])
	end

	return savedata3_screenshot
end
