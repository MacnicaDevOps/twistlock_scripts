# Twistlock_Consoleコンテナ版インストーラー

Twistlock Console のインストールを実行するスクリプトです

## Usage
config.txtを以下の通り設定します。

1. path : ソフトウェアのダウンロードURLを指定します。
2. file : ソフトウェアのダウンロードURLの末尾のファイル名を指定します。
3. token : Twistlockインストールのアクセストークンを指定します。
4. platform : 本スクリプトを実行するプラットフォームを指定します。linuxまたはosxを指定できます。

## 条件
1. 本スクリプトを実行する環境で、twistlock consoleをインストールする対象のK8sクラスタにkubectlコマンドが実行できる状態である必要があります。
2. インストール後、”twistlock_console_install_result.log”が出力されます。本ファイルは”kubectl apply -f twistloc_console.yaml”の実行結果の出力です。インストールが上手く行かなかった場合などにご参照ください。

