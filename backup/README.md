# Twistlock Backupスクリプト

Twistlock のバックアップを実行するスクリプトです。  
設定単位でAPIを利用してJSON形式のデータをファイルに出力をするものです。

## Usage
config.txtを以下の通り設定します。

1. cred : ユーザー名とパスワードを”:”区切りで指定します。 例: ”admin:Passw0rd” 
2. source : backup元のTwistlock ConsoleのURLを指定します。 例: ”https://twistlock.macnica.net:8083”
3. dir : 作業ディレクトリ名(任意)を指定します。

設定後、backup.shを実行すると、全てのバックアップが実行されます。  
※ スクリプトは項目単位で分割されているので、個別に利用することも可能です。

## 条件
1. ポリシー設定以外のバックアップ(ログや認証、スキャン結果やインシデント検知を含む各種レポート)は取得しません。
2. 本スクリプトはバージョン19.11と20.04でテストしています。これ以外のバージョンでは動作が異なる可能性がございます。

## バックアップ対象

|大メニュー|中メニュー|小メニュー|対象|出力ファイル名|備考|
|:---|:---|:---|---|:---|:---|
|Radar||||||
|Defend|Firewall|CNNF|v|policies_firewall_app_container.json<br>policies_firewall_app_host.json<br>policies_firewall_app_app-embedded.json<br>/policies_firewall_app_serverless.json||
|Defend|Firewall|CNAF|v|policies_firewall_app_container.json<br>policies_firewall_app_host.json<br>policies_firewall_app_app-embedded.json<br>/policies_firewall_app_serverless.json||
|Defend|Runtime|Container|v|policies_runtime.sh||
|Defend|Runtime|Host|v|policies_runtime.sh||
|Defend|Runtime|Serverless|v|policies_runtime.sh||
|Defend|Runtime|App Embedded|v|policies_runtime.sh||
|Defend|Runtime|Custom rules|v|policies_runtime.sh||
|Defend|Vulnerabilities|Images|v|policies_vulnerability.sh||
|Defend|Vulnerabilities|Hosts|v|policies_vulnerability.sh||
|Defend|Vulnerabilities|Registry|v|policies_vulnerability.sh||
|Defend|Vulnerabilities|Functions|v|policies_vulnerability.sh||
|Defend|Vulnerabilities|PCF Blobstore|v|||
|Defend|Compliance|Containers and Images|v|||
|Defend|Compliance|Hosts|v|policies_compliance.sh||
|Defend|Compliance|Functions|v|policies_compliance.sh||
|Defend|Compliance|Trusted Images|v|policies_compliance.sh||
|Defend|Compliance|Custom|v|policies_compliance.sh||
|Defend|Compliance|Cloud Platforms|v|policies_compliance.sh||
|Defend|Access|Docker|v|||
|Defend|Access|Secrets|v|||
|Defend|Access|Kubernetes|v|||
|Defend|Access|Admission|||(20.04より追加)|
|Monitor|Events|||||
|Monitor|Runtime|Incidents||||
|Monitor|Runtime|Container Models||||
|Monitor|Runtime|Host Models||||
|Monitor|Vulnerabilities|Explorer||||
|Monitor|Vulnerabilities|Images||||
|Monitor|Vulnerabilities|Hosts||||
|Monitor|Vulnerabilities|Registry|||(20.04ではImages配下に表示)|
|Monitor|Vulnerabilities|Functions||||
|Monitor|Vulnerabilities|Jenkins|||(20.04ではImages配下のCIに統合)|
|Monitor|Vulnerabilities|Twsitcli|||(20.04ではImages配下のCIに統合)|
|Monitor|Vulnerabilities|CVE Viewer||||
|Monitor|Vulnerabilities|PCF Blobs||||
|Monitor|Compliance|Explorer||||
|Monitor|Compliance|Containers||||
|Monitor|Compliance|Images||||
|Monitor|Compliance|Hosts||||
|Monitor|Compliance|Registry|||(20.04ではImages配下に表示)|
|Monitor|Compliance|Functions||||
|Monitor|Compliance|Jenkins|||(20.04ではImages配下のCIに統合)|
|Monitor|Compliance|Twsitcli|||(20.04ではImages配下のCIに統合)|
|Monitor|Compliance|Trusted Images||||
|Monitor|Compliance|Cloud Discovery||||
|Monitor|Compliance|Cloud Compliance||||
|Manage|View Logs|History||||
|Manage|View Logs|Constole||||
|Manage|Projects||||オンプレ版のみ|
|Manage|Defenders|Manage||||
|Manage|Defenders|Name||||
|Manage|Defenders|Deploy||||
|Manage|Alerts|Manage|v|||
|Manage|Alerts|Logging|v||(19.11ではSystem配下にある)|
|Manage|Alerts|Alert Labels|v|||
|Manage|Collections|Collections|v||(20.04ではメニューがCollections and Tadsとなっている)|
|Manage|Collections|Tags|||(20.04より追加)|
|Manage|Authentication|Users||||
|Manage|Authentication|Groups||||
|Manage|Authentication|Ststem Certificates||||
|Manage|Authentication|User Certificates||||
|Manage|Authentication|Secrets|v|||
|Manage|Authentication|Logon||||
|Manage|Authentication|LDAP||||
|Manage|Authentication|SAML||||
|Manage|Authentication|Credential Store||||
|Manage|Authentication|LDAP||||
|Manage|System|Intelligence||||
|Manage|System|License||||
|Manage|System|Scan|v|||
|Manage|System|SCAP|v|||
|Manage|System|Forensics|v|||
|Manage|System|Proxy||||
|Manage|System|Custome Feeds|v|||
|Manage|System|Downloads||||
|Manage|System|Backup & Restore||||


