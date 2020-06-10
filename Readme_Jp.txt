************************************************************
      php_queue Ver 1.0.0
         Readme_Jp.txt                  スター精密（株）
************************************************************

    1. 概要
    2. 内容
    3. 適用
    4. 使用例
    5. 著作権
    6. 変更履歴

==========
 1. 概要
==========

    本サンプルは、サーバーがホストするPHP 言語とSQLiteに基づくCloudPRNTサーバーサンプルです。

    印刷について、すべての印刷ジョブはStarドキュメントマークアップ言語で書かれたデータを使用して作成されます。
    このデータは、cputilユーティリティを利用することで、各CloudPRNTプリンタでサポートされているメディア形式に変換されます。

    これにより１つの入力形式の印刷ジョブデータで、各デバイスコマンドエミュレーションや印刷幅毎のデータを生成し、
    各CloudPRNTプリンタでの印刷をサポートできます。

    尚、このデモンストレーションは基本的なものであり、セキュリティ、顧客への通知、
    および実際の展開に必要なその他の配慮すべき事項等は考慮されていません。

     CloudPRNT / Starドキュメントマークアップ / cputilの詳細な説明は、SDKドキュメントを参照ください。
    (http://sp-support.star-m.jp/SDKDocumentation.aspx - CloudPRNT -> Documents)


==========
 2. 内容
==========

    php_queue_v100
    |- Readme_En.txt                          // リリースノート (英語)
    |- Readme_Jp.txt                          // リリースノート (日本語)
    |- SoftwareLicenseAgreement.pdf           // ソフトウエア使用許諾書 (英語)
    |- SoftwareLicenseAgreement_Jp.pdf        // ソフトウエア使用許諾書 (日本語)
    |
    +- php_queue
       |- cloudprnt.php                       // cputilの使用を含むCloudPRNTキューシステムのPHP言語サンプル
       |- cpphp.css                           // mangament.html / print.htmlのスタイルシート
       |^ devices.php                         // データベースの照会、デバイス情報のキューの管理のサンプル
       |- management.html                     // プリンタおよび印刷ジョブのためのキュー登録/閲覧の管理ページ
       |- print.html                          // 登録済プリンタ用の簡易印刷ボタンWebページ
       |- print.php                           // データベースの照会、印刷ジョブの構成と印刷トリガー(management.html / print.html間の管理)のサンプル
       |- queues.php                          // データベースの照会、印刷ジョブデータ情報のキューの管理のサンプル
       |- simplequeue.sqlite                  // cloudprnt.php devices.php / print.php / queues.phpで使用されるデータベースファイル
       +- js
          |- jquery-3.3.1.min.js              // jquery 3.3.1 JavaScript library
          +- management.js                    // management.htmlの情報更新のためのJavaScript

==========
 3. 適用
==========

    下記のCloudPRNTクライアント対応プリンタを対象としています。:
        - mC-Print2
        - mC-Print3

    CloudPRNTについての詳細は、SDKドキュメントを参照ください。
    (http://sp-support.star-m.jp/SDKDocumentation.aspx - CloudPRNT -> Documents)

=============
 4. 使用例
=============
    このサンプルプロジェクトは、PHPやSQLiteライブラリを含むサーバーでホストされた後に利用できます。

    サーバーのセットアップ及び本サンプルの配置後、http://<Server Specified Path>/management.html

    本サンプルの詳細は、SDKドキュメントを参照ください。
    (http://sp-support.star-m.jp/SDKDocumentation.aspx - CloudPRNT -> Documents)

===========
 5. 著作権
===========

    スター精密（株）Copyright 2019


=============
 6. 変更履歴
=============

    Ver.1.0.0
    2019/11/05:
        初版リリース