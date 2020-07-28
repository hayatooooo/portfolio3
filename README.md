# 筋トレ回数記録アプリになります。※Chrome推奨

# 開発環境

Windows10　×　Ubuntu(Windows Subsystem For Linux)　×　Docker Desktop　×　AWS(EC2)

# 以下、機能になります。

・Log in機能(devise gem 使用。名前とパスワードのみの簡易ログインに修正。)  
・筋トレ回数記録  
・回数に応じて、レーダーチャート、コメント、キャラクターが変化  
※以下の条件で変化します。  
(➀合計回数<5000, 5000<=合計回数<=50000, 50001<=合計回数<=100000, 100001<=合計回数<=1500000, 1500000<合計回数)  
(➁全ての項目の回数が等しい)  
(➂全ての項目を比較して最も回数の多い項目)  

# 以下、Javascript,Jquery使用箇所になります。

・Log in/Sign upページ　アニメーション  
・Topページ　レーダーチャート  

# 以下、テストユーザーになります。

・サンプルユーザー1  
  name: 勇人  
  password: password  

・サンプルユーザー2  
  name: 慎太郎  
  password: password
