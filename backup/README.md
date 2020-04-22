# Twistlock Backupスクリプト

Twistlock のバックアップを実行するスクリプトです。  
設定単位でAPIを利用してJSON形式のデータをファイルに出力をするものです。

## Usage
config.txtを以下の通り設定します。

1. cred : ユーザー名とパスワードを”:”区切りで指定します。 例: ”admin:Passw0rd” 
2. source : backup元のTwistlock ConsoleのURLを指定します。 例: ”https://twistlock.macnica.net:8083”
3. dir : 作業ディレクトリ名(任意)をしています。

設定後、backup.shを実行すると、全てのバックアップが実行されます。  
※ スクリプトは項目単位で分割されているので、個別に利用することも可能です。

## 条件
1. ポリシー設定以外のバックアップ(ログや認証、スキャン結果やインシデント検知を含む各種レポート)は取得しません。
2. 本スクリプトはバージョン20.04にて作成しています。これ以外のバージョンでは動作が異なる可能性がございます。

## バックアップ対象

|大メニュー|中メニュー|小メニュー|対象|スクリプト名|備考|
|:---|:---|:---|---|:---|:---|
|Radar||||||
|Defend|Firewall|CNNF|v|policies_firewall_network.sh||
|Defend|Firewall|CNAF|v|policies_firewall_app.sh||
|Defend|Runtime|Container|v|||
|Defend|Runtime|Host|v|||
|Defend|Runtime|Serverless|v|||
|Defend|Runtime|App Embedded|v|||
|Defend|Runtime|Custom rules|v|||
|Defend|Vulnerabilities|Images|v|||
|Defend|Vulnerabilities|Hosts|v|||
|Defend|Vulnerabilities|Registry|v|||
|Defend|Vulnerabilities|Functions|v|||
|Defend|Vulnerabilities|PCF Blobs|v|||
|Defend|Compliance|Containers/Images|v|||
|Defend|Compliance|Hosts|v|||
|Defend|Compliance|Functions|v|||
|Defend|Compliance|Trusted Images|v|||
|Defend|Compliance|Custom rules|v|||
|Defend|Compliance|Cloud Platform|v|||
|Defend|Access|Docker|v|||
|Defend|Access|Secrets|v|||
|Defend|Access|Kubernetes|v|||
|Monitor|Events|||||
|Monitor|Runtime|Incidents||||
|Monitor|Runtime|Container Models||||
|Monitor|Runtime|Host Models||||
|Monitor|Vulnerabilities|Explorer||||
|Monitor|Vulnerabilities|Images||||
|Monitor|Vulnerabilities|Hosts||||
|Monitor|Vulnerabilities|Registry||||
|Monitor|Vulnerabilities|Functions||||
|Monitor|Vulnerabilities|Jenkins|||(20.04ではCIに統合)|
|Monitor|Vulnerabilities|Twsitcli|||(20.04ではCIに統合)|
|Monitor|Vulnerabilities|CVE Viewer||||
|Monitor|Vulnerabilities|PCF Blobs||||
|Monitor|Compliance|Explorer||||
|Monitor|Compliance|Containers||||
|Monitor|Compliance|Images||||
|Monitor|Compliance|Hosts||||
|Monitor|Compliance|Registry||||
|Monitor|Compliance|Functions||||
|Monitor|Compliance|Jenkins|||(20.04ではCIに統合)|
|Monitor|Compliance|Twsitcli|||(20.04ではCIに統合)|
|Monitor|Compliance|Cloud Discovery||||
|Monitor|Compliance|Cloud Compliance||||
|Monitor|Compliance|Trusted Images||||

