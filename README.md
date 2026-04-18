# PixSearch Flutter

Flutterで開発したシンプルな画像検索アプリです。  
Pexels API を利用して、キーワードから画像を検索し、一覧表示および詳細表示ができます。

---

## 📱 アプリ概要

- キーワードで画像検索
- 検索結果をグリッド表示
- 画像タップで詳細画面へ遷移
- 詳細画面で高解像度画像を表示

---

## 🛠 使用技術

- Flutter
- Dart
- Dio（HTTP通信）
- go_router（画面遷移）
- Pexels API

---

## 🧩 主な機能

- 画像検索（Pexels API）
- グリッド形式での一覧表示
- 詳細画面表示
- 高解像度画像の表示
- 基本的なエラーハンドリング

---

## 🏗 アーキテクチャ

本プロジェクトはシンプルな構成で、機能ごとにディレクトリを分けています。
```
lib/
├── app/
├── features/
│   └── photo_search/
│       ├── data/
│       ├── domain/
│       └── presentation/
```
---

## 🚀 セットアップ方法

### 1. リポジトリをクローン

```bash

git clone https://github.com/DingCheng19/PixSearch-Flutter.git
```
2. パッケージ取得
```
flutter pub get
```
3. APIキー設定

Pexels APIキーを環境変数として設定してください。
```
--dart-define=PEXELS_API_KEY=your_api_key
```

## 📸 デモ

検索から詳細表示までの一連の流れ

<img src="demo.gif" width="300">

🔮 今後の改善予定

* 画像キャッシュの導入（cached_network_image）
* UI/UXの改善
* エラーハンドリングの強化
* 状態管理（Riverpod）の導入

## 🙋‍♂️ 補足

本アプリはFlutterの学習およびポートフォリオとして作成しています。
