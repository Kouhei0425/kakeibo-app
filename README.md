# kakeibo-app DB設計

## userテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :things

## thingテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user

