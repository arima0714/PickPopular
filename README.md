# PickPopular

## 概要

[Konachan.com](https://konachan.com)という画像投稿掲示板のなかで[日毎のランキング](https://konachan.com/post/popular_recent?period=1d)1位の画像の詳細リンクを毎朝送信するLINEbotです。

登録は下記のQRコードもしくは「友だち追加」ボタンから

![](./Graphics/M.png)

<a href="https://lin.ee/z2HmKVm"><img src="https://scdn.line-apps.com/n/line_add_friends/btn/ja.png" alt="友だち追加" height="36" border="0"></a>

## 構成

構成は下記の画像のとおり

![](./Graphics/diagram.png)

## 環境構築

### PlantUMLの導入

 * 事前に `code` コマンドを実行できるようにしてから下記を実行する。(`code`の導入はvscodeのコマンドパレットで`shell`と打つと出る。)
 * `code --install-extension jebbs.plantuml`
 * vscodeの設定で `Plantuml: Render` を `PlantUMLServer` にする。
 * vscodeの設定で `Plantuml: Server` を `http://localhost:8080` にする。
 
### PlantUMLのDocker上で実行

 * `docker run -d -p 8080:8080 plantuml/plantuml-server:jetty`
