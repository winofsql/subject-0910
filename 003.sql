-- VIEW 作成
CREATE VIEW V_得意先マスタ
AS
SELECT 得意先コード,得意先名,得意先区分,担当者,氏名,郵便番号,住所１,住所２,得意先マスタ.作成日,得意先マスタ.更新日,締日,締日区分,支払日,備考 FROM 得意先マスタ
    LEFT OUTER JOIN 社員マスタ
    ON 得意先マスタ.担当者 = 社員マスタ.社員コード
;

-- VIEW 削除
DROP VIEW V_得意先マスタ
;