
commit;



            -- DB 테이블
            
-- Buyer (구매자)
-- Manager (관리자)
-- itemLike(찜)
-- grade(구매자 등급)
-- seller (판매자)
-- recipe(레시피)
-- item (상품)
-- review (후기)
-- cate(카테고리)
-- cate_detail (상세카테고리)
-- pay(결제 / 주문내역)    
-- help(플랫폼 고객 센터)
-- htlp reply(고객센터 답변)
-- inquiry(판매자 고객 센터)
-- hash(해시태그)  
-- coupon(쿠폰) 
-- inquiry 문의하기
-- cart 장바구니







commit;














--------------------------------------------------------------------------------














        -- Manager (매니저)
        
drop table manager;

create table manager (
  manager_num number(4) not null,
  manager_id varchar2(50) not null, 
  manager_password varchar2(50) not null,
  manager_code varchar2(50) not null
);

insert into manager values(
1,'admin','final','0415'
);

select * from manager;

commit;








                    -- Buyer (구매자) 
                    
구매자 넘버, 구매자 아이디, 구매자 이메일, 구매자 비밀번호, 이름, 추천코드
주소, 연락처, 등급, 헤시넘버, 장바구니, 포인트, 쿠폰
쿠폰리스트
buyer_num, buyer_id, buyer_email, buyer_password, buyer_name, buyer_code
buyer_addr, buyer_phone, buyer_grade, buyer_hash, buyer_cart, buyer_point,
buyer_coupon

drop table buyer;

DROP SEQUENCE Buyer_SEQ;

DROP SEQUENCE code_SEQ;



CREATE SEQUENCE  Buyer_SEQ  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 2 NOCACHE;

CREATE SEQUENCE  code_SEQ  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 581279 NOCACHE;


create table buyer (
  buyer_num number(4) default Buyer_SEQ.nextval primary key,
  buyer_id varchar2(20) unique not null, 
  buyer_email varchar2(50),
  buyer_password varchar2(50) not null,
  buyer_name varchar2(20) not null, 
  buyer_code varchar2(50) default code_SEQ.nextval, 
  buyer_addr  varchar2(500),
  buyer_phone varchar2(50),
  buyer_grade varchar2(10) default '1',
  buyer_hash varchar2(100),
  buyer_point number(30)  default 1000,
  buyer_couponNum varchar2(100)  default '1',
  buyer_payment number default 0
  );



--------------------------------------------------------------------------------
-- 매니저 계정이라 1번은 인서트 해야함
insert into buyer (buyer_num, buyer_id, buyer_email, buyer_password, buyer_name,
buyer_addr, buyer_phone, buyer_hash) values
(1, 'manager', 'manager@email.com', '7777', '홍길동', 'Jeju', 
'010-1111-9999', '다이어트, 운동');

--------------------------------------------------------------------------------


insert into buyer (buyer_id, buyer_email, buyer_password, buyer_name,
buyer_addr, buyer_phone, buyer_hash) values
('user', 'user@email.com', '1234', '박현구',  '[03138] 서울특별시 종로구 돈화문로 26, 306호', 
'010-1234-5678', '건강, 미용');

insert into buyer (buyer_id, buyer_email, buyer_password, buyer_name,
buyer_addr, buyer_phone, buyer_hash) values
('buyer', 'buyer@email.com', '1234', '박채성',  '[03138] 서울특별시 종로구 돈화문로 26, 307호', 
'010-2222-3333', '반려동물, 간식');

insert into buyer (buyer_id, buyer_email, buyer_password, buyer_name,
buyer_addr, buyer_phone, buyer_hash) values
('userid', 'user@email.com', '1234', '김진경', '[03138] 서울특별시 종로구 돈화문로 26, 305호', 
'010-1234-5678', '반려동물, 건강');


insert into buyer (buyer_id, buyer_email, buyer_password, buyer_name,
buyer_addr, buyer_phone, buyer_hash) values
('you2', 'user@email.com', '1234', '김유선', '[03138] 서울특별시 종로구 돈화문로 26, 308호', 
'010-1234-5678', '반려동물, 건강');



select * from buyer;





commit;



select Buyer_SEQ.nextval from DUAL;

delete from buyer
where buyer_num=4;


















-- cart 장바구니 (2022-03-28  cart_price 컬럼 추가)

장바구니 고유 넘버, 구매자(사용자)넘버,  상품넘버, 상품갯수, 총 가격(상품개별가격*상품갯수)

cart_id, cart_buyerNum, cart_itemNum, cart_count, cart_price


DROP SEQUENCE Cart_SEQ;

drop table cart;


CREATE SEQUENCE  Cart_SEQ  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 1 NOCACHE;

create table cart(
cart_id number(5) default Cart_SEQ.nextval primary key,
cart_buyerNum number(10) not null,
cart_itemNum number(10) not null,
cart_count number(5),
cart_price number(10)
);




insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(2, 1, 2, 14000);

insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(2, 2, 3, 55000);

insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(3, 3, 5, 65000);

insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(3, 5, 6, 65000);

insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(3, 4, 1, 7000);

insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(3, 1, 4, 31000);

insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(3, 2, 6, 9000);

insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(3, 3, 7, 7500);

insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(3, 5, 7, 8000);

insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(3, 6, 7, 7000);




------------ JG 샘플 데이터


insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(1, 1, 1, 1500);
insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(1, 2, 2, 3000);
insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(1, 3, 3, 4500);
insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(1, 21, 1, 7600);
insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(1, 22, 2, 9800);
insert into cart(cart_buyerNum, cart_itemNum, cart_count, cart_price) values(1, 23, 3, 17400);


commit;



select * from cart;








commit;











          











                 -- itemLike(찜)
                 
찜id, 상품/레시피 구분, 구매자넘버, 상품(레시피)넘버
itemlike_id, itemlike_sepe, like_buyerNum, like_itemNum 

drop table itemLike;

create table itemLike(
 itemLike_id number(5),
 itemLike_sepe number(5),
 itemLike_buyerNum number(5),
 itemLike_itemNum number(5)
);

insert into itemLike values(1,0,1,1);
insert into itemLike values(2,0,1,2);
insert into itemLike values(3,0,2,2);
insert into itemLike values(4,0,2,1);

insert into itemLike values(5,0,3,1);
insert into itemLike values(6,0,3,2);
insert into itemLike values(7,1,3,1);

select * from itemLike;

commit;














                -- grade(구매자 등급)
                
id, 등급명, 할인율
grade_id, grade_name, grade_per

drop table grade;

create table grade (
grade_id varchar2(20),
grade_name varchar2(20), 
grade_per number(5)
);

insert into grade values('1', '씨앗', 1);
insert into grade values('2', '새싹', 2);
insert into grade values('3', '꽃', 3);
insert into grade values('4', '나무', 4);
insert into grade values('5', '숲', 5);

select * from grade;














                -- seller (판매자)
                
판매자넘버, 판매자 아이디, 판매자 이메일, 판매자 비밀번호, 이름,
매장명, 매장 주소, 아임포트넘버, 연락처
seller_num,    <<seq
seller_id, 
seller_email,
seller_password, 
seller_name, 
seller_storeName, 
seller_storeAddr, 
seller_import,
seller_phone,
seller_access (권한 0, 1)




DROP sequence SELLER_SEQ;

drop table seller;


CREATE SEQUENCE SELLER_SEQ START WITH 2 INCREMENT BY 1 MAXVALUE 100 CYCLE NOCACHE;

create table seller(
 seller_num  number(3) default SELLER_SEQ.nextval primary key,
 seller_id varchar2(50) not null,
 seller_password varchar2(50) not null,
 seller_name varchar2(50),
 seller_email varchar2(100),
 seller_storeName varchar2(100),
 seller_storeAddr varchar2(100),
 seller_import varchar2(100),
 seller_phone varchar2(100),
 seller_access number default 0
);


--------------------------------------------------------------------------------
-- 매니저 계정이라 1번은 인서트 해야함
insert into seller(seller_num, seller_id, seller_password, seller_name, seller_email, seller_storeName,
seller_storeAddr, seller_import, seller_phone, seller_access) values
(1, 'manager', '7777','홍길동', 'manager@email.com', '판매관리자', 'Jeju', 'imp82382729', '010-7777-7777',1);


--------------------------------------------------------------------------------


insert into seller(seller_id, seller_password, seller_name, seller_email, seller_storeName,
seller_storeAddr, seller_import, seller_phone) values
('seller',  '1234', '이순신', 'seller@email.com', '그린식자재', 'seoul', 'imp82382729', '010-1234-5678'
);




select * from seller;




commit;



















-- recipe(레시피) //불고기, 비빔밥, 떡볶이->상세페이지 보여주기 용, 새우찜
                
레시피넘버, 레시피명, 이미지, 상품(상품넘버리스트), 재료명(상세페이지 레시피 소개 재료 리스트),  추천수, 가격
recipe_num, recipe_name, recipe_image, recipe_detailImage, recipe_itemNum, recipe_material, recipe_reco, recipe_price

DROP SEQUENCE Recipe_SEQ;

drop table recipe;


CREATE SEQUENCE  Recipe_SEQ  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 1 NOCACHE;

create table recipe(
recipe_num number(30) default Recipe_SEQ.nextval primary key,
recipe_name varchar2(100),
recipe_image varchar2(100),
recipe_detailImage varchar2(100),
recipe_itemNum varchar2(500),
recipe_material varchar2(500),
recipe_reco number(10),
recipe_price number(30)
);


insert into recipe(recipe_name, recipe_image, recipe_detailImage, 
recipe_itemNum, recipe_material, recipe_reco, recipe_price) values(
'떡볶이', 'tteokbokki.jpg', 'recipeDetail.png',  '떡, 대파, 고춧가루, 물엿, 간장, 소시지, 달걀',
'떡, 어묵, 대파, 고추장, 고춧가루, 물엿, 간장, 소시지', 1055, 13000);


insert into recipe(recipe_name, recipe_image, recipe_detailImage, 
recipe_itemNum, recipe_material, recipe_reco, recipe_price) values(
'딸기 시리얼 요거트', 'yogurtRecipe.png', 'yogurtRecipeDetail.jpg', '딸기, 플레인요거트, 오트밀', '딸기, 플레인 요거트, 오트밀', 799, 18300
);


insert into recipe(recipe_name, recipe_image, recipe_detailImage, 
recipe_itemNum, recipe_material, recipe_reco, recipe_price) values(
'라볶이', 'rabokki.jpg', 'rabokki.jpg',  '오뚜기떡, 부산어묵, 면, 대파, 태양초고추장, 고춧가루, 물엿, 간장, 소시지, 달걀',
'떡, 어묵, 대파, 고추장, 고춧가루, 물엿, 간장, 소시지', 266, 12500);

insert into recipe(recipe_name, recipe_image, recipe_detailImage, 
recipe_itemNum, recipe_material, recipe_reco, recipe_price) values(
'돼지불고기', 'bulgogi.jpg', 'bulgogi.jpg',  '돼지고기, 오뚜기떡, 대파, 물엿, 간장, 양파, 당근',
'면사리, 떡, 어묵, 대파, 고추장, 고춧가루, 물엿, 간장, 소시지', 120, 15000);


insert into recipe(recipe_name, recipe_image, recipe_detailImage, 
recipe_itemNum, recipe_material, recipe_reco, recipe_price) values(
'우동', 'udon.jpg', 'udon.jpg',  '오뚜기우동사리, 부산어묵, 대파, 샘표간장, 양파, 무, 마늘',
'우동사리, 어묵, 대파, 양파, 간장, 마늘', 56, 11000);

insert into recipe(recipe_name, recipe_image, recipe_detailImage, 
recipe_itemNum, recipe_material, recipe_reco, recipe_price) values(
'김치찌개', 'kimchisoup.png', 'kimchisoup.png',  '김치, 양파, 마늘, 간장, 고추장, 고춧가루, 돼지고기, 배추, 당근, 두부' ,
'김치 마늘 양파 고추장 설탕 소금', 1200, 20000);

insert into recipe(recipe_name, recipe_image, recipe_detailImage, 
recipe_itemNum, recipe_material, recipe_reco, recipe_price) values(
'비빔밥', 'bibimbab.jpg', 'bibimbab.jpg',  '달걀, 배추, 당근, 고추장, 무우, 돼지고기' ,
'달걀, 배추, 당근, 고추장, 무우, 돼지고기', 250, 12000);

insert into recipe(recipe_name, recipe_image, recipe_detailImage, 
recipe_itemNum, recipe_material, recipe_reco, recipe_price) values(
'새우찜', 'shrimp.jpg', 'shrimp.jpg',  '새우, 소금' ,
'새우, 소금', 207, 27000);

insert into recipe(recipe_name, recipe_image, recipe_detailImage, 
recipe_itemNum, recipe_material, recipe_reco, recipe_price) values(
'홍합탕', 'mussel.jpg', 'mussel.jpg',  '홍합, 무, 대파, 간장, 마늘, 소금',
'홍합, 무, 대파, 간장, 마늘, 소금', 60, 35000);


insert into recipe(recipe_name, recipe_image, recipe_detailImage, 
recipe_itemNum, recipe_material, recipe_reco, recipe_price) values(
'스테이크', 'steak.jpg', 'steak.jpg',  '소고기, 간장, 설탕, 마늘, 소금' ,
'소고기, 간장, 설탕, 마늘, 소금', 60, 35000);


update recipe set recipe_reco + 1 
where recipe_num = recipe_num
and recipe_buyerNum = recipe_buyerNum




select * from recipe;

commit;





















-- item(상품)


상품넘버, 상품명, 상품 대표 이미지, 상세설명(이미지), 가격, 할인율, 재고량,
상세카테고리넘버, 상품등록일자, 추천수, 구매수, 헤시넘버, 레시피넘버
item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum




drop table item;


create table item(
 item_num number(10) primary key,
 item_name varchar2(50),
 item_image varchar2(100),
 item_detailImage varchar2(100),
 item_price number(20),
 item_per number(10),
 item_stock number(10),
 item_cateNum number(5),
 item_date date,
 item_reco number(10),
 item_selled number(10),
 item_hash varchar2(100),
 item_recipeNum number(30) 
        
);



insert into item(item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum) values(1,
'떡','ddeok.png','ddeok.png',4000,5,77,4,sysdate,77,520,'건강',1);

insert into item(item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum) values(2,
'면','pasta.jpg','pasta.jpg',1500,5,400,4,sysdate,55,103,'다이어트',3);

insert into item(item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum) values(3,
'달걀','egg.jpg','egg.jpg',5000,10,80,3,sysdate,1552,201,'헬스',3);

insert into item(item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum) values(4,
'두부','tofu.png','tofu.png',3000,5,320,4,sysdate,151,136,'건강, 다이어트',6);

insert into item(item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum) values(5,
'무','egg.jpg','egg.jpg',5000,0,80,1,sysdate,15,133,'건강',9);

insert into item(item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum) values(6,
'양파','onion.jpg','onion.jpg',4000,2,90,1,sysdate,35,233,'건강, 미용, 다이어트',1);

insert into item(item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum) values(7,
'마늘','garlic.jpg','garlic.jpg',6000,15,30,1,sysdate,45,22,'건강, 미용',3);

insert into item(item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum) values(8,
'물엿','honey.jpg','honey.jpg',5000,3,300,4,sysdate,25,141,'간식',1);

insert into item(item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum) values(9,
'대파','greenonion.jpg','greenonion.jpg',3000,0,200,1,sysdate,65,10,'건강',6);

insert into item(item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum) values(10,
'배추','cabbage.jpg','cabbage.jpg',11000,20,600,1,sysdate,25,120,'건강, 다이어트',6);

insert into item(item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum) values(11,
'돼지고기','pork.jpg','pork.jpg',15000,5,330,3,sysdate,54,167,'헬스',4);

insert into item(item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum) values(12,
'소고기','beef.jpg','beef.jpg',25000,3,220,3,sysdate,52,101,'헬스, 다이어트',10);

insert into item(item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum) values(13,
'새우','shrimp.jpg','shrimp.jpg',19000,10,520,2,sysdate,7771,5500,'헬스, 간식',8);

insert into item(item_num, item_name, item_image, item_detailImage, item_price, item_per, item_stock,
item_cateNum, item_date, item_reco, item_selled, item_hash,  item_recipeNum) values(14,
'홍합','mussel.jpg','mussel.jpg',12000,7,1330,2,sysdate,2022,2022,'건강, 간식',9);



            ---- JG

insert into item values(21,
'딸기','strawberry.png','strawberry.png',7600,15,21,6,sysdate,21,21,'건강, 간식, 다이어트',  2);

insert into item values(22,
'요거트','yogurt.png','yogurt.png',4900,10,22,5,sysdate,22,22,'간식, 다이어트', 2);

insert into item values(23,
'오트밀','oatmeal.png','oatmeal.png',5800,7,23,7,sysdate,23,23,'건강, 다이어트', 2);





select * from item;


commit;









                     -- review (후기)
                    
후기넘버, 구매자넘버, 상품넘버, 후기 내용, 이미지, 별점, 추천수, 후기등록날짜
review_num, review_buyerNum, review_itemNum, review_content, review_image, review_star, review_reco, review_date

drop sequence REVIEW_SEQ;

drop table review;

CREATE SEQUENCE  REVIEW_SEQ  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 1 NOCACHE;


create table review(
review_num number(3),
review_buyerNum number(3),
review_itemNum number(3),
review_content varchar2(500),
review_image varchar2(150),
review_star number(3),
review_reco number(10),
review_date date
);

insert into review values(
1, 1, 1, '맛있어여', 'review.png', 5, 101, sysdate
);

insert into review values(2, 2, 2, '맛있어여22', 'review.png', 5, 104, sysdate
);

insert into review values(
3, 3, 3, '맛있어여333', 'review.png', 5, 81, sysdate
);

insert into review values(
4, 4, 4, '맛있어여44444', 'review.png', 5, 1222, sysdate
);

insert into review values(
5, 3, 4, '맛있어여44444', 'review.png', 5, 151, sysdate
);

select * from review;



commit;






                  -- cate(카테고리)
                
카테고리넘버, 세부카테고리넘버, 카테고리명, 세부카테고리명
cate_num, cate_detailNum, cate_name, cate_detailName

##카테고리 테이블 대분류/소분류로 분류하여 생성

cate (카테고리 대분류)
카테고리넘버, 카테고리이름
cate_num, cate_name

cate_detail (카테고리 소분류)
카테고리넘버, 카테고리 소분류 넘버, 카테고리 소분류 이름
cate_num, cate_detailNum, cate_detailName

과일/채소
(과일/채소)

수산물
(생선/갑각류/해조류/건어물)

정육/계란
(소고기/돼지고기/계란/닭고기/돈까스)

요리
(찌개/밀키트/샐러드/반찬)

음료/우유
(생수/음료/유제품/커피/차)

간식
(과자/초콜릿/캔디/아이스크림)

베이커리
(빵/잼/케이크)

───────테이블, 데이터 생성 시작───────

drop table cate;

create table cate( --카테고리 대분류를 위한 테이블
    cate_num number(3),
    cate_name varchar2(100)
);

insert into cate values(1, '과일/채소');
insert into cate values(2, '수산물');
insert into cate values(3, '정육/계란');
insert into cate values(4, '요리');
insert into cate values(5, '음료/우유');
insert into cate values(6, '간식');
insert into cate values(7, '베이커리');


select * from cate;


	select * from cate where cate_num =1;
    
    commit;




select * from item where item_cateNum in (select cate_detailNum from cate_detail where  cate_num = 1);

                  
                  
                  
                  
                  
                  
                  -- cate_detail


drop table cate_detail;

create table cate_detail ( --카테고리 소분류를 위한 테이블
    cate_num number(3), -- 카테고리 대분류 테이블에 매칭되는 칼럼
    cate_detailNum number(3), 
    cate_detailName varchar2(20)
);

insert into cate_detail values(1, 1, '과일,채소');
insert into cate_detail values(2, 21, '생선');
insert into cate_detail values(2, 22, '갑각류');
insert into cate_detail values(2, 23, '해조류');
insert into cate_detail values(2, 24, '건어물');
insert into cate_detail values(3, 31, '소고기');
insert into cate_detail values(3, 32, '돼지고기');
insert into cate_detail values(3, 33, '계란');
insert into cate_detail values(3, 34, '닭고기');
insert into cate_detail values(3, 35, '돈까스');
insert into cate_detail values(4, 41, '찌개');
insert into cate_detail values(4, 42, '밀키트');
insert into cate_detail values(4, 43, '샐러드');
insert into cate_detail values(4, 44, '반찬');
insert into cate_detail values(5, 51, '생수');
insert into cate_detail values(5, 52, '음료');
insert into cate_detail values(5, 53, '유제품');
insert into cate_detail values(5, 54, '커피');
insert into cate_detail values(5, 55, '차');
insert into cate_detail values(6, 61, '과자');
insert into cate_detail values(6, 62, '초콜릿');
insert into cate_detail values(6, 63, '캔디');
insert into cate_detail values(6, 64, '아이스크림');
insert into cate_detail values(7, 71, '빵');
insert into cate_detail values(7, 72, '잼');
insert into cate_detail values(7, 73, '케이크');


select * from cate_detail;

commit;











            -- pay    진경         >>>>>>>>>> 시퀀스 생성, default값 추가 했습니다! 적용해주세요! 

drop table pay;

DROP SEQUENCE pay_seq;

create sequence pay_seq START WITH 1 INCREMENT BY 1 MAXVALUE 999 CYCLE NOCACHE;

create table pay(
pay_num number(3) default pay_seq.nextval primary key, 
pay_buyerNum number(3), 
pay_itemNum varchar2(50),
pay_itemName varchar2(50),  
pay_deliveryNum number(20),
pay_price number(20),
pay_date date,
pay_deliveryState varchar2(20) default '결제완료', 
pay_reviewYN number(2) default 0
);

insert into pay(pay_buyerNum, pay_itemNum, pay_itemName, pay_deliveryNum, pay_price, pay_date)
values(1, '21,', '딸기', '6542525', 18000, sysdate);



insert into pay(pay_buyerNum, pay_itemNum, pay_itemName, pay_deliveryNum, pay_price,pay_date)
values(3, '21', '딸기', '6542525', 18000, sysdate);




select * from pay;



commit;












                    -- help (고객센터)   

drop table help;

DROP SEQUENCE Help_SEQ;

CREATE SEQUENCE Help_SEQ START WITH 1 INCREMENT BY 1 MAXVALUE 9999 CYCLE NOCACHE;

create table help(
help_num number(3) primary key, 
help_buyerId varchar2(20), 
help_title varchar2(1000),
help_content varchar2(3000),
help_date date
);


select * from help;

commit;





 


                  -- help_reply   고객센터 답변

drop table help_reply;

create table help_reply(
reply_title varchar(1000),
reply_content varchar(3000),
write_group number(10),
write_date date default sysdate,
constraint fk_1 foreign key(write_group) references help(help_num) on delete cascade
);

select * from help_reply;

commit;























                   -- inquiry(판매자 고객 센터)
            
         
            
문의넘버, 상품넘버, 구매자번호, 판매자번호,  문의글, 답변여부, 작성날짜, 답변글
inquiry_num, inquiry_itemNum, inquiry_buyerNum, inquiry_sellerNum, inquiry_content, inquiry_answerYN, inquiry_answerContent, inquiry_date

drop table inquiry;





create table inquiry(
inquiry_num number(3), 
inquiry_itemNum number(5),
inquiry_itemName varchar2(50),
inquiry_buyerNum number(3),
inquiry_sellerId varchar2(100),
inquiry_content varchar2(100),
inquiry_date date,
inquiry_answerYN varchar2(30),
inquiry_answerContent varchar2(100)
);


insert into inquiry values(1,1,'두부',1, 'seller' ,'알레르기 정보 문의합니다.' ,sysdate,'답변완료','땅콩이 첨가되어 있는 식품입니다');

insert into inquiry values(2,1,'두부',2, 'seller' ,'재고가 언제 들어올까요?' ,sysdate,'미답변','미답변');


insert into inquiry
values(3, 2, '떡', 3, 'seller' ,'알레르기 정보 문의합니다', sysdate, '답변완료', '밀이 첨가되어 있는 식품입니다');



select * from inquiry;

commit;

commit;







                      -- hash(헤시태그)                    
                    
헤시넘버, 헤시명, 카테고리넘버
hash_num, hash_name, hash_cateNum

헬스, 다이어트, 건강, 미용, 반려동물, 간식

drop table hash;

create table hash(
hash_num number(3), 
hash_name varchar2(50), 
hash_cateNum number(3)
);


insert into hash values(1, '헬스', 1);
insert into hash values(2, '다이어트', 2);
insert into hash values(3, '건강', 3);
insert into hash values(4, '미용', 4);
insert into hash values(5, '반려동물', 5);
insert into hash values(6, '간식', 6);


select * from hash;














-- coupon(쿠폰)

//(기존 테이블)                    
//쿠폰넘버, 쿠폰명, 할인율
//coupon_num, coupon_name, coupon_per


(수정된 테이블)

drop table coupon;

create table coupon(
coupon_num number(20), --쿠폰 넘버
coupon_name varchar2(30), --쿠폰명
coupon_per number(10), --쿠폰 할인율
coupon_buyerNum number(10) --쿠폰을 소유한 buyer의 num
);

QWE115-WQERW1-WQEF33  런칭 기념 감사 쿠폰  15%

ADRR15-WRWE11-JHFHF43  룰렛    25%


insert into coupon values(121122771, '런칭 기념 감사 쿠폰', 15, 3); 
insert into coupon values(624415671, '이벤트 쿠폰', 25, 3); 
insert into coupon values(115523122, '신규 회원 쿠폰', 10, 3); 

-- buyerNum이 '99'인 쿠폰은 기본 쿠폰으로,
-- 관리자가 생성하고 이벤트 페이지 등에서 사용자에게 부여할 수 있는 쿠폰
insert into coupon values(1, '신규회원 쿠폰', 10, 99); 
insert into coupon values(2, '재구매 쿠폰', 20, 99);
insert into coupon values(3, '등업 축하 쿠폰', 30, 99);

-- 테스트 유저(buyer_num=1)가 소유한 쿠폰 샘플 데이터
insert into coupon values(11, '신규회원 쿠폰', 10, 1);
insert into coupon values(12, '재구매 쿠폰', 20, 1);


insert into coupon values(13, '신규회원 쿠폰 쿠폰', 20, 2);
insert into coupon values(14, '재구매 쿠폰', 20, 2);

-- 쿠폰 테이블 확인
select * from coupon;

commit;






























회원가입(form만) -> 로그인(미리 가입해놓은 아이디) -> 메인페이지 스캔 ->
베스트, 신상품, 특가 상품페이지 보여주기 -> 이벤트/쿠폰 페이지 -> 상세페이지에서 쿠폰 발행 -> 
상품 카테고리 펼치기 -> 검색 기능 보여주기 -> 세부 카테고리 클릭 후 상품 리스트 보여주기 -> 
상품 상세페이지에서 상세설명+후기 -> 찜 누르고, 장바구니에 담기 누르기 -> 장바구니 목록 보여주기 
-> 레시피 추천받기 버튼 누르기 -> 추천된 레시피에서 하나 클릭 -> 레시피 상세보기 (좋아요, 추천) 
-> 레시피 재료 장바구니 담기 -> 장바구니에 레시피 재료가 추가된 것 보여주기 -> 장바구니에서 결제하기 
-> 결제 페이지(쿠폰 적용, 포인트 적용)에서 결제 -> 결제 완료 페이지(주문내역 보기 버튼 눌러서 마이페이지로 이동) 
-> 주문 내역 보기 -> 배송이 완료된 상태의 주문건(미리 넣어둔 DB)에 대한 후기 작성 -> 후기 작성 폼으로 이동, 작성 
-> 마이페이지 이동하여 작성한 후기 보여주기 ->아래에 있는 고객센터 문의내역 보여주기 
-> 고객센터 페이지(모든 회원이 작성한 문의 보여주기) -> 문의하기 눌러서 폼 작성, 등록 -> 고객센터 페이지 보여주기






상세페이지 이미지 준비할 레시피, 재료 정하기
thumbnail은 많이 준비