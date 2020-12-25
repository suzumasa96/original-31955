# テーブル設計
## users テーブル

| Column            | Type       | Options                   |
| ----------------- | ---------- | --------------------------|
| name              | string     |  null: false, unique:true |
| first_name_kana   | string     |                           |
| last_name_kana    | string     |                           |
| age               | integer    |                           |
| email             | string     |  null: false, unique:true |
| encrypted_password| string     |  null:false               |

### Association

- has_many :food-racks
## food-racks テーブル

| Column          | Type       | Options                        |
| --------------- | -----------| -------------------------------|
| food_name       | string     |                                |
| picture         | string     |                                |
| category_id     | integer    |                                |
| month_id        | integer    |                                |
| day_id          | integer    |                                |
| memo            | text       |                                |
| user            | references | null: false, foreign_key: true |
### Association

- belongs_to :user

## アプリケーション名：
### FOODS REMIND
## アプリケーション概要：
### 食材管理アプリ（長期保持食材対象）
## URL：
### https://original-31955.herokuapp.com/
## テスト用アカウント：
### email:test@sample.com / pass:test1234  Basic認証： ID:admin/Pass:8888
## 利用方法：
### メイン画面右下「食材の追加」アイコンをクリックし、管理したい食材情報を記載後、「食材の登録」をクリックして完了です。
## 目指した課題解決：
### 食材の調達をする男女向けに食材の重複購入を防止する事を念頭に開発しました。
## 洗い出した要件：
### ユーザー情報登録機能、食材登録機能(写真、保存場所、賞味期限・消費期限)、 登録情報詳細機能(他食材ページ遷移機能)、 登録情報編集機能、 削除機能
## 実装した機能についてのGIFと説明：
### 
## 実装予定の機能：
### Google認証、カテゴリ別のページ分化、期限に近づいた食材を知らせるアラーム機能、保存場所追加機能
## データベース設計：
### 
## ローカルでの動作方法：
### git cloneからローカル動作までに必要な環境とコマンド: ruby 2.6.5p114, Rails 6.0.3.4, yarn 1.22.10, Bundler version 2.1.4