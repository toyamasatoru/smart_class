# README

#テーブル設計

##users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :posts
- has_many :likes

##posts テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| post                  | text       | null: false                    |
| user                  | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :likes

##likes テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| user                  | text       | null: false                    |
| post                  | references | null: false, foreign_key: true |

### Association

  belongs_to :user
  belongs_to :post
