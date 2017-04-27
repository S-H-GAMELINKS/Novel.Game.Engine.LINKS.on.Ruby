
#ゲーム終了処理
def game_exit

	#エスケープキーでゲーム終了
	if Input.key_push?(K_ESCAPE) then

		#セーブデータ用スクリーンショットの削除
		if File.exist?("DATA/SAVE/savedata.png") then
			File.delete("DATA/SAVE/savedata.png")
		end

		exit
	end
end