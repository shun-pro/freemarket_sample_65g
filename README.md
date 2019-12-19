## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|||
|password|||
|full-name|string|null: false|
|name-katakana|string|null: false|
|tell|string|null: false|
|thumbnail|string||
|self-introduction|text||
|adress_id|integer|null: false|
|birthday-year|integer|null: false|
|birthday-manth|integer|null: false|
|birthday-day|integer|null: false|

### Association
- has_many :userlikes
- belongs_to :birthday-year
- belongs_to :birthday-month
- belongs_to :birthday-day
- has_one :user-address
- has_many :product-messages
- has_many :product-likes
- has_many :orders
- has_many :product-comments


## productsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|product-explain|text|null: false|
|price|integer|null: false|
|category_id|integer|null: false|
|brand_id|integer||
|send-day_id|integer|null: false|
|prefecture_id|integer|null: false|
|saler_id|integer||
|transactions-status_id|integer|null: false|
|condition_id|integer|null: false|
|fee_id|integer|null: false|
|size_id|integer||

### Association
- has_many :product-messages
- has_many :product-likes
- has_one :order
- has_many :product-comments
- belongs_to :prefecture
- belongs_to :product-category
- belongs_to :product-brand
- has_many :product-images
- belongs_to :product-send-day
- belongs_to :product-fee
- belongs_to :product-condition
- belongs_to :product-transaction-status
- belongs_to :product-size


## product-messagesテーブル
|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|user_id|integer|null: false|
|product_id|integer|null: false|

### Association
- belongs_to :user
- belongs_to :product



## product-likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|product_id|integer|null: false|

### Association
- belongs_to :user
- belongs_to :product


## ordersテーブル
|Column|Type|Options|
|------|----|-------|
|buyer_id|integer|null: false|
|product_id|integer|null: false|


### Association
- belongs_to :user
- belongs_to :product



## product-commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|integer|null: false|
|product_id|integer|null: false|


### Association
- belongs_to :user
- belongs_to :product


## prefecturesテーブル
|Column|Type|Options|
|------|----|-------|
|prefecture-name|string|null: false|


### Association
- has_many :user-addresses
- has_many :products


## userlikesテーブル
|Column|Type|Options|
|------|----|-------|
|rank_id|integer|null: false|
|user-likes-comment|text||
|receive-user_id|integer|null: false|
|user_id|integer|null: false|


### Association
- belongs_to :rank
- belongs_to :user



## ranksテーブル
|Column|Type|Options|
|------|----|-------|
|rank|string|null: false|

### Association
- has_many :userlikes




## birthday-yearsテーブル
|Column|Type|Options|
|------|----|-------|
|birthday-year|integer|null: false|

### Association
- has_many :users


## birthday-manthsテーブル
|Column|Type|Options|
|------|----|-------|
|birthday-manth|integer|null: false|

### Association
- has_many :users



## birthday-daysテーブル
|Column|Type|Options|
|------|----|-------|
|birthday-day|integer|null: false|

### Association
- has_many :users



## user-addressesテーブル
|Column|Type|Options|
|------|----|-------|
|postalcode|string|null: false|
|city|string|null: false|
|little-adress|string|null: false|
|building|string|null: false|
|prefecture_id|integer|null: false|

### Association
- belongs_to :user
- belongs_to :prefecture


## product-imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|product_id|integer|null: false|

### Association
- belongs_to :product


## product-send-daysテーブル
|Column|Type|Options|
|------|----|-------|
|day|integer|null: false|

### Association
- has_many :products



## product-categorysテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|parent-id|integer||

### Association
- has_many :products



## product-brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
- has_many :products



## product-feesテーブル
|Column|Type|Options|
|------|----|-------|
|fee|integer|null: false|

### Association
- has_many :products


## product-conditionsテーブル
|Column|Type|Options|
|------|----|-------|
|condition|string|null: false|

### Association
- has_many :products



## product-transaction-statusesテーブル
|Column|Type|Options|
|------|----|-------|
|transaction-status|string|null: false|

### Association
- has_many :products



## product-sizesテーブル
|Column|Type|Options|
|------|----|-------|
|size|string|null: false|

### Association
- has_many :products