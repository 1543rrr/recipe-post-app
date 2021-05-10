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

オリジナルレシピを投稿して誰でも簡単に口コミを投稿出来るサイトです。

下記↓ページで公開中です。

アプリ概要
作った料理を記録して共有できる、料理投稿SNSサービス
・投稿されたレシピを検索できる
・写真を撮って投稿出来る
・投稿された料理をお気に入り登録やコメントが出来る
・自分の作る予定の料理をリストに追加出来る
・自分の作った料理をお気に入りに追加出来る
・料理に食べたいリクエストが送れる
・食べたいリクエスト通知される

Ruby on Railsで制作しました。

作成した背景や想いなど、より詳細な情報は下記をご覧ください。
ポートフォリオ解説（URL）

機能
・作った料理を投稿
・画像を正方形に整形して投稿（CarrierWave）
・料理ログ登録（料理を作る度にログを追加し、これまでにいつ作ったのかや、何回作ったのかが一目で分かる）
・別ユーザーの料理に対して食べたいリクエストを送信
・フォロー
・お気に入り登録
・コメント
・通知（お気に入り登録かコメントがあった場合）
・検索（Ransack）
・CSV出力
・ログイン
・ゲストログイン
・ログイン状態の保持
・モデルに対するバリデーション



## DB設計
# user table
|name           |string     |null: false      |
|email          |sting      |null: false      |
|picture        |string     |null: false      |
|introduction   |text       |null: false      |
|gender         |string     |null: false      |
|admin          |boolean    |null: false      |
|password_digest|           |null: false      |

# relationship table   
|follower_id    |integer    |foreign_key: true|
|followed_id    |integer    |foreign_key: true|

# dish table
|name           |string     |null: false      |
|user_id        |integer    |foreign_key: true|
|picture        |string     |null: false      |
|description    |text       |null: false      |
|portion        |float      |null: false      |
|tips           |text       |null: false      |
|reference      |text       |null: false      |
|required_time  |integer    |null: false      |
|popularity     |integer    |null: false      |
|cook_memo      |text       |null: false      |

# ingredient table
|name           |string     |null:false       |
|dish_id        |integer    |foreign_key: true|
|quantity       |string     |null: false      |


