# Windows に Docker Desktop をインストールする方法
Windows では Docker Engine を直接操作する必要はありません。\
Docker Desktop が内部で Docker Engine + WSL2 を管理します。
## 必須条件（ざっくり）
- Windows 10/11
- 仮想化（VT-x/AMD-V）が有効
- 可能なら WSL2 を使用（Docker Desktop が誘導します）
## 手順
1. Docker Desktop をインストール
   
   公式ドキュメント\
   [Windows に Docker Desktop をインストール](https://docs.docker.jp/desktop/install/windows-install.html)

   Zenn\
   [Windows 11にDocker Desktopを入れる手順（令和７年最新版）](https://zenn.dev/upgradetech/articles/8e8b82e9d5c494)
2. 初回起動して利用規約に同意
3. 設定で **WSL2 backend** を有効化（推奨）
4. PowerShell で確認:
