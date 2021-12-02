# README

# アプリ名
Smart Class

# 概要
* 選択クイズに挑戦
* 無料プリントのダウンロード
* 教育情報の投稿

# 本番環境
https://smart-class-36407.herokuapp.com/  
* ID:satoru
* password:03091124

ログイン情報(テスト用)
* メールアドレス:aaa@aaa.com
* パスワード:1212www

# 制作背景
<details><summary>楽しく考えることを知ってほしい</summary>
子どもたちの成長において重要なものは、成功体験です。  
成功体験は、「もっとやろう！」と自ら取り組む原動力になります。  
それには、学べる環境を用意してあげることが必要です。クイズとプリント学習をすることで「瞬時に考えること」と「じっくり考えること」の２つができます。このパターンは、思考と情緒をバランスよく育むことができる大枠です。  
また、クイズは短く作っており、長時間のパソコン操作にならないようにしています。  
また、両親が我が子により積極的な学びの環境を用意したいと考えた時に、たくさんの習い事から選ぶのは骨が折れます。
そこで、情報交換と共有ができる場所の提供ができるよう教育情報の投稿ができるようにしました。  
親も子どもも共通でしようするアプリケーションにすることで、安心感を高めました。  
長々と綴りましたが、根本は子どもたちの学習のきっかけの一つになりたい、学習へのハードルを下げてあげたいという気持ちです。楽しく考えることを知ってもらえたら幸いです。</details>

# DEMO
#### トップページ
(https://gyazo.com/1fbcdd5d303bb204be777b0caae09e7d)  
トップページにて、クイズやプリントダウンロードができます。
ログイン状態時のみに、投稿ページに遷移ができます。

#### クイズページ
(https://gyazo.com/a6dfe4923a5f2d1015ce50605e96aa19)
選択クイズ式にしてあります。答えるとアラートが出て、次の問題に変わっていきます。

#### プリントページ
(https://gyazo.com/a3fc3293d3ba58530ffa429eefb1c80a)  
PDFを新規タブで表示できます。

#### 投稿ページ
(https://gyazo.com/e7b5b986a7b6af2c136350c4cb7c4af5)  
投稿一覧にて、投稿を見ることができます。投稿者か否かの判定を行い、編集・削除アイコンの表示を切り替えています。
また、投稿したユーザー名のクリックにより、マイページに遷移します。


#### マイページ
[ユーザー画面](https://gyazo.com/444edbeabd8d0c2c8e50aa93f36de147)  
[他のユーザー画面](https://gyazo.com/c7a4088ab3dc3c725d48c9fc87ce81ba)  
マイページには、ユーザー名と投稿一覧を表示できます。  
右上部アイコンは、アカウント情報編集と投稿ページに遷移できます。  
各投稿には変種や削除ボタンもあり、ここから各ページに遷移ができます。  
ログインの有無に応じて、アイコンの表示を変更しています。  

# 工夫したポイント
親子で使うものであるため、シンプルにしました。  
クイズ問題は、子どもを想定したので、結果表示をアラートにすることで遷移を少なくしました。  
いいねボタンなどは、Font Awesomeを使って、アイコン表示にすることで直感的に触れるようにしました。  
投稿では、URLの共有のためのリンク設定と改行が反映するようにしました。  
マイページでは投稿者のみの投稿一覧を表示することをしました。


### バックエンド
Ruby, Ruby on Rails

### フロントエンド
HTML, CSS, javascript

### データベース
MySQL

### ソース管理
GitHub, GitHubDesktop

### エディタ
VSCode

# 課題や今後実装したい機能
* コメント機能
* 評価機能（食べログのような）
* フォロー機能



# テーブル設計

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
