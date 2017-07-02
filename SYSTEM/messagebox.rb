# encoding: shift_jis

#終了メッセージボックス
def exit_message(messagebox)

	#エスケープキーで終了
	if Input.key_push?(K_ESCAPE) then

		#「はい」を押すと終了
		if messagebox.Popup("ゲームを終了を終了しますか？", 10, "ノベルゲームエンジン「LINKS」 on Ruby", 4 + 32 ) == 6 then
			exit
		end
	end
end