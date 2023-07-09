DROP PROCEDURE IF EXISTS CancelBooking;
DELIMITER //
BEGIN
CREATE PROCEDURE CancelBooking(IN bookingid INT)
delete from Bookings
where BookingID = bookingid //
SELECT CONCAT ("Deleted Booking with ID# = ", bookingid) AS Confirmation
END // DELIMITER ;

CALL CancelBooking(9)