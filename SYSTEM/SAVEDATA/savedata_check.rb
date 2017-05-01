# coding: shift_jis
#ノベルゲームエンジン「LINKS」 on Ruby
#セーブデータ有無チェック処理ソース

#セーブデータ1の有無
def savedata1_check

	if File.exist?("DATA/SAVE/savedata1.png") then
		savedata_exist = 1
	else
		savedata_exist = 0
	end

	return savedata_exist
end

#セーブデータ2の有無
def savedata2_check

	if File.exist?("DATA/SAVE/savedata2.png") then
		savedata_exist = 1
	else
		savedata_exist = 0
	end

	return savedata_exist
end

#セーブデータ3の有無
def savedata3_check

	if File.exist?("DATA/SAVE/savedata3.png") then
		savedata_exist = 1
	else
		savedata_exist = 0
	end

	return savedata_exist
end
