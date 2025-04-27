# nono_list

## Description

- list.json: 全てのvideoId,publishedAt,titleのリスト
- videoids.txt: 全てのvideoId、1行ずつのリスト
- download_allvideos.sh: yt-dlpを使用し全動画,配信アーカイブをダウンロードするシェルスクリプト
- download_allchats.sh: yt-dlpを使用し全動画,配信アーカイブのチャット,コメントをダウンロードするシェルスクリプト
- download_allthumbnails.sh: wgetを使用し全動画,配信アーカイブのサムネイルをダウンロードするシェルスクリプト

## Usage of Scripts

### Requirements

- bash
- git
- yt-dlp
- ffmpeg
- wget
- 十分なストレージ容量

まず、このリポジトリをcloneします。WSLにて実行する場合、WSL内ではなくWindows上のディレクトリにて行うことをお勧めします。
```
git clone https://github.com/kenh0u/nono_list.git
```

### download_allvideos.sh

yt-dlpとffmpegをインストール (Ubuntuの場合のコマンド例)

```
sudo pip install yt-dlp
sudo apt install ffmpeg
```

メンバーシップ限定配信アーカイブもダウンロードしたい場合、極上プランに加入した上で
Chrome拡張機能[Get cookies.txt LOCALLY](https://chrome.google.com/webstore/detail/get-cookiestxt-locally/cclelndahbckbenkjhflpdbgdldlbecc)
などを使用してYouTubeのCookieを抜き取り、`youtube.com_cookies.txt`として配置してください。

スクリプトを実行します。

```
./download_allvideos.sh
```

ファイルは`video`ディレクトリ以下、ログは`download_allvideos.log`に保存されます。

### download_allchats.sh

スクリプトを実行します。

```
./download_allchats.sh
```

ファイルは`chat`ディレクトリ以下、ログは`download_allchats.log`に保存されます。

### download_allthumbnails.sh

スクリプトを実行します。

```
./download_allthumbnails.sh
```

ファイルは`thumbnail`ディレクトリ以下、ログは`download_allthumbnails.log`に保存されます。
