# テーブル設計
## users テーブル

| Column            | Type       | Options                   |
| ----------------- | ---------- | --------------------------|
| name              | string     |  null: false, unique:true |
| first_name_kana   | string     |                           |
| last_name_kana    | string     |                           |
| age               | integer    |  null: false              |
| gender            | integer    |  null: false              |
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