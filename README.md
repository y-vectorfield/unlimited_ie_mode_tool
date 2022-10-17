# Unlimited IE Mode Tool
Microsof Edgeで`IEモードは90日限定`の制限無しで利用するツール

## 使い方

### 前準備
実行する環境がPower Shellの実行を許可していない場合が有ります．以下のコマンドで確認します．

```powershell
Get-ExecutionPolicy -list
```

もし，`Process Scope`の`Policy`が`Undefined`の場合は`管理者権限`でPower Shellを起動し，以下のコマンドを実行します．Policy変更の確認が表示されます．`y`または
`a`を入力します．この変更操作はPower Shellウィンドウを閉じるとリセットされます．よって一時的な変更です．

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```

設定後，以下のコマンドで確認し，`Process`が`Bypass`のポリシーになっているか確認します．

```powershell
Get-ExecutionPolicy -list
```

### ツールのダウンロード
[ツールのリポジトリ](https://github.com/y-vectorfield/unlimited_ie_mode_tool)のページで`Code`をクリックし，
開いたメニューの再下段の`Download ZIP`をクリックし，ツールをZip形式でダウンロードします．ダウンロードが完了したら解凍します．

### IEモードで起動したいサイトの追加
ZIPファイルの解凍が完了したら，解凍によって作成された`unlimited_ie_mode_tool-main/unlimited_ie_mode_tool-main`ディレクトリ内の
`ie_mode_list.xml`をテキストエディタ(メモ帳等)で開きます．記載例を参考にIEモードで起動したいサイトのURLを追加して保存します．

```xml
<site url="http://example.com">
    <compat-mode>Default</compat-mode>
    <open-in allow-redirect="true">IE11</open-in>
</site>
```

### ツールの実行
Power Shellを管理者権限で起動し，ツールのディレクトリ(デフォルトでは`~/Downloads/unlimited_ie_mode_tool-main/unlimited_ie_mode_tool-main`)に移動します．移動が完了したら以下を実行します．

```powershell
./unlimited_ie_mode_tool.ps1
```

以下のメッセージが表示されたら．Enterキーを押します．

```powershell
この操作は正しく終了しました．
この操作は正しく終了しました．
続行するには、Enterキーを押してください...:
```

### Microsoft Edgeで確認
Microsoft Edgeを起動して，アドレスバーに`edge://compat/enterprise`と入力し，エンターキーを押します．IEモードで起動するサイトの一覧が表示され，
先程xmlファイルに入力したURLのサイトが一覧に登録されていれば成功です．
