## FOODS REMIND
長期保持する食材を管理対象とした食材管理アプリケーション
![Image from Gyazo](https://i.gyazo.com/8ad61707219a258330f1bfec8862d2f9.jpg)(https://gyazo.com/8ad61707219a258330f1bfec8862d2f9)
## アプリケーション概要
### 「あっ　また買っちゃった...」　を防止します。
　
## App URL
### https://original-31955.herokuapp.com/
## テスト用アカウント
### email:test@sample.com / pass:test1234  Basic認証： ID:admin/Pass:8888
## 利用方法
 1. メイン画面内の新規登録画面から新規登録・ログイン  
 2. ログイン後のメイン画面右下「食材の追加」アイコンをクリック  
 3. 管理したい食材情報を入力後、「食材の登録」をクリックして登録完了  
## 目指した課題解決
 食材の調達をする老若男女向けに食材の重複購入を防止する事を目的に開発しました。
## 洗い出した要件：
 ・ユーザー情報登録機能  
 ・食材登録機能(写真、保存場所、賞味期限・消費期限)  
 ・登録情報詳細機能(他の食材ページへの遷移機能)  
 ・登録情報編集機能  
 ・削除機能  
## 実装予定の機能
 ・カテゴリ別のページ分化機能  
 ・期限に近づいた食材を知らせるアラーム機能  
 ・ユーザーが保存場所を任意で追加できる機能  

## ローカルでの動作方法
% git clone https://github.com/suzumasa96/original-31955.git  
% cd original-31955  
% bundle install  
% rails db:create  
% rails db:migrate  
% rails s  
  http://localhost:3000

## git cloneからローカル動作までに必要な環境とコマンド
VScode  
ruby 2.6.5  
Rails 6.0.3.4  
yarn 1.22.10  
Bundler version 2.1.4  
gem 3.0.3  
heroku 7.47.6  

# DB設計
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