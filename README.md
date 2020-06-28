# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル

|Column|Type|Options|
------|----|-------|
|name|string|null: false|
|mail|string|null: false,unlque:true|
|password|integer|index:true,null: false, unlque:true|

### Association
- has_many :groups_users
- has_many :groups
- has_many :groups, through: :groups_users

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|group_name|strig|null: false|
|member|strig|index:true,null: false,unlque:true|
|message_id|strig|null: false, foreign_key: true|

### Association
- has_many :groups_users
- has_many :users
- has_many :users, through: :groups_users

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user- belongs_to :users

## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|image|string|foreign_key: true|
|message|text|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- has_many :groups_users
- belongs_to :users