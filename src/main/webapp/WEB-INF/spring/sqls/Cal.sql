-- CAL SEQUENCE SQL
DROP SEQUENCE CALNO_SEQ;
CREATE SEQUENCE CALNO_SEQ;

--CAL TABLE SQL
DROP TABLE CAL;
CREATE TABLE CAL
(
    MEMBERID    VARCHAR2(200)    NOT NULL, 
    CALNO       NUMBER           NOT NULL, 
    CALTITLE    VARCHAR2(200)    NOT NULL, 
    CALSCH      VARCHAR2(200)    NOT NULL, 
    CALDATE     DATE             NOT NULL, 
    CALMEMO     VARCHAR2(200)    NULL, 
    CALSMS      VARCHAR2(20)     NULL, 
    MEMBERNICKNAME VARCHAR2(200) NOT NULL,
    CONSTRAINT CAL_PK PRIMARY KEY (CALNO),
    CONSTRAINT CAL_SMS_CHK CHECK(CALSMS IN ('Y','N'))
);


	SELECT COUNT(*) FROM CAL WHERE MEMBERID='gg' AND CALSCH LIKE '%20180620%'


SELECT * FROM CAL WHERE MEMBERID='gg' AND CALSCH LIKE '%20180620%'

DELETE FROM CAL WHERE CALNO=67

SELECT * FROM CAL WHERE CALTITLE LIKE '%생신%'

INSERT INTO CAL VALUES('gg',CALNO_SEQ.NEXTVAL,'향은님의 생신','201806190000',SYSDATE,'향은님의 생일입니다','Y','지지');

update cal set CALTITLE='문자알림 테스트 ' where calno=3;
