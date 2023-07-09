DROP PROCEDURE IF EXISTS UpdateBooking;

DELIMITER //
BEGIN
CREATE PROCEDURE UpdateBooking(IN updateid INT, IN bookingdate DATE)
Update bookings
SET BookingDate = bookingdate
WHERE BookingID = updateid
END // DELIMITER;

Call UpdateBooking(9, "2022-12-17");