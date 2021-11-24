CREATE TABLE IF NOT EXISTS `happyhouse`.`hospital` (
`hospno` INT NOT NULL AUTO_INCREMENT,
`gugunName` VARCHAR(30) NULL DEFAULT NULL,
`sidoName` VARCHAR(30) NULL DEFAULT NULL,
`tel` VARCHAR(15) NULL,
`hospname` VARCHAR(60) NULL DEFAULT NULL,
  PRIMARY KEY (`hospno`),
  INDEX `sidoName` (`sidoName` ASC) VISIBLE,
  CONSTRAINT `hospital_ibfk_1`
    FOREIGN KEY (`sidoName`)
    REFERENCES `happyhouse`.`sidocode` (`sidoName`))
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

insert into hospital (gugunName, sidoName, tel, hospname) values
('강남구','서울특별시','02-3423-7200','강남구보건소'),
('강남구','서울특별시','02-3410-2114','삼성서울병원'),
('강남구','서울특별시','02-2019-3114','연세대학교의과대학 강남세브란스병원'),
('강동구','서울특별시','02-440-7114','강동경희대학교의대병원'),
('강동구','서울특별시','02-3425-6655','강동구보건소'),
('강동구','서울특별시','02-2224-2114','성심의료재단강동성심병원'),
('강동구','서울특별시','02-2225-1111','한국보훈복지의료공단 중앙보훈병원'),
('강북구','서울특별시','02-901-7604','강북구보건소'),
('강서구','서울특별시','02-2600-5814','서울특별시강서구보건소'),
('강서구','서울특별시',-8522,'이화여자대학교의과대학부속서울병원'),
('관악구','서울특별시','02-879-7103','관악구보건소'),
('관악구','서울특별시','02-1877-8875','에이치플러스 양지병원'),
('광진구','서울특별시','02-450-1998','광진구보건소'),
('광진구','서울특별시',-3121,'건국대학교병원'),
('구로구','서울특별시','02-860-2600','구로구보건소'),
('구로구','서울특별시','02-2626-1114','고려대학교의과대학부속구로병원'),
('금천구','서울특별시','02-890-2422','서울특별시금천구보건소'),
('노원구','서울특별시','02-2116-4311','노원구보건소'),
('노원구','서울특별시','02-970-8000','노원을지대학교병원'),
('노원구','서울특별시','02-950-1114','인제대학교 상계백병원'),
('도봉구','서울특별시','02-2091-4600','도봉구보건소'),
('도봉구','서울특별시','02-901-3114','의료법인한전의료재단 한일병원'),
('동대문구','서울특별시','02-2127-5366','동대문구보건소'),
('동대문구','서울특별시','02-958-8114','경희대학교병원'),
('동대문구','서울특별시','02-2244-0191','삼육서울병원'),
('동작구','서울특별시','02-820-1423','서울특별시동작구보건소'),
('동작구','서울특별시','02-870-2114','서울특별시보라매병원'),
('마포구','서울특별시',-12173,'마포구보건소'),
('서대문구','서울특별시',-2140,'서대문구보건소'),
('서대문구','서울특별시','02-2228-0114','학교법인연세대학교의과대학세브란스병원'),
('서초구','서울특별시','02-2155-6114','서초구보건소'),
('서초구','서울특별시','02-1588-1511','학교법인가톨릭학원가톨릭대학교서울성모병원'),
('성동구','서울특별시','02-2286-7000','서울특별시성동구보건소'),
('성동구','서울특별시','02-2290-8114','한양대학교병원'),
('성북구','서울특별시','02-2241-1749','성북구보건소'),
('성북구','서울특별시',-1660,'학교법인 고려중앙학원 고려대학교의과대학부속병원(안암병원)'),
('송파구','서울특별시','02-2147-3458','서울특별시송파구보건소'),
('송파구','서울특별시','02-3010-3114','재단법인아산사회복지재단 서울아산병원'),
('양천구','서울특별시','02-2620-4340','양천구보건소'),
('양천구','서울특별시','02-2650-5114','이화여자대학교의과대학부속목동병원'),
('영등포구','서울특별시','02-2670-4823','영등포구보건소'),
('영등포구','서울특별시','02-829-5114','한림대학교 강남성심병원'),
('영등포구','서울특별시','02-840-7114','성애의료재단 성애병원'),
('용산구','서울특별시','02-2199-8390','용산구보건소'),
('용산구','서울특별시','02-709-9114','순천향대학교 부속 서울병원'),
('은평구','서울특별시','02-351-8114','은평구보건소'),
('은평구','서울특별시','02-1811-7755','가톨릭대학교 은평성모병원'),
('종로구','서울특별시','02-2148-3520','종로구보건소'),
('종로구','서울특별시',-7288,'서울대학교병원'),
('종로구','서울특별시','02-2001-2001','강북삼성병원'),
('중구','서울특별시','02-2270-0114','인제대학교 서울백병원'),
('중구','서울특별시','02-2260-7114','국립중앙의료원'),
('중구','서울특별시','02-2250-4400','서울특별시 중구보건소'),
('중랑구','서울특별시','02-490-3741','서울특별시중랑구보건소'),
('중랑구','서울특별시','02-2276-7000','서울특별시서울의료원'),
('강서구','부산광역시','051-970-3415','부산광역시강서구보건소'),
('강서구','부산광역시','051-974-8300','의료법인 갑을의료재단 갑을녹산병원'),
('금정구','부산광역시','051-519-5051','부산광역시금정구보건소'),
('기장군','부산광역시','051-720-5114','동남권원자력의학원'),
('기장군','부산광역시','051-709-4795','부산광역시기장군보건소'),
('남구','부산광역시','051-607-6460','부산광역시남구보건소'),
('남구','부산광역시','051-933-7114','부산성모병원(재단법인 천주교부산교구유지재단)'),
('동구','부산광역시','051-664-4000','의료법인정화의료재단 김원묵기념봉생병원'),
('동구','부산광역시','051-440-6500','동구보건소'),
('동래구','부산광역시','051-554-1233','대동병원'),
('동래구','부산광역시','051-555-4000','부산광역시동래구보건소'),
('부산진구','부산광역시','051-890-6114','인제대학교부산백병원'),
('부산진구','부산광역시','051-645-4000','부산진구보건소'),
('북구','부산광역시','051-341-0117','부산광역시북구보건소'),
('사상구','부산광역시','051-310-4791','부산광역시 사상구보건소'),
('사상구','부산광역시','051-322-0900','의료법인은성의료재단좋은삼선병원'),
('사하구','부산광역시','051-220-5701','사하구보건소'),
('서구','부산광역시','051-242-4000','서구보건소'),
('서구','부산광역시',-7240,'부산대학교병원'),
('서구','부산광역시','051-240-2400','동아대학교병원'),
('서구','부산광역시',-7104,'고신대학교복음병원'),
('수영구','부산광역시','051-625-0900','의료법인 은성의료재단 좋은강안병원'),
('수영구','부산광역시','051-756-0081','비에이치에스한서병원'),
('수영구','부산광역시','051-752-4000','수영구보건소'),
('연제구','부산광역시','051-665-4793','부산 연제구보건소'),
('연제구','부산광역시','051-507-3000','부산광역시의료원'),
('영도구','부산광역시','051-419-4911','부산광역시영도구보건소'),
('중구','부산광역시','051-600-4741','부산광역시중구보건소'),
('해운대구','부산광역시','051-749-7501','부산광역시해운대구보건소'),
('해운대구','부산광역시','051-797-0100','인제대학교 해운대백병원'),
('남구','대구광역시','053-623-8001','영남대학교병원'),
('남구','대구광역시','053-650-3000','대구가톨릭대학교병원'),
('남구','대구광역시','053-664-3601','대구광역시남구보건소'),
('달서구','대구광역시','053-667-3123','대구광역시달서구보건소'),
('달서구','대구광역시',-8199,'계명대학교동산병원'),
('달성군','대구광역시','053-668-3103','달성군보건소'),
('동구','대구광역시','053-1688-7770','대구파티마병원'),
('동구','대구광역시','053-662-3200','동구보건소'),
('북구','대구광역시','053-200-2000','칠곡경북대학교병원'),
('북구','대구광역시','053-665-3220','대구광역시북구보건소'),
('서구','대구광역시','053-560-7575','대구의료원'),
('서구','대구광역시','053-663-3111','서구보건소'),
('수성구','대구광역시','053-666-3111','대구광역시수성구보건소'),
('중구','대구광역시','053-200-5114','경북대학교병원'),
('중구','대구광역시','053-661-3121','대구광역시중구보건소'),
('강화군','인천광역시','032-930-4015','강화군보건소'),
('강화군','인천광역시','032-290-0001','비에스종합병원'),
('계양구','인천광역시','032-540-9114','한림병원'),
('계양구','인천광역시','032-240-8000','인천세종병원'),
('계양구','인천광역시','032-430-7801','계양구 보건소'),
('남동구','인천광역시','032-1577-2299','의료법인 길의료재단 길병원'),
('남동구','인천광역시','032-464-4001','남동구보건소'),
('동구','인천광역시','032-580-6000','인천광역시의료원'),
('동구','인천광역시','032-765-7070','의료법인 성수의료재단 인천백병원'),
('동구','인천광역시','032-770-5700','인천광역시동구보건소'),
('미추홀구','인천광역시','032-888-7575','현대유비스병원'),
('미추홀구','인천광역시','032-880-5311','미추홀구보건소'),
('부평구','인천광역시','032-1544-9004','가톨릭대학교인천성모병원'),
('부평구','인천광역시','032-524-0591','부평세림병원'),
('부평구','인천광역시','032-500-0114','근로복지공단인천병원'),
('부평구','인천광역시','032-509-8200','부평구보건소'),
('서구','인천광역시','032-1600-8291','가톨릭관동대학교 국제성모병원'),
('서구','인천광역시','032-584-0114','의료법인루가의료재단 나은병원'),
('서구','인천광역시','032-726-1000','(의)성세의료재단 뉴성민병원'),
('서구','인천광역시','032-590-0114','검단탑병원'),
('서구','인천광역시','032-567-6200','온누리병원'),
('서구','인천광역시','032-560-5000','인천광역시서구보건소'),
('연수구','인천광역시','032-899-9999','(의)나사렛의료재단 나사렛국제병원'),
('연수구','인천광역시','032-749-8000','연수구보건소'),
('연수구','인천광역시','032-899-4000','인천적십자병원'),
('미추홀구','인천광역시','032-899-3120','옹진군보건소'),
('옹진군','인천광역시','032-836-1731','인천광역시의료원백령병원'),
('중구','인천광역시','032-890-2114','인하대학교의과대학부속병원'),
('중구','인천광역시','032-270-8000','인천기독병원'),
('중구','인천광역시','032-760-6010','인천광역시중구보건소'),
('광산구','광주광역시','062-960-8746','광산구보건소'),
('광산구','광주광역시','062-601-8000','첨단종합병원'),
('남구','광주광역시','062-650-5000','광주기독병원'),
('남구','광주광역시','062-607-4450','광주광역시남구보건소'),
('동구','광주광역시','062-1899-0000','전남대학교병원'),
('동구','광주광역시','062-220-3321','조선대학교병원'),
('동구','광주광역시','062-608-3355','광주광역시동구보건소'),
('북구','광주광역시','062-608-7000','광주일곡병원'),
('북구','광주광역시','062-410-8961','광주광역시북구보건소'),
('서구','광주광역시','062-600-8000','서광병원'),
('서구','광주광역시','062-350-4116','광주광역시서구보건소'),
('대덕구','대전광역시','042-608-5452','대전광역시대덕구보건소'),
('대덕구','대전광역시','042-939-0111','대전보훈병원'),
('대덕구','대전광역시','042-670-5419','근로복지공단 대전병원'),
('동구','대전광역시','042-251-6178','대전광역시동구보건소'),
('서구','대전광역시','042-288-4500','대전광역시서구보건소'),
('서구','대전광역시','042-600-9999','학교법인 건양교육재단 건양대학교병원'),
('서구','대전광역시','042-611-3000','학교법인 을지학원 대전을지대학교병원'),
('유성구','대전광역시','042-611-5011','유성구보건소'),
('유성구','대전광역시','042-609-1000','의료법인영훈의료재단 유성선병원'),
('중구','대전광역시','042-288-8000','중구보건소'),
('중구','대전광역시','042-1599-7123','충남대학교병원'),
('중구','대전광역시','042-220-8114','의료법인 영훈의료재단 대전선병원'),
('중구','대전광역시','042-220-9114','학교법인가톨릭학원 가톨릭대학교 대전성모병원'),
('남구','울산광역시','052-259-5000','의료법인혜명심의료재단 울산병원'),
('남구','울산광역시','052-220-7500','의료법인 은성의료재단 좋은삼정병원'),
('남구','울산광역시','052-226-1100','의료법인 정안의료재단 중앙병원'),
('남구','울산광역시','052-226-2805','울산광역시남구보건소'),
('동구','울산광역시','052-250-7000','학교법인 울산공업학원 울산대학교병원'),
('서초구','서울특별시','02-570-8000','서울특별시어린이병원'),
('송파구','서울특별시','02-3400-1114','경찰병원'),
('고성군','강원도','033-681-4000','강원도 고성군보건소'),
('동구','울산광역시','052-209-4080','울산동구보건소'),
('북구','울산광역시','052-280-9000','의료법인 송은의료재단 울산시티병원'),
('북구','울산광역시','052-289-3450','울산광역시북구보건소'),
('울주군','울산광역시','052-255-7114','서울산보람병원'),
('울주군','울산광역시','052-265-9095','울주군보건소'),
('중구','울산광역시','052-241-1114','의료법인 동강의료재단 동강병원'),
('중구','울산광역시','052-290-4300','울산광역시중구보건소'),
('세종특별자치시','세종특별자치시','044-301-2000','세종특별자치시보건소'),
('가평군','경기도','031-582-2488','가평군보건소'),
('가평군','경기도','031-589-4300','에이치제이매그놀리아국제병원'),
('고양시 덕양구','경기도','031-8075-4006','고양시덕양구보건소'),
('고양시 덕양구','경기도','031-810-5114','의료법인명지의료재단명지병원'),
('고양시 일산동구','경기도','031-8075-4086','고양시일산동구보건소'),
('고양시 일산서구','경기도','031-8075-4167','일산서구보건소'),
('고양시 일산서구','경기도','031-910-7114','인제대학교일산백병원'),
('고양시 일산동구','경기도',-1590,'국민건강보험공단일산병원'),
('광명시','경기도','02-2680-7114','광명성애병원'),
('광명시','경기도','02-2680-2862','광명시보건소'),
('광주시','경기도','031-760-2110','광주시보건소'),
('광주시','경기도',-11555,'참조은병원'),
('구리시','경기도','031-550-8618','구리시보건소'),
('구리시','경기도',-10762,'한양대학교구리병원'),
('군포시','경기도','031-389-3000','효산의료재단 지샘병원'),
('군포시','경기도','031-390-2300','원광대학교 산본병원'),
('군포시','경기도','031-461-5464','군포시보건소'),
('김포시','경기도','031-999-1000','의료법인우리의료재단김포우리병원'),
('김포시','경기도','031-998-8129','의료법인인봉의료재단뉴고려병원'),
('김포시','경기도','031-980-5008','김포시보건소'),
('남양주시','경기도','031-590-2552','남양주보건소'),
('남양주시','경기도','031-590-4771','남양주 풍양보건소'),
('남양주시','경기도','031-510-0114','남양주 한양병원'),
('남양주시','경기도','031-574-9118','현대병원'),
('동두천시','경기도','031-860-3395','동두천시보건소'),
('부천시','경기도','032-621-5114','순천향대학교부속부천병원'),
('부천시','경기도','032-1577-0675','가톨릭대학교부천성모병원'),
('성남시 중원구','경기도','031-729-3895','성남시중원구보건소'),
('성남시 분당구','경기도','031-729-3990','성남시분당구보건소'),
('성남시 분당구','경기도','031-779-0114','대진의료재단 분당제생병원'),
('성남시 분당구','경기도','031-780-5000','차의과학대학교분당차병원'),
('성남시 수정구','경기도','031-729-3872','수정구보건소'),
('성남시 수정구','경기도','031-738-7000','성남시의료원'),
('성남시 수정구','경기도','031-757-8900','순천의료재단 정병원'),
('수원시 권선구','경기도','031-228-6716','수원시권선구보건소'),
('수원시 영통구','경기도','031-228-8808','영통구보건소'),
('수원시 장안구','경기도','031-228-5715','장안구보건소'),
('수원시 팔달구','경기도','031-228-7716','수원시팔달구보건소'),
('수원시 영통구','경기도','031-219-5114','아주대학교병원'),
('수원시 장안구','경기도','031-888-0114','경기도의료원 수원병원'),
('수원시 팔달구','경기도','031-1577-8588','가톨릭대학교 성빈센트병원'),
('수원시 팔달구','경기도','031-210-0114','의료법인 녹산의료재단동수원병원'),
('시흥시','경기도','031-8041-3000','의료법인 석경의료재단 센트럴병원'),
('시흥시','경기도','031-310-6300','의료법인 녹향의료재단 신천연합병원'),
('시흥시','경기도',-8811,'의료법인 남촌의료재단 시화병원'),
('시흥시','경기도','031-310-5813','시흥시보건소'),
('시흥시','경기도','031-310-5901','시흥시보건소정왕보건지소'),
('안산시 단원구','경기도','031-1666-1234','안산시단원보건소'),
('안산시 단원구','경기도','031-412-5653','고려대학교의과대학부속안산병원'),
('안산시 단원구','경기도','031-8040-1114','대아의료재단한도병원'),
('안산시 상록구','경기도','031-500-1114','근로복지공단안산병원'),
('안성시','경기도','031-8046-5000','경기도의료원 안성병원'),
('안성시','경기도','031-675-6007','안성성모병원'),
('안성시','경기도','031-678-5710','안성시보건소'),
('안양시 동안구','경기도','031-8045-4472','안양시 동안구보건소'),
('안양시 만안구','경기도','031-8045-3472','안양시보건소 만안보건과'),
('안양시 동안구','경기도','031-380-1500','한림대학교성심병원'),
('안양시 만안구','경기도','031-467-9717','효산의료재단 안양샘병원'),
('양주시','경기도','031-8082-7116','양주시보건소'),
('양평군','경기도','031-770-3502','양평군보건소'),
('양평군','경기도','031-770-5000','양평병원'),
('여주시','경기도','031-880-7700','세종여주병원'),
('여주시','경기도','031-887-3601','여주시보건소'),
('연천군','경기도','031-839-4001','연천군보건의료원'),
('오산시','경기도','031-8036-6025','오산시보건소'),
('오산시','경기도','031-379-8300','오산한국병원'),
('용인시 기흥구','경기도','031-324-6940','기흥구보건소'),
('용인시 수지구','경기도','031-324-8940','수지구보건소'),
('용인시 기흥구','경기도','031-300-0114','강남병원'),
('용인시 처인구','경기도','031-324-4906','처인구보건소'),
('용인시 처인구','경기도','031-8021-2000','(의)영문의료재단 다보스병원'),
('용인시 기흥구','경기도',-2903,'연세대학교 의과대학 용인세브란스병원'),
('의왕시','경기도','031-345-3541','의왕시보건소'),
('의정부시','경기도','031-828-5000','경기도의료원의정부병원'),
('의정부시','경기도','031-828-4511','의정부시보건소'),
('의정부시','경기도',-9161,'가톨릭대학교의정부성모병원'),
('의정부시','경기도','031-845-7777','추병원'),
('이천시','경기도','031-630-4200','경기도의료원 이천병원'),
('이천시','경기도','031-635-2400','이천시보건소'),
('파주시','경기도','031-940-4800','파주시보건소'),
('파주시','경기도','031-940-9100','경기도의료원파주병원'),
('평택시','경기도','031-5182-7700','의료법인백송의료재단 굿모닝병원'),
('평택시','경기도','031-652-2121','의료법인 박애의료재단 박애병원'),
('평택시','경기도',-10600,'의료법인 양진의료재단 평택성모병원'),
('평택시','경기도','031-8024-4421','평택시평택보건소'),
('평택시','경기도','031-8024-8610','안중보건지소'),
('평택시','경기도','031-666-2600','의료법인 갈렌의료재단 박병원'),
('평택시','경기도','031-8024-7273','평택시 송탄보건소'),
('포천시','경기도','031-538-3600','포천시보건소'),
('포천시','경기도','031-539-9114','경기도의료원포천병원'),
('하남시','경기도','031-790-6551','하남시보건소'),
('화성시','경기도','031-352-8114','의료법인 은혜와감사의료재단 화성중앙종합병원'),
('화성시','경기도','031-369-2551','화성시보건소'),
('화성시','경기도','031-8086-3000','한림대학교동탄성심병원'),
('강릉시','강원도','033-610-1200','강원도강릉의료원'),
('강릉시','강원도','033-610-3114','강릉아산병원'),
('강릉시','강원도','033-650-6161','의료법인 강릉동인병원'),
('강릉시','강원도','033-649-0100','의산의료재단 강릉고려병원'),
('강릉시','강원도','033-660-3052','강릉시보건소'),
('동해시','강원도','033-530-0114','의료법인 동해동인병원'),
('동해시','강원도','033-530-3100','근로복지공단 동해병원'),
('삼척시','강원도','033-572-1141','강원도 삼척의료원'),
('삼척시','강원도','033-573-2003','삼척시보건소'),
('속초시','강원도','033-630-6000','강원도속초의료원'),
('속초시','강원도','033-639-8500','속초보광병원'),
('양구군','강원도','033-480-8800','의료법인 성심의료재단 양구성심병원'),
('양양군','강원도','033-670-2550','양양군보건소'),
('영월군','강원도','033-370-9101','강원도 영월의료원'),
('영월군','강원도','033-372-4000','영월군보건소'),
('원주시','강원도','033-741-0114','연세대학교 원주세브란스기독병원'),
('원주시','강원도','033-737-4025','원주시보건소'),
('원주시','강원도','033-760-4605','강원도 원주의료원'),
('인제군','강원도','033-461-2425','인제군보건소'),
('정선군','강원도','033-560-7115','근로복지공단 정선병원'),
('정선군','강원도','033-563-0034','정선군보건소'),
('철원군','강원도','033-452-5011','철원병원'),
('춘천시','강원도','033-258-2000','강원대학교병원'),
('춘천시','강원도','033-240-5000','한림대학교부속 춘천성심병원'),
('춘천시','강원도','033-250-3550','춘천시보건소'),
('태백시','강원도','033-552-4000','태백시보건소'),
('태백시','강원도','033-580-3114','근로복지공단 태백병원'),
('평창군','강원도','033-332-4000','평창군보건의료원'),
('홍천군','강원도','033-430-5151','홍천아산병원'),
('홍천군','강원도','033-434-2401','홍천군보건소'),
('화천군','강원도','033-441-4000','화천군보건의료원'),
('횡성군','강원도','033-343-0901','횡성대성병원'),
('횡성군','강원도','033-340-5623','횡성군보건소'),
('괴산군','충청북도','043-830-2300','괴산군보건소'),
('괴산군','충청북도','043-830-5400','의료법인 대광의료재단 괴산성모병원'),
('단양군','충청북도','043-422-2974','단양군보건소'),
('단양군','충청북도','043-423-8844','단양군립노인요양병원'),
('보은군','충청북도','043-544-1500','의료법인 정민의료재단 보은한양병원'),
('보은군','충청북도','043-540-5601','보은군보건소'),
('영동군','충청북도','043-740-9000','의료법인 조윤의료재단 영동병원'),
('영동군','충청북도','043-740-5582','영동군보건소'),
('옥천군','충청북도','043-730-7000','의료법인 힐링의료재단 옥천성모병원'),
('옥천군','충청북도','043-730-2114','옥천군보건소'),
('음성군','충청북도','043-872-2136','음성군보건소'),
('음성군','충청북도','043-883-8800','의료법인 태성의료재단 금왕태성병원'),
('제천시','충청북도','043-642-7606','의료법인 자산의료재단 제천서울병원'),
('제천시','충청북도','043-646-2720','제천시보건소'),
('증평군','충청북도','043-835-4211','증평군보건소'),
('진천군','충청북도','043-533-1711','의료법인 건명의료재단 중앙제일병원'),
('진천군','충청북도','043-539-7415','진천군보건소'),
('청주시 상당구','충청북도','043-201-3118','청주시상당보건소'),
('청주시 상당구','충청북도','043-222-7000','의료법인 인화재단 한국병원'),
('청주시 상당구','충청북도','043-221-5000','의료법인 정산의료재단 효성병원'),
('청주시 서원구','충청북도','043-201-3215','청주시서원보건소'),
('청주시 서원구','충청북도','043-269-6114','충북대학교병원'),
('청주시 서원구','충청북도','043-279-2300','충청북도 청주의료원'),
('청주시 청원구','충청북도','043-201-3421','청주시청원보건소'),
('청주시 청원구','충청북도','043-219-8000','청주성모병원'),
('청주시 상당구','충청북도','043-201-3311','청주시흥덕보건소'),
('청주시 흥덕구','충청북도','043-230-6114','의료법인한마음의료재단하나병원'),
('충주시','충청북도','043-850-3517','충주시보건소'),
('충주시','충청북도','043-871-0114','충청북도 충주의료원'),
('충주시','충청북도','043-840-8200','건국대학교 충주병원'),
('계룡시','충청남도','042-840-3507','계룡시보건소'),
('공주시','충청남도','041-962-1111','충청남도 공주의료원'),
('공주시','충청남도','041-855-5244','공주시보건소'),
('금산군','충청남도','041-754-8272','새금산병원'),
('금산군','충청남도','041-750-4311','금산군보건소'),
('논산시','충청남도','041-733-2191','의료법인 백제병원'),
('논산시','충청남도','041-730-4086~7','논산시보건소'),
('당진시','충청남도','041-357-0100','당진종합병원'),
('당진시','충청남도','041-360-6003','당진시보건소'),
('보령시','충청남도','041-930-0900','보령시보건소'),
('보령시','충청남도','041-930-5114','재단법인 아산사회복지재단 부속 보령아산병원'),
('부여군','충청남도','041-837-1200','학교법인 건양교육재단 건양대학교부여병원'),
('부여군','충청남도','041-830-8600','부여군보건소'),
('서산시','충청남도','041-689-7000','충청남도 서산의료원'),
('서산시','충청남도','041-660-2550','서산시보건소'),
('서천군','충청남도','041-951-8282','의료법인 서해병원'),
('서천군','충청남도','041-950-6750','서천군보건소'),
('아산시','충청남도','041-536-6666','아산충무병원'),
('예산군','충청남도','041-330-4000','의료법인 예당의료재단 예산종합병원'),
('예산군','충청남도','041-339-8993','예산군보건소'),
('천안시 동남구','충청남도','041-1588-0063','단국대학교의과대학부속병원'),
('천안시 동남구','충청남도','041-570-2114','순천향대학교부속 천안병원'),
('천안시 서북구','충청남도','041-570-7555','의료법인 영서의료재단 천안충무병원'),
('천안시 동남구','충청남도','041-570-7200','충청남도 천안의료원'),
('청양군','충청남도',-4343,'청양군보건의료원'),
('태안군','충청남도','041-671-5315','태안군보건의료원'),
('홍성군','충청남도','041-630-6114','충청남도 홍성의료원'),
('홍성군','충청남도','041-632-2588','홍성군보건소'),
('고창군','전라북도','063-560-8711','고창군보건소'),
('고창군','전라북도','063-560-5600','의료법인석천재단고창병원'),
('군산시','전라북도','063-472-5000','전라북도 군산의료원'),
('군산시','전라북도','063-440-0300','의료법인 오성의료재단 동군산병원'),
('김제시','전라북도','063-540-5114','김제우석병원'),
('김제시','전라북도','063-540-1300','김제시보건소'),
('남원시','전라북도','063-620-1114','전라북도 남원의료원'),
('남원시','전라북도','063-625-4000','남원시보건소'),
('무주군','전라북도','063-320-8314','무주군보건의료원'),
('부안군','전라북도','063-584-1261','부안군보건소'),
('부안군','전라북도','063-581-5100','부안성모병원'),
('순창군','전라북도','063-650-5322','순창군보건의료원'),
('완주군','전라북도','063-290-0114','의료법인 일암의료재단 고려병원'),
('완주군','전라북도','063-290-3003','완주군보건소'),
('익산시','전라북도','063-859-1114','원광대학교병원'),
('익산시','전라북도','063-840-9114','익산병원'),
('익산시','전라북도',-1649,'익산시보건소'),
('임실군','전라북도','063-640-3102','임실군보건의료원'),
('장수군','전라북도','063-351-8000','장수군보건의료원'),
('전주시 완산구','전라북도','063-230-8114','재단법인예수병원유지재단예수병원'),
('전주시 덕진구','전라북도','063-240-2000','대자인병원'),
('전주시 완산구','전라북도','063-220-7200','의료법인영경의료재단전주병원'),
('전주시 완산구','전라북도','063-281-6241','전주시보건소'),
('정읍시','전라북도','063-530-6000','재단법인 아산사회복지재단 정읍아산병원'),
('정읍시','전라북도','063-533-8582','정읍시보건소'),
('진안군','전라북도','063-430-7000','진안군의료원'),
('진안군','전라북도','063-430-8560','진안군보건소'),
('강진군','전라남도','061-433-2167','전라남도 강진의료원'),
('강진군','전라남도','061-432-4000','강진군보건소'),
('고흥군','전라남도','061-835-6000','의료법인영성의료재단 고흥종합병원'),
('고흥군','전라남도','061-830-5561','고흥군보건소'),
('고흥군','전라남도','061-840-1200','의료법인장호의료재단 녹동현대병원'),
('곡성군','전라남도','061-360-6000','의료법인대송의료재단 곡성사랑병원'),
('곡성군','전라남도','061-362-4000','곡성군보건의료원'),
('광양시','전라남도','061-797-7000','광양사랑병원'),
('광양시','전라남도','061-797-4005','광양시보건소'),
('구례군','전라남도','061-780-3300','구례병원'),
('구례군','전라남도','061-780-2003','구례군보건의료원'),
('나주시','전라남도','061-330-6114','나주종합병원'),
('나주시','전라남도','061-333-3003','나주시보건소'),
('담양군','전라남도','061-380-9000','담양사랑병원'),
('담양군','전라남도','061-383-4000','담양군보건소'),
('목포시','전라남도','061-270-5800','목포한국병원'),
('목포시','전라남도','061-280-7500','목포기독병원'),
('목포시','전라남도','061-280-3000','의료법인목포구암의료재단 목포중앙병원'),
('목포시','전라남도','061-260-6500','목포시의료원'),
('목포시','전라남도','061-260-6713','의료법인해민의료재단 세안종합병원'),
('목포시','전라남도','061-260-3000','전남중앙병원'),
('목포시','전라남도','061-277-4000','목포시보건소'),
('무안군','전라남도','061-450-3111','의료법인대송의료재단 무안병원'),
('무안군','전라남도','061-450-5011','무안군보건소'),
('보성군','전라남도','061-850-3401','아산사회복지재단 보성아산병원'),
('보성군','전라남도','061-850-5656','보성군보건소'),
('순천시','전라남도','061-749-6905','순천시보건소'),
('순천시','전라남도','061-720-2000','성가롤로병원'),
('신안군','전라남도','061-243-8550','신안군보건소'),
('신안군','전라남도','061-262-3301','의료법인신안대우의료재단 신안대우병원'),
('여수시','전라남도','061-690-6000','여천전남병원'),
('여수시','전라남도','061-682-4000','여수시보건소'),
('영광군','전라남도','061-350-8091','영광종합병원'),
('영광군','전라남도','061-350-3000','의료법인 거명의료재단 영광기독병원'),
('영광군','전라남도','061-350-5552','영광군보건소'),
('영암군','전라남도','061-470-6524','영암군보건소'),
('완도군','전라남도','061-553-1234','완도대성병원'),
('완도군','전라남도','061-550-6720','완도군보건의료원'),
('장성군','전라남도','061-390-9000','의료법인행복나눔의료재단 장성병원'),
('장성군','전라남도','061-390-7559','장성군보건소'),
('장흥군','전라남도','061-862-8300','의료법인 우범의료재단 장흥종합병원'),
('장흥군','전라남도','061-862-4000','장흥군보건소'),
('진도군','전라남도','061-542-7575','진도한국병원'),
('진도군','전라남도','061-540-6003','진도군보건소'),
('함평군','전라남도','061-324-0001','의료법인인성의료재단 함평성심병원'),
('함평군','전라남도','061-320-3547','함평군보건소'),
('해남군','전라남도','061-536-4116','의료법인행촌의료재단 해남종합병원'),
('해남군','전라남도','061-530-7000','해남우리종합병원'),
('해남군','전라남도','061-533-4000','해남군보건소'),
('화순군','전라남도','061-370-3700','화순고려병원'),
('화순군','전라남도','061-379-7114','화순전남대학교병원'),
('화순군','전라남도','061-379-5369','화순군보건소'),
('경산시','경상북도','053-819-8800','의료법인 서명의료재단 세명병원'),
('경산시','경상북도','053-715-0100','의료법인 근원의료재단 경산중앙병원'),
('경산시','경상북도','053-810-6364','경산시보건소'),
('경주시','경상북도','054-748-9300','동국대학교의과대학경주병원'),
('경주시','경상북도','054-779-8573','경주시보건소'),
('고령군','경상북도','054-955-2661','의료법인영암의료재단고령영생병원'),
('구미시','경상북도','054-468-9114','순천향대학교 부속 구미병원'),
('구미시','경상북도','054-450-9700','차의과학대학교부속구미차병원'),
('구미시','경상북도','054-453-7575','구미강동병원'),
('구미시','경상북도','054-480-4010','구미시보건소'),
('군위군','경상북도','054-383-4000','군위군보건소'),
('김천시','경상북도','054-432-8901','경상북도김천의료원'),
('김천시','경상북도','054-420-9300','의료법인덕산의료재단김천제일병원'),
('김천시','경상북도','054-433-4000','김천시보건소'),
('문경시','경상북도','054-550-7700','의료법인동춘의료재단문경제일병원'),
('문경시','경상북도','054-555-2011','의료법인서일의료재단문경중앙병원'),
('문경시','경상북도','054-555-2033','문경시보건소'),
('봉화군','경상북도','054-673-4000','봉화군보건소'),
('봉화군','경상북도','054-674-0011','봉화해성병원'),
('상주시','경상북도','054-534-3501','상주적십자병원'),
('상주시','경상북도','054-532-5001','의료법인삼백의료재단상주성모병원'),
('상주시','경상북도','054-535-4000','상주시보건소'),
('성주군','경상북도','054-933-2400','성주군보건소'),
('안동시','경상북도','054-850-6000','경상북도안동의료원'),
('안동시','경상북도','054-840-1004','의료법인안동병원'),
('안동시','경상북도','054-850-8114','안동성소병원'),
('영덕군','경상북도','054-730-0114','영덕아산병원'),
('영양군','경상북도','054-680-5151','영양군보건소'),
('영양군','경상북도','054-682-0727','의료법인명성의료재단영양병원'),
('영주시','경상북도','054-631-4000','영주시보건소'),
('영천시','경상북도','054-338-9000','영남대학교의과대학부속영천병원'),
('영천시','경상북도','054-339-7860','영천시보건소'),
('예천군','경상북도','054-654-6611','예천권병원'),
('울릉군','경상북도','054-790-6871','울릉군보건의료원'),
('울진군','경상북도','054-785-7015','울진군의료원'),
('의성군','경상북도','054-830-6660','의성군보건소'),
('청도군','경상북도','054-373-0606','의료법인대남의료재단청도대남병원'),
('청송군','경상북도','054-870-7100','청송군보건의료원'),
('칠곡군','경상북도','054-971-1004','의료법인왜관병원'),
('포항시 북구','경상북도','054-270-4114','포항시북구보건소'),
('포항시 남구','경상북도','054-270-4004','포항시남구보건소'),
('포항시 남구','경상북도','054-275-0005','의료법인한성재단포항세명기독병원'),
('포항시 남구','경상북도','054-272-0151','포항성모병원'),
('포항시 북구','경상북도','054-247-0551','경상북도포항의료원'),
('거제시','경상남도','055-733-0000','의료법인 거붕 백병원'),
('거제시','경상남도','055-680-8114','의료법인 대우의료재단대우병원'),
('거제시','경상남도','055-639-6200','거제시보건소'),
('거창군','경상남도','055-944-3251','거창적십자병원'),
('거창군','경상남도','055-940-8310','거창군보건소'),
('고성군','경상남도','055-670-4001','고성군보건소'),
('김해시','경상남도','055-330-6000','의료법인보원의료재단 경희의료원교육협력 중앙병원'),
('김해시','경상남도','055-330-0300','의료법인환명의료재단 조은금강병원'),
('김해시','경상남도','055-310-6000','의료법인갑을의료재단 갑을장유병원'),
('김해시','경상남도','055-330-4451','김해시보건소'),
('남해군','경상남도','055-863-2201','의료법인 이도의료재단 남해병원'),
('남해군','경상남도','055-860-8701','남해군보건소'),
('밀양시','경상남도','055-354-2200','의료법인 생명사랑의료재단 밀양윤병원'),
('밀양시','경상남도','055-359-7020','밀양시보건소'),
('사천시','경상남도','055-835-9900','의료법인승연의료재단 삼천포서울병원'),
('사천시','경상남도','055-831-3560','사천시보건소'),
('산청군','경상남도','055-970-7500','산청군보건의료원'),
('양산시','경상남도','055-360-1000','양산부산대학교병원'),
('양산시','경상남도','055-384-9901','베데스다복음병원'),
('양산시','경상남도',-9182,'웅상중앙병원'),
('양산시','경상남도','055-392-5102','양산시보건소'),
('의령군','경상남도','055-573-4100','의령병원'),
('의령군','경상남도','055-570-4010','의령군보건소'),
('진주시','경상남도','055-750-8000','경상국립대학교병원'),
('진주시','경상남도','055-750-7123','제일병원'),
('진주시','경상남도','055-751-2500','진주고려병원'),
('진주시','경상남도','055-747-6000','반도병원'),
('진주시','경상남도','055-743-2580','진주복음병원'),
('진주시','경상남도','055-760-7578','진주세란병원'),
('진주시','경상남도','055-759-7777','한일병원'),
('진주시','경상남도','055-741-4000','진주시보건소'),
('창녕군','경상남도','055-530-5000','태황의료재단한성병원'),
('창녕군','경상남도','055-530-6202','창녕군보건소'),
('창원시 성산구','경상남도','055-225-4000','창원시창원보건소'),
('창원시 마산합포구','경상남도','055-243-0100','의료법인합포의료재단에스엠지연세병원'),
('창원시 마산합포구','경상남도','055-245-4000','창원시마산보건소'),
('창원시 진해구','경상남도','055-225-6101','창원시진해보건소'),
('창원시 진해구','경상남도','055-548-7700','연세에스병원'),
('창원시 진해구','경상남도','055-540-3700','의료법인염광의료재단세광병원'),
('창원시 마산회원구','경상남도','055-233-8899','학교법인성균관대학삼성창원병원'),
('창원시 마산합포구','경상남도','055-249-1000','경상남도마산의료원'),
('창원시 성산구','경상남도','055-214-2000','창원경상국립대학교병원'),
('창원시 의창구','경상남도','055-225-0000','창원한마음병원'),
('창원시 성산구','경상남도','055-280-7619','근로복지공단 창원병원'),
('창원시 의창구','경상남도','055-270-1000','재단법인대구포교성베네딕도수녀회창원파티마병원'),
('통영시','경상남도','055-644-8901','통영적십자병원'),
('통영시','경상남도','055-650-6010','통영시보건소'),
('하동군','경상남도','055-880-4200','새하동병원'),
('하동군','경상남도','055-882-4000','하동군보건소'),
('함안군','경상남도','055-586-2000','시영의료재단 영동병원'),
('함안군','경상남도','055-580-3101','함안군보건소'),
('함양군','경상남도','055-963-4322','함양성심병원'),
('함양군','경상남도','055-960-5331','함양군보건소'),
('합천군','경상남도','055-933-2200','삼성합천병원'),
('합천군','경상남도','055-930-3681','합천군보건소'),
('서귀포시','제주특별자치도','064-730-3000','제주특별자치도 서귀포의료원'),
('서귀포시','제주특별자치도','064-762-8001','서귀포열린병원'),
('제주시','제주특별자치도','064-717-1114','제주대학교병원'),
('제주시','제주특별자치도','064-740-5000','제주한라병원'),
('제주시','제주특별자치도','064-750-9000','한마음병원'),
('제주시','제주특별자치도','064-750-0000','의료법인 혜인의료재단 한국병원'),
('제주시','제주특별자치도','064-786-7000','의료법인 중앙의료재단 중앙병원'),
('동대문구','서울특별시','02-920-9307','서울특별시 동부병원'),
('양천구','서울특별시',-8254,'서울특별시서남병원'),
('영등포구','서울특별시',-9236,'가톨릭대학교 여의도성모병원'),
('영등포구','서울특별시','02-1899-1475','명지성모병원'),
('종로구','서울특별시','02-2002-8000','서울적십자병원'),
('북구','부산광역시','051-330-3000','의료법인 인당의료재단 부민병원'),
('서구','부산광역시',-9993,'삼육부산병원'),
('중구','부산광역시','051-465-8801','재단법인천주교부산교구유지재단 메리놀병원'),
('광산구','광주광역시','062-975-9000','KS병원'),
('고양시 일산동구','경기도','031-1577-7000','동국대학교일산불교병원'),
('과천시','경기도','02-2150-3811','과천시보건소'),
('부천시','경기도','032-625-4204','부천시보건소'),
('부천시','경기도','032-625-4352','오정보건소'),
('부천시','경기도','032-625-4253','소사보건소'),
('성남시 중원구','경기도','031-743-3000','성남중앙병원'),
('안산시 상록구','경기도','031-481-5551','상록수보건소'),
('화성시','경기도','031-8077-7200','의료법인 원광의료재단 원광종합병원'),
('화성시','경기도',-7582,'화성디에스병원'),
('동해시','강원도','033-530-2401','동해시보건소'),
('속초시','강원도','033-631-4000','속초시보건소'),
('양구군','강원도','033-481-2400','양구군보건소'),
('철원군','강원도','033-450-5550','철원군보건소'),
('제천시','충청북도','043-640-8114','의료법인명지의료재단명지병원'),
('아산시','충청남도','041-537-3450','아산시보건소'),
('천안시 서북구','충청남도','041-521-2552','천안시서북구보건소'),
('천안시 동남구','충청남도','041-521-2655','천안시동남구보건소'),
('군산시','전라북도','063-462-4923','군산시보건소'),
('고령군','경상북도','054-954-1300','고령군보건소'),
('안동시','경상북도','054-855-5986','안동시보건소'),
('예천군','경상북도','054-654-4000','예천군보건소'),
('칠곡군','경상북도','054-973-4000','칠곡군보건소'),
('전주시 덕진구','전라북도','063-250-1114','전북대학교병원'),
('순천시','전라남도','061-740-5000','의료법인한국의료재단 순천한국병원'),
('목포시','전라남도','061-280-1114','국립목포병원'),
('여수시','전라남도','061-653-2000','여수한국병원'),
('거제시','경상남도','055-731-1240','의료법인 성념의료재단맑은샘병원'),
('동대문구','서울특별시','02-966-1616','서울성심병원'),
('천안시 동남구','충청남도','041-590-9000','천안우리병원'),
('순천시','전라남도','061-720-7575','근로복지공단 순천병원'),
('보성군','전라남도','061-859-5000','의료법인삼호의료재단 삼호병원'),
('사천시','경상남도','055-833-4400','삼천포제일병원'),
('남구','대구광역시','053-620-9100','굿모닝병원'),
('달서구','대구광역시','053-550-5000','더블유병원'),
('달서구','대구광역시','053-215-6200','의료법인 일민의료재단 세강병원'),
('울주군','울산광역시','052-229-8618','남부통합보건지소'),
('전주시 덕진구','전라북도','063-240-8800','의료법인영경의료재단호성전주병원'),
('김천시','경상북도','054-436-2191','김천소년교도소부속의원'),
('고양시 일산동구','경기도','031-977-5000','의료법인일산복음병원'),
('의왕시','경기도','031-340-0114','아가페의료재단 시티병원'),
('성동구','서울특별시','02-499-7785','성동군자의원'),
('북구','대구광역시','053-715-7575','근로복지공단 대구병원'),
('미추홀구','인천광역시','032-457-2000','의료법인 인천사랑병원'),
('여수시','전라남도','061-640-7128','여수전남병원'),
('청도군','경상북도','054-370-6462','화양보건지소'),
('여주시','경기도','031-885-7582','연세새로운병원'),
('구로구','서울특별시','02-2067-1500','구로성심병원'),
('영주시','경상북도','054-630-0100','영주적십자병원'),
('사상구','부산광역시','051-601-6000','한국보훈복지의료공단 부산보훈병원'),
('남양주시','경기도','031-590-8040','동부보건지소'),
('제주시','제주특별자치도','064-728-4010','제주시제주보건소'),
('제주시','제주특별자치도','064-728-4202','제주시동부보건소'),
('서귀포시','제주특별자치도','064-764-1856','서귀포시동부보건소'),
('김포시','경기도',-1811,'히즈메디병원'),
('울진군','경상북도','054-783-1250','울진군보건소'),
('부산진구','부산광역시','051-607-0133','의료법인 온그룹의료재단 온종합병원'),
('영도구','부산광역시','051-414-8101','영도병원'),
('달서구','대구광역시','053-651-3232','보광병원'),
('달서구','대구광역시','053-659-3100','삼일병원'),
('포천시','경기도','031-538-4194','소흘보건지소'),
('포천시','경기도','031-538-4544','일동보건지소'),
('청송군','경상북도',-10686,'경북북부제2교도소 부속의원'),
('동작구','서울특별시',-2914,'중앙대학교병원'),
('은평구','서울특별시','02-3156-3000','서울특별시서북병원'),
('의정부시','경기도','031-856-8111','의료법인 영동의료재단 의정부백병원'),
('금천구','서울특별시','02-804-0002','희명병원'),
('남구','대구광역시','053-640-8800','드림종합병원'),
('서귀포시','제주특별자치도','064-733-4000','서귀포보건소'),
('서귀포시','제주특별자치도','-064-','서귀포시서부보건소'),
('은평구','서울특별시','02-350-3300','의료법인 청구성심병원'),
('종로구','서울특별시','02-397-3915','서울지구병원'),
('청도군','경상북도','054-370-6472','청도군보건소'),
('영덕군','경상북도','054-734-2118','영덕군보건소'),
('동구','부산광역시','051-644-2002','좋은문화병원'),
('해운대구','부산광역시',-8602,'의료법인 인당의료재단 해운대부민병원'),
('중구','인천광역시','032-760-8991','인천광역시중구용유보건지소'),
('중구','인천광역시','032-760-6800','인천광역시중구영종보건지소'),
('금정구','부산광역시','051-500-9700','세웅병원'),
('성남시 분당구','경기도','031-725-6075','국군수도병원'),
('성남시 분당구','경기도','031-787-2114','분당서울대학교병원'),
('청주시 흥덕구','충청북도','043-910-7575','재단법인베스티안재단베스티안병원'),
('부산진구','부산광역시','051-638-8000','학교법인 춘해병원'),
('부천시','경기도',-8276,'부천세종병원'),
('기장군','부산광역시','051-723-0171','(의)서일의료재단기장병원'),
('구미시','경상북도','054-450-5634','구미시선산보건소'),
('부산진구','부산광역시','051-867-5101','학교법인)동의병원'),
('북구','부산광역시','051-330-2001','구포성심병원'),
('달서구','대구광역시','053-560-9114','의료법인구의료재단 구병원'),
('용인시 처인구','경기도','031-337-0114','(의)효심의료재단 용인서울병원'),
('부여군','충청남도','041-835-7582','성요셉연합의원'),
('제주시','제주특별자치도','064-728-4114','제주시서부보건소'),
('북구','대구광역시','053-320-2500','대구가톨릭대학교 칠곡가톨릭병원'),
('아산시','충청남도','041-546-3636','현대병원'),
('세종특별자치시','세종특별자치시','044-995-4101','세종충남대학교병원'),
('양천구','서울특별시','02-2693-5555','홍익병원'),
('동구','대전광역시','042-606-1000','대전한국병원'),
('정선군','강원도','033-592-3121','재)정선의료재단 군립병원'),
('영도구','부산광역시','051-412-6161','의료법인 행도의료재단 해동병원'),
('영등포구','서울특별시','02-2635-2809','의료법인 인봉의료재단 영등포병원'),
('파주시','경기도','031-9431-1912','메디인병원'),
('구리시','경기도','031-550-1111','재단법인원진녹색병원'),
('순천시','전라남도','061-759-9440','전라남도순천의료원'),
('경주시','경상북도','054-744-7583','한빛아동병원'),
('은평구','서울특별시',-8414,'서울특별시은평병원'),
('의정부시','경기도','031-951-1000','학교법인 을지학원 의정부을지대학교병원'),
('함안군','경상남도','055-582-8088','의료법인 학산의료재단 아라한국병원'),
('중랑구','서울특별시','02-490-2000','녹색병원'),
('동래구','부산광역시','051-531-6000','동래봉생병원'),
('안산시 상록구','경기도','031-439-3000','의료법인칠석의료재단사랑의병원'),
('세종특별자치시','세종특별자치시','044-850-7700','의료법인 영제 의료재단 엔케이세종병원'),
('달서구','대구광역시','053-630-7000','한국보훈복지의료공단 대구보훈병원'),
('동래구','부산광역시','051-503-2111','의료법인 광혜의료재단 광혜병원'),
('의성군','경상북도','054-834-3881','공생병원'),
('포천시','경기도','031-542-0222','의료법인일심의료재단우리병원'),
('화순군','전라남도','061-370-9114','화순성심병원');