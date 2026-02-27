dotfiles
===

mac / Windows / WSL で使う設定ファイルを管理するリポジトリです。

## 方針

- ルートにある dotfiles は環境依存しない共通設定として管理する。

## 構成

### ルート（共通）

- `.gitconfig`: Git の基本設定と alias
- `.tmux.conf`: tmux のキーバインドや表示設定
- `.zshrc`: zsh の履歴、プロンプト、alias 設定

### windows/

- `windows/winget.json`: Windows 環境のパッケージ一覧（`winget export` の結果）
- `windows/PowerToys/Keyboard Manager/default.json`: PowerToys Keyboard Manager のキーリマップ設定

## 使い方

### 共通（mac / WSL）

この手順は `dotfiles` リポジトリのルートディレクトリで実行してください。  
別ディレクトリで実行すると、意図しない場所をリンクしてしまう可能性があります。

```bash
ln -sf "$PWD/.gitconfig" ~/.gitconfig
ln -sf "$PWD/.tmux.conf" ~/.tmux.conf
ln -sf "$PWD/.zshrc" ~/.zshrc
```

### Windows のみ

```powershell
winget import -i .\windows\winget.json
```

PowerToys の Keyboard Manager は `windows/PowerToys/Keyboard Manager/default.json` を元に手動で設定を合わせる想定です。
