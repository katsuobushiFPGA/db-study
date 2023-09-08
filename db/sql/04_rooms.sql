CREATE TABLE rooms (
    room_number VARCHAR(10) PRIMARY KEY,
    room_type VARCHAR(50) NOT NULL,
    max_occupancy INT NOT NULL,
    rate DECIMAL(10, 2) NOT NULL,
    is_available BOOLEAN DEFAULT TRUE
);

-- ホテルの部屋情報のダミーレコードを挿入
INSERT INTO rooms (room_number, room_type, max_occupancy, rate, is_available)
VALUES
    ('101', 'シングル', 1, 100.00, TRUE),
    ('102', 'ダブル', 2, 150.00, TRUE),
    ('103', 'スイート', 4, 250.00, TRUE);