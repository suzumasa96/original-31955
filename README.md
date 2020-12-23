# テーブル設計
## users テーブル

| Column            | Type       | Options                   |
| ----------------- | ---------- | --------------------------|
| name              | string     |  null: false, unique:true |
| first_name_kana   | string     |                           |
| last_name_kana    | string     |                           |
| age               | integer    |                           |
| gender            | integer    |                           |
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
| food_deadline   | integer    |                                |
| memo            | text       |                                |
| user            | references | null: false, foreign_key: true |
### Association

- belongs_to :user

アプリケーション名：FOODS REMIND
アプリケーション概要：食材管理アプリ（長期保持食材）
URL：https://original-31955.herokuapp.com/
テスト用アカウント：email: test@sample.com / pass: test1234
                 Basic認証：ID:admin/Pass:8888
利用方法：メイン画面右下「食材の追加」アイコンをクリックし、管理したい食材情報を記載後、「食材の登録」をクリックして完了です。
目指した課題解決： 食材の調達をする男女向けに食材の重複購入を防止する事を念頭に開発しました。
洗い出した要件：#食材登録機能 #登録情報詳細機能 #登録情報編集機能 #削除機能機能
実装した機能についてのGIFと説明：
実装予定の機能： カテゴリ別のページ分化、期限に近づいた食材を知らせるアラーム機能
データベース設計：
ローカルでの動作方法：	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。
                    この時、アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）。