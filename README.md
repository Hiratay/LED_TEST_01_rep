# LED_TEST_01_rep
これはLEDを光らせるためのリポジトリです。PIN25にLEDを接続してください。
コマンド[make]を入力するとメイクファイルMakefileによりmyled.cが実行されディレクトリ内にデバイスファイル(デバイスドライバ)myled.koが作成されますので/sys/下にinsmodでインストールしてください。
この作業が完了しますと
sudo sh -c "echo '1' >> /dev/myled0"によりデバイスファイルmyled0に数字が格納され、それをmyled.koが認識しGPIOの出力を変更することでLEDが点灯します。なお、myled0に'0'を入力することでLEDを消灯させることができます。

#test1.sh
これはデバイスドライバ LED_TEST_01_rep を用いて簡単なコマンドを入力することでLEDを制御できるシェルスクリプトです./test1.shと入力しシェルスクリプトを実行してください。Please input code:と表示されますのでLEDを点灯させたい場合は[on],消灯したい場合には[off]と入力しENTERを押してください。入力されたコマンドに応じてLEDを制御することができます。また、何も入力せずにENTERを押されますとno inputと表示され終了します。同じく指定されているコマンド以外の入力をされた場合にもERRA:[入力された文字]と表示され終了します。
