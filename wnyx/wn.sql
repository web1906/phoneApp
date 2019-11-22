USE wn;
DROP  TABLE  IF  EXISTS  wn_yx_oder_detail;
CREATE TABLE wn_yx_oder_detail(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  lname VARCHAR(128) DEFAULT NULL,
  price DECIMAL(6,2) DEFAULT NULL
)
INSERT INTO wn_yx_oder_detail VALUES(NULL,'蜗牛游戏手机摩奇i7','1799','20170829102409732.jpg');
INSERT INTO wn_yx_oder_detail VALUES(NULL,'新游无线游戏手柄N1 Pro支持iOS/Android/Windows','139','20161215135634951.png');
INSERT INTO wn_yx_oder_detail VALUES(NULL,'蜗牛游戏主机OBOX','1999','20150729182241622.jpg');
INSERT INTO wn_yx_oder_detail VALUES(NULL,"Viaplay G无线键鼠套装 智能电视/盒子机顶盒遥控器",'138','20161215104721792.jpg');
CREATE TABLE wn_yx_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  lid INT,
  count INT,
  lname VARCHAR(255),
  price DECIMAL(6,2),
  uid INT
);
ALTER TABLE wn_yx_shopping_detail ADD img_url VARCHAR(255);
ALTER TABLE wn_yx_shopping_detail ADD no-price DECIMAL(6,2);
UPDATE wn_yx_cart SET img='20161215135634951.png' WHERE id=4;
UPDATE wn_yx_shopping_detail SET img_url='20161215135634951.png' WHERE lid=2;
INSERT INTO wn_yx_cart VALUES(NULL,1,1,'蜗牛游戏手机摩奇i7','1799',2,'20170818172100598.jpg');
INSERT INTO wn_yx_shopping_detail VALUES(NULL,'新游无线游戏手柄N1 Pro支持iOS/Android/Windows','139','199');