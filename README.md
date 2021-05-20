# PickPopular

## 環境構築

### PlantUMLの導入

 * 事前に `code` コマンドを実行できるようにしてから下記を実行する。(`code`の導入はvscodeのコマンドパレットで`shell`と打つと出る。)
 * `code --install-extension jebbs.plantuml`
 * vscodeの設定で `Plantuml: Render` を `PlantUMLServer` にする。
 * vscodeの設定で `Plantuml: Server` を `http://localhost:8080` にする。
 
### PlantUMLのDocker上で実行

 * `docker run -d -p 8080:8080 plantuml/plantuml-server:jetty`
