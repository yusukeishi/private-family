# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
|email               | string | null: false |
|password            | string | null: false |
|nickname            | string | null: false |
|profile             | text   |             |

### Association

- has_many :photos
- has_many :comments


## photos テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
|title               | string     | null: false |
|description         | text       | null: false |
|year                | integer    | null: false |
|month               | integer    | null: false |
|user                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments


## comments テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
|content             | text       | null: false |
|user                | references | null: false, foreign_key: true |
|photo               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :photo
