/* 1. 전체 테이블 명 + 코멘트 조회 */
SELECT
    N.NSPNAME AS SCHEMA_NAME,
    C.RELNAME AS TABLE_NAME,
    OBJ_DESCRIPTION(C.OID) AS TABLE_COMMENT
FROM PG_CATALOG.PG_CLASS C
    INNER JOIN PG_CATALOG.PG_NAMESPACE N ON C.RELNAMESPACE=N.OID
WHERE C.RELKIND = 'r'
AND NSPNAME = 'public'/* 스키마 명 */
ORDER BY C.OID;

/* 2. 선택한 테이블 -> 모든 컬럼 + 코멘트 조회 + 키종류 + FK 테이블 정보 */
SELECT
    ISC.ordinal_position AS ORD_NUM,
    KEY_INFO.KEY_TYPE,
	PS.RELNAME AS TABLE_NAME,
	ISC.column_name AS COLUMN_NAME,
	PD.DESCRIPTION AS COLUMN_COMMENT,
    ISC.udt_name AS COLUMN_TYPE,
    ISC.character_maximum_length AS COLUMN_LENGTH,
    ISC.is_nullable AS COLUMN_NULLABLE,
    ISC.column_default AS COLUMN_DEFAULT_VALUE,
    KEY_INFO.TABLE_NAME AS FK_TABLE_NAME,
    KEY_INFO.COLUMN_NAME AS FK_COLUMN_NAME
FROM PG_STAT_ALL_TABLES PS
    JOIN PG_DESCRIPTION PD ON PS.RELID=PD.OBJOID
        AND PS.SCHEMANAME='public'/*스키마 명*/
        AND PS.RELNAME='approval'/*테이블 명*/
    JOIN PG_ATTRIBUTE PA ON PD.OBJOID=PA.ATTRELID
        AND PD.OBJSUBID=PA.ATTNUM
        AND PD.OBJSUBID<>0
    JOIN INFORMATION_SCHEMA.COLUMNS ISC ON ISC.COLUMN_NAME =PA.ATTNAME
        AND ISC.TABLE_SCHEMA = 'public'
        AND ISC.TABLE_NAME = 'approval'
    LEFT JOIN (SELECT
                    TC.constraint_type AS KEY_TYPE,
                    TC.table_name AS FK_TABLE_NAME,
                    KCU.column_name AS FK_COLUMN_NAME,
                    CCU.table_name AS TABLE_NAME,
                    CCU.column_name AS COLUMN_NAME
                FROM information_schema.table_constraints TC
                JOIN information_schema.key_column_usage KCU /*현재 테이블*/ ON KCU.constraint_name = TC.constraint_name
                JOIN information_schema.constraint_column_usage CCU /*타겟 테이블*/ ON CCU.constraint_name = TC.constraint_name
                WHERE
                    TC.constraint_schema='public' /*스키마 명*/
                    AND TC.table_name='approval' /*테이블 명*/) KEY_INFO ON KEY_INFO.FK_COLUMN_NAME= ISC.COLUMN_NAME
ORDER BY ORD_NUM;

-- SELECT
--     ISC.ordinal_position AS ORD_NUM,
--     ISC.udt_name AS COLUMN_TYPE,
--     ISC.column_name AS COLUMN_NAME,
--     ISC.character_maximum_length AS COLUMN_LENGTH,
--     ISC.is_nullable AS COLUMN_NULLABLE,
--     ISC.column_default AS COLUMN_DEFAULT_VALUE
-- FROM INFORMATION_SCHEMA.COLUMNS ISC
-- WHERE ISC.TABLE_SCHEMA = 'public'
--       AND ISC.TABLE_NAME = 'approval'
-- ORDER BY ORD_NUM;
--
-- SELECT
--     TC.constraint_type AS KEY_TYPE,
--     TC.table_name AS FK_TABLE_NAME,
--     KCU.column_name AS FK_COLUMN_NAME,
--     CCU.table_name AS TABLE_NAME,
--     CCU.column_name AS COLUMN_NAME
-- FROM information_schema.table_constraints TC
-- JOIN information_schema.key_column_usage KCU /*현재 테이블*/ ON KCU.constraint_name = TC.constraint_name
-- JOIN information_schema.constraint_column_usage CCU /*타겟 테이블*/ ON CCU.constraint_name = TC.constraint_name
-- WHERE
--     TC.constraint_schema='public' /*스키마 명*/
--     AND TC.table_name='approval'; /*테이블 명*/