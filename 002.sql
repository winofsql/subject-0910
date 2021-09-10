-- テーブル一覧
SHOW TABLES
;

SHOW FULL TABLES
;

-- CREATE 文を取り出す
SHOW CREATE TABLE 社員マスタ
;

-- 取り出した CREATE 文を通常記述に変更したものを実行
CREATE TABLE `社員マスタ2` (
  `社員コード` varchar(4),
  `氏名` varchar(50) ,
  `フリガナ` varchar(50) ,
  `所属` varchar(4) ,
  `性別` int(11) ,
  `作成日` datetime ,
  `更新日` datetime ,
  `給与` int(11) ,
  `手当` int(11) ,
  `管理者` varchar(4) ,
  `生年月日` datetime ,
  PRIMARY KEY (`社員コード`)
)
;

-- VIEW の 元の SQL を取得
SHOW CREATE VIEW v_社員マスタ
;

-- 取り出した SQL ( MySQL 拡張の結果部分 3回クリックで選択 )
CREATE VIEW `v_社員マスタ` AS
select
    `社員マスタ`.`社員コード` AS `社員コード`,
    `社員マスタ`.`氏名` AS `氏名`,
    `社員マスタ`.`フリガナ` AS `フリガナ`,
    `社員マスタ`.`所属` AS `所属`,
    `社員マスタ`.`性別` AS `性別`,
    `社員マスタ`.`作成日` AS `作成日`,
    `社員マスタ`.`更新日` AS `更新日`,
    `社員マスタ`.`給与` AS `給与`,
    `社員マスタ`.`手当` AS `手当`,
    `社員マスタ`.`管理者` AS `管理者`,
    `社員マスタ`.`生年月日` AS `生年月日`
from
    `社員マスタ`
;

-- DB一覧
SHOW DATABASES
;

-- MySQL 定義情報
SHOW VARIABLES
;

-- 条件で絞る
SHOW VARIABLES LIKE '%character%'
;
