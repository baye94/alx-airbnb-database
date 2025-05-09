-- ===============================
-- USERS
-- ===============================
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Doe', 'alice@example.com', 'hashed_pwd_1', '1234567890', 'guest', CURRENT_TIMESTAMP),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_pwd_2', '0987654321', 'host', CURRENT_TIMESTAMP),
  ('33333333-3333-3333-3333-333333333333', 'Admin', 'User', 'admin@example.com', 'hashed_pwd_3', NULL, 'admin', CURRENT_TIMESTAMP);

-- ===============================
-- PROPERTIES
-- ===============================
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
  ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Cozy Apartment', 'Nice place downtown', 'Paris', 120.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Seaside Villa', 'Amazing sea view', 'Nice', 300.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- ===============================
-- BOOKINGS
-- ===============================
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
  ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-06-10', '2025-06-15', 600.00, 'confirmed', CURRENT_TIMESTAMP),
  ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-07-01', '2025-07-07', 1800.00, 'pending', CURRENT_TIMESTAMP);

-- ===============================
-- PAYMENTS
-- ===============================
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method) VALUES
  ('ccccccc1-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 600.00, CURRENT_TIMESTAMP, 'credit_card');

-- ===============================
-- REVIEWS
-- ===============================
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at) VALUES
  ('ddddddd1-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Fantastic place, very clean!', CURRENT_TIMESTAMP),
  ('ddddddd2-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 4, 'Great location, but a bit noisy.', CURRENT_TIMESTAMP);

-- ===============================
-- MESSAGES
-- ===============================
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
  ('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeeee', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi! Is the apartment available in June?', CURRENT_TIMESTAMP),
  ('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeeee', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Yes, it is! You can book it now.', CURRENT_TIMESTAMP);
