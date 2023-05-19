# nono_list

[彩雲のの](https://www.youtube.com/channel/UCtKH7ZHAJ7TcTjyiLJRHhvg)の全動画,配信アーカイブのリストとダウンロードスクリプト

リストの抜けや不具合等を発見した場合、遠慮なく[Issues](https://github.com/kenh0u/nono_list/issues)にてご連絡ください。

## Description

- list.json: 全てのvideoId,publishedAt,titleのリスト
- videoids.txt: 全てのvideoId、1行ずつのリスト
- download_allvideos.sh: yt-dlpを使用し全動画,配信アーカイブをダウンロードするシェルスクリプト
- download_allthumbnails.sh: wgetを使用し全動画,配信アーカイブのサムネイルをダウンロードするシェルスクリプト

## Usage of Scripts

### Requirements

- bash
- wget
- yt-dlp
- ffmpeg
- wget

#### download_allvideos.sh

yt-dlpとffmpegをインストール (Ubuntuの場合のコマンド例)

```
sudo pip install yt-dlp
sudo apt install ffmpeg
```

メンバーシップ限定配信アーカイブもダウンロードしたい場合、
Chrome拡張機能[Get cookies.txt LOCALLY](https://chrome.google.com/webstore/detail/get-cookiestxt-locally/cclelndahbckbenkjhflpdbgdldlbecc)
などを使用してYouTubeのCookieを抜き取り、`youtube.com_cookies.txt`として配置してからスクリプトを実行します。

```
./download_allvideos.sh
```

実行時のログは`download_allthumbnails.sh`に保存されます。

#### download_allthumbnails.sh

スクリプトを実行します。

```
./download_allthumbnails.sh
```

実行時のログは`download_allthumbnails.log`に保存されます。
