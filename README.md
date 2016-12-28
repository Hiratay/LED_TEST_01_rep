# LED_TEST_01_rep
これはLEDを光らせるためのリポジトリです。PIN25にLEDを接続してください。
コマンド「make」を入力するとMakefileによりmyled.cが実行されディレクトリ内にデバイスファイルmyled.koが作成されますので/sys/下にinsmodしてください。
この作業が完了しますとsudo sh -c "echo '1' >> /dev/myled0"によりLEDが点灯します。なお、myled0に'0'を入力することでLEDを消灯させることができます。
