-- 部活テーブル
create table clubs (
	club_id INT NOT NULL PRIMARY KEY
	, club_name VARCHAR(50) NOT NULL
	, created_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
	, updated_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- メンバーテーブルの作成
create table members (
	member_no INT NOT NULL PRIMARY KEY
	, member_name VARCHAR(50) NOT NULL
	, club_id INT DEFAULT NULL
	, created_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
	, updated_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
	, foreign key (`club_id`) references `clubs` (`club_id`)
);
INSERT INTO `clubs` (club_id, club_name) VALUES
  (1, 'サッカー部'),
  (2, '野球部'),
  (3, '卓球部'),
  (4, 'ソフトテニス部'),
  (5, 'バドミントン部');

INSERT INTO `members` (member_no, member_name, club_id) VALUES
  (1, '田中 太郎', 1),
  (2, '鈴木 寮', 1),
  (3, '佐藤 一', 2),
  (4, '山田 信士', 3),
  (5, '工藤 力', 4),
  (6, '宇都宮 宇津', 5);

