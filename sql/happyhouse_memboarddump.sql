--
-- Dumping data for table `member`
--
insert into member
values ('ssafy', 'ssafy', '김싸피', 'ssafy@ssafy.com', now());

insert into member
values ('admin', 'admin', '관리자', 'admin@ssafy.com', now());


--
-- Dumping data for table `notice`
--
insert into notice (userid, subject, content) values
('admin', 'SSAFY HAPPYHOUSE 사이트 오픈 예정', '감사합니다.'),
('admin', 'SSAFY HAPPYHOUSE 사이트가 오픈했습니다.', '감사합니다.'),
('admin', '공지사항 게시판 규칙', '규칙입니다.'),
('admin', 'SSAFY HAPPYHOUSE 운영 방침', '방침은 이러이러합니다.'),
('ssafy', '관심지역 저장 기능 추가', '관심지역을 저장할 수 있습니다.'),
('ssafy', 'HAPPYHOUSE 배너 추가', '배너가 추가되었습니다.'),
('ssafy', 'QnA 게시판 신설', 'QnA 게시판이 신설되었습니다.'),
('ssafy', '지도 탐색 기능 추가', '카카오맵 API를 사용하였습니다.'),
('ssafy', '아파트 매매 평균가 그래프 추가', '구글 차트 API를 사용하였습니다.'),
('ssafy', '코로나 선별 진료소 검색 가능', '코로나 조심하세요.'),
('ssafy', '오늘의 날씨', '현재 10도 맑음입니다.'),
('ssafy', '새로운 공지사항', '새로운 공지사항입니다.');


--
-- Dumping data for table `qna`
--
insert into qna (userid, subject, content) values
('ssafy', '이렇게 상가건물에 대해 나오는 어플은 뭘까요?', '궁금합니다.'),
('ssafy', '여러분이라면???? 분양권 팔겠습니까?', '궁금합니다.'),
('ssafy', '종합부동산세 고지(신고) 및 납부 관련 문답', '궁금합니다.'),
('ssafy', '매도자가 부동산 직거래 시 주의할게 뭐가 있을까요?', '궁금합니다.'),
('ssafy', '경기도 대단지 vs 서울 나홀로 (내용 추가했습니다)', '궁금합니다.'),
('ssafy', '임대차3법의 미래는 어떻게될까요?', '궁금합니다.'),
('ssafy', '전세갱신청구 계약기간 지나버렸는데요', '궁금합니다.'),
('ssafy', '법무통으로 계약할때요', '궁금합니다.'),
('ssafy', ' 중도금 대출 가능한지요?', '궁금합니다.'),
('ssafy', '주택임대사업자 등록된 물량 체크 이렇게 보는게 맞나요?', '궁금합니다.'),
('ssafy', '북가좌동 빌라 투자로 괜찮은거같은데 어떨까요?', '궁금합니다.'),
('ssafy', '1세대 1주택자의 기준이 궁금합니다', '궁금합니다.');

--
-- Dumping data for table `memo`
--
insert into memo (userid, comment, articleno) values
('admin', '답변드립니다. 이 어플은 이런이런어플인 것 같습니다.', 1),
('admin', '이렇게 처리하시면 됩니다.', 7),
('admin', '네 가능합니다.', 9),
('admin', '관련 사항은 주택 사이트를 참고하시기 바랍니다.', 10),
('admin', '저도 그렇다고 생각합니다.', 11);
