INSERT INTO
	public.status (title, description, created_at, updated_at, step)
VALUES
	(
		'Đã gửi',
		'Sinh viên tự đánh giá và gửi đến ban cán sự lớp đánh giá lại',
		'2022-12-01',
		NULL,
		1
	),
	(
		'Lớp đã xét duyệt',
		'Sinh viên ban cán sự đã chấm điểm xét duyệt',
		'2022-12-01',
		NULL,
		2
	),
	(
		'CVHT đã xác nhận',
		'Cố vấn học tập đã xác nhận phiếu điểm này chính xác',
		'2022-12-02',
		NULL,
		3
	),
	(
		'Hội đồng Khoa thông qua',
		'Đã được hội đồng cấp khoa đồng ý',
		'2022-12-02',
		NULL,
		4
	),
	(
		'Hội đồng Trường thông qua',
		'Đã được hội đồng cấp khoa đồng ý',
		'2022-12-02',
		NULL,
		5
	),
	(
		'Hiệu trưởng phê duyệt',
		'Đã được Hiệu trưởng phê duyệt',
		'2022-12-02',
		NULL,
		6
	),
	(
		'Đã công bố',
		'Phiếu điểm được ghi nhận thành điểm chính thức',
		'2022-12-02',
		NULL,
		7
	);

INSERT INTO
	public."period" (title, "start", "end")
VALUES
	(
		'Học Kỳ I 2019 - 2020',
		'2019-12-03',
		'2020-01-03'
	),
	(
		'Học Kỳ II 2019 - 2020',
		'2020-05-03',
		'2020-06-03'
	),
	(
		'Học Kỳ I 2020 - 2021',
		'2020-12-03',
		'2021-01-03'
	),
	(
		'Học Kỳ II 2020 - 2021',
		'2021-05-03',
		'2021-06-03'
	),
	(
		'Học Kỳ I 2021 - 2022',
		'2021-12-03',
		'2022-01-03'
	),
	(
		'Học Kỳ II 2021 - 2022',
		'2022-05-03',
		'2022-06-03'
	),
	(
		'Học Kỳ I 2022 - 2023',
		'2022-11-03',
		'2022-12-31'
	);

INSERT INTO
	public.notifications (
		title,
		"content",
		status,
		created_at,
		updated_at,
		period_id
	)
VALUES
	(
		'Thông báo: Về việc tổ chức đánh giá kết quả rèn luyện',
		'Sinh viên thực hiện đánh giá rèn luyện thông qua chức năng "Tạo phiếu đánh giá" hoặc bấm nút ở bên dưới. Hạn cuối: 20/12/2022',
		'public',
		'2022-12-25',
		NULL,
		7
	),
	(
		'Thông báo: Về việc tổ chức đánh giá kết quả rèn luyện',
		'Sinh viên thực hiện đánh giá rèn luyện thông qua chức năng "Tạo phiếu đánh giá" hoặc bấm nút ở bên dưới. Hạn cuối: 20/06/2020',
		'draft',
		'2022-12-23',
		NULL,
		2
	),
	(
		'Thông báo: Về việc tổ chức đánh giá kết quả rèn luyện',
		'Sinh viên thực hiện đánh giá rèn luyện thông qua chức năng "Tạo phiếu đánh giá" hoặc bấm nút ở bên dưới. Hạn cuối: 30/11/2019',
		'draft',
		'2022-12-05',
		NULL,
		1
	);

-- major
INSERT INTO
	public.major ("name")
VALUES
	('Hệ thống thông tin quản lý'),
	('Kinh tế'),
	('Kiểm toán'),
	('Quản trị kinh doanh'),
	('Tài chính - Ngân hàng'),
	('Kinh doanh nông nghiệp'),
	('Kinh doanh thương mại'),
	('Kinh tế và Quản lý du lịch'),
	('Kế hoạch - Đầu tư'),
	('Kinh tế chính trị'),
	('Kinh tế nông nghiệp'),
	('Kế toán'),
	('Marketing'),
	('Quản trị nhân lực'),
	('Thống kê kinh tế'),
	('Thương mại điện tử'),
	('Tài chính'),
	('Ngân hàng');

INSERT INTO
	public."class" (major_id, full_name, short_name)
VALUES
	(15, 'K53 Thống Kê Kinh Doanh', 'K53 TKKD'),
	(12, 'K53 Kế Toán', 'K53 KETOAN'),
	(17, 'K53 Tài Chính', 'K53 TAICHINH'),
	(1, 'K54 Tin Học Kinh Tế', 'K54 THKT'),
	(1, 'K53 Tin Học Kinh Tế', 'K53 THKT'),
	(16, 'K53 Thương Mại Điện Tử', 'K53 TMDT');

INSERT INTO
	public."role" ("name", role_code)
VALUES
	('Phòng CTSV', '1'),
	('CVHT', '2'),
	('Ban cán sự', '3'),
	('Sinh viên', '4');

INSERT INTO
	public.account (
		email,
		"password",
		register_date,
		last_login,
		role_id
	)
VALUES
	(
		'ctsv@hce.edu.vn',
		'123456',
		'2022-12-05 21:46:50.115',
		'2022-12-25 15:48:53.000',
		1
	),
	(
		'cvht@hce.edu.vn',
		'123456',
		'2022-12-08 18:42:30.124',
		'2022-12-25 16:51:53.000',
		2
	),
	(
		'19K4081019@hce.edu.vn',
		'111111',
		'2022-12-08 19:19:34.137',
		'2022-12-25 16:16:08.000',
		3
	),
	(
		'19K4081028@hce.edu.vn',
		'111111',
		'2022-12-24 16:23:03.512',
		'2022-12-25 16:21:48.000',
		4
	),
	(
		'19K4081031@hce.edu.vn',
		'111111',
		'2022-12-25 16:06:03.002',
		'2022-12-25 16:48:01.000',
		4
	),
	(
		'19K4081000@hce.edu.vn',
		'111111',
		'2022-12-25 16:50:09.952',
		'2022-12-25 16:50:16.000',
		3
	);

-- info
INSERT INTO
	public.manager (manager_id, "name", phone, address, acc_id)
VALUES
	(
		'CTSV_001',
		'Cán Bộ CTSV',
		'02343.691.333 ',
		'99 Hồ Đắc Di, TP Huế',
		1
	);

INSERT INTO
	teacher (teacher_id, "name", unit, phone, acc_id, address)
VALUES
	(
		'GV-HTTTKT-01',
		'TS. Nguyễn Thanh Tuấn',
		'HTTTKT',
		'036 888 888',
		2,
		'Huế'
	);

INSERT INTO
	student (
		student_id,
		"name",
		birthday,
		is_leader,
		acc_id,
		address,
		class_id,
		gender,
		phone
	)
VALUES
	(
		'19K4081019',
		'Phan Thị Cẩm Nhi',
		'2000-12-30 20:00:00.000',
		true,
		3,
		'Huế',
		5,
		'Nữ',
		'03666666'
	),
	(
		'19K4081028',
		'Lê Đình Thảng',
		'2001-10-28 17:00:00.000',
		NULL,
		4,
		'Huế',
		5,
		'Nam',
		'0362952739'
	),
	(
		'19K4081031',
		'Nguyễn Thị Bảo Trâm',
		'2001-04-03 10:00:00.000',
		NULL,
		5,
		'Phong Điền, Huế',
		1,
		'Nữ',
		'036 666 000'
	),
	(
		'19K4081000',
		'Lương Thị Hoàng Uyên',
		'2000-12-31 17:00:00.000',
		true,
		6,
		'Huế',
		1,
		'Nữ',
		'09090909'
	);

-- criteria - group
INSERT INTO
	public.group_criteria (title, "index")
values
	(
		'Phần I. Đánh giá về ý thức học tập (0 - 20 điểm) ',
		1
	),
	(
		'Phần II. Đánh giá về ý thức và kết quả chấp hành nội quy, quy chế trong trường (0 - 25 điểm)',
		2
	),
	(
		'Phần III: Đánh giá về ý thức và kết quả tham gia các hoạt động chính trị - xã hội, văn hoá, thể thao, phòng chống các tệ nạn xã hội (0 - 20 điểm)',
		3
	),
	(
		'Phần IV: Đánh giá về phẩm chất công dân và quan hệ với cộng đồng (0 - 25 điểm)',
		4
	),
	(
		'Phần V. Đánh giá về ý thức và kết quả tham gia công tác Đảng, Đoàn, Hội, Lớp trong trường hoặc đạt được thành tích đặc biệt trong học tập, rèn luyện (0 - 10 điểm)',
		5
	);

INSERT INTO
	public.criteria (title, max, group_id)
VALUES
	(
		'1. Đi học đúng giờ, nghiêm túc, trật tự trong giờ học',
		6,
		1
	),
	(
		'2. Chấp hành nghiêm chỉnh quy chế thi, kiểm tra',
		4,
		1
	),
	(
		'3. Là chủ trì hoặc thành viên các nhóm NCKH',
		2,
		1
	),
	(
		'4. Tham gia các nhóm Khởi nghiệp, các cuộc thi về chuyên môn từ cấp Khoa trở lên',
		2,
		1
	),
	('5. Kết quả học tập', 6, 1),
	(
		'1. Tham gia tuần lễ sinh hoạt công dân sinh viên đầy đủ, đúng giờ',
		6,
		2
	),
	(
		'2. Hoàn thành đúng hạn việc bổ sung hồ sơ sinh viên theo thông báo của nhà trường',
		5,
		2
	),
	(
		'3. Chấp hành nghiêm túc các quyết định điều động của nhà trường',
		3,
		2
	),
	(
		'4. Mang bảng tên, trang phục nghiêm túc khi đến trường',
		5,
		2
	),
	('5. Đóng học phí đầy đủ, đúng kỳ hạn', 6, 2),
	(
		'1. Tham gia đầy đủ các buổi sinh hoạt lớp',
		4,
		3
	),
	('2. Là thành viên câu lạc bộ, đội nhóm', 3, 3),
	(
		'3. Tham gia các hoạt động do câu lạc bộ, đội nhóm, lớp tổ chức',
		2,
		3
	),
	(
		'4. Tham gia các hoạt động VH, VN, TDTT từ cấp Khoa trở lên tổ chức',
		5,
		3
	),
	(
		'5. Là thành viên Đội đại sứ hoặc có Tham gia tư vấn tuyển sinh hàng năm',
		2,
		3
	),
	(
		'6. Tham gia các hoạt động tình nguyện hè, tình nguyện quốc tế, mittinh, diễu hành, các cuộc thi tìm hiểu phòng chống ma tuý do các cấp tổ chức.',
		4,
		3
	),
	(
		'1. Chấp hành nghiêm chỉnh các chủ trương của Đảng, chính sách và  pháp luật của Nhà nước',
		5,
		4
	),
	(
		'2. Tham gia các hoạt động xã hội, nhân đạo, từ thiện vì cộng đồng',
		5,
		4
	),
	(
		'3. Tham gia giữ gìn trật tự, an ninh, dũng cảm đấu tranh bảo vệ pháp luật, lễ phép và tôn trọng mọi người',
		5,
		4
	),
	(
		'4. Tham gia các hoạt động VH, VN, TDTT do địa phương tổ chức',
		5,
		4
	),
	(
		'5. Có tinh thần chia sẻ, giúp đỡ người thân, những người gặp khó khăn, hoạn nạn',
		5,
		4
	),
	(
		'1. Là Ban cán sự lớp, Ban chấp hành Chi đoàn, Ban chủ nhiệm Câu lạc bộ, Đội nhóm hoàn thành tốt nhiệm vụ',
		2,
		5
	),
	(
		'2. Là cán bộ Đoàn, Hội cấp trường, cấp Đại học Huế hoàn thành tốt nhiệm vụ',
		2,
		5
	),
	(
		'3: Có giấy khen, bằng khen do các cấp trao tặng (Cấp trường được 1, cấp Đại học Huế 2, cấp Tỉnh hoặc TW 3 điểm)',
		3,
		5
	),
	(
		'4. Đạt danh hiệu Sinh viên 5 tốt hoặc Sao tháng giêng (Cấp trường được 1, cấp Đại học Huế được 2, cấp Tỉnh hoặc TW được 3 điểm)',
		3,
		5
	);

INSERT INTO
	teacher_class (teacher_id, class_id, start_date, end_date)
VALUES
	(1, 1, '2022-12-25', '2022-12-25'),
	(1, 5, '2022-12-25', '2022-12-25');

-- form
INSERT INTO
	pointsform (
		period_id,
		student_id,
		created_at,
		updated_at,
		status_id,
		confirm_point,
		result_point
	)
VALUES
	(7, 1, '2022-12-25', NULL, 7, 90, 90),
	(7, 2, '2022-12-25', NULL, 7, 90, 90),
	(7, 3, '2022-12-25', NULL, 7, 79, 80),
	(7, 4, '2022-12-25', NULL, 7, 78, 78);

-- detail
INSERT INTO
	points_criteria_list (criteria_id, form_id, self_point, approval_point)
VALUES
	(2, 1, 4, 4),
	(9, 1, 5, 5),
	(10, 1, 6, 6),
	(1, 1, 5, 5),
	(7, 1, 5, 5),
	(6, 1, 4, 5),
	(5, 1, 6, 6),
	(4, 1, 2, 2),
	(8, 1, 3, 3),
	(11, 1, 4, 4),
	(16, 1, 4, 4),
	(20, 1, 5, 5),
	(18, 1, 5, 5),
	(21, 1, 5, 5),
	(15, 1, 2, 2),
	(13, 1, 2, 2),
	(17, 1, 5, 5),
	(19, 1, 5, 5),
	(14, 1, 5, 5),
	(23, 1, 2, 2),
	(12, 1, 3, 3),
	(24, 1, 0, 0),
	(22, 1, 2, 2),
	(25, 1, 0, 0),
	(3, 1, 2, 2),
	(1, 2, 6, 5),
	(4, 2, 2, 2),
	(5, 2, 6, 0),
	(3, 2, 2, 2),
	(2, 2, 4, 4),
	(12, 2, 3, 3),
	(14, 2, 5, 5),
	(7, 2, 5, 5),
	(10, 2, 6, 6),
	(6, 2, 4, 4),
	(9, 2, 5, 4),
	(17, 2, 0, 0),
	(23, 2, 2, 2),
	(15, 2, 2, 2),
	(11, 2, 4, 4),
	(8, 2, 3, 3),
	(22, 2, 2, 2),
	(18, 2, 5, 5),
	(21, 2, 5, 5),
	(13, 2, 2, 2),
	(24, 2, 3, 3),
	(19, 2, 5, 0),
	(20, 2, 5, 5),
	(16, 2, 4, 4),
	(25, 2, 0, 3),
	(4, 3, 2, 2),
	(6, 3, 6, 6),
	(1, 3, 5, 6),
	(24, 3, 0, 3),
	(2, 3, 4, 4),
	(3, 3, 2, 2),
	(5, 3, 6, 6),
	(9, 3, 5, 5),
	(10, 3, 6, 6),
	(25, 3, 0, 0),
	(7, 3, 5, 5),
	(8, 3, 3, 3),
	(17, 3, 5, 5),
	(11, 3, 4, 4),
	(21, 3, 5, 5),
	(20, 3, 5, 5),
	(19, 3, 5, 5),
	(12, 3, 3, 3),
	(18, 3, 5, 0),
	(14, 3, 5, 5),
	(23, 3, 0, 2),
	(15, 3, 2, 2),
	(13, 3, 2, 2),
	(22, 3, 2, 2),
	(16, 3, 4, 4),
	(9, 4, 0, 4),
	(8, 4, 0, 3),
	(17, 4, 5, 5),
	(16, 4, 4, 0),
	(24, 4, 3, 0),
	(12, 4, 3, 3),
	(18, 4, 4, 4),
	(14, 4, 5, 4),
	(22, 4, 2, 2),
	(10, 4, 0, 4),
	(20, 4, 5, 5),
	(23, 4, 2, 2),
	(25, 4, 3, 3),
	(15, 4, 2, 2),
	(21, 4, 5, 4),
	(13, 4, 2, 2),
	(11, 4, 4, 4),
	(5, 4, 6, 6),
	(6, 4, 6, 4),
	(7, 4, 0, 4),
	(19, 4, 5, 0),
	(1, 4, 4, 3),
	(2, 4, 4, 4),
	(4, 4, 2, 2),
	(3, 4, 2, 2);