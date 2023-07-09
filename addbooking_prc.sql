DROP PROCEDURE IF EXISTS AddBooking;
DELIMITER //
CREATE PROCEDURE AddBooking(IN customerid INT, IN tablenumber INT, IN bookingdate DATE)
BEGIN
INSERT INTO bookings(BookingID, BookingDate, CustomerID, EmployeeID, TableNo) VALUES (DEFAULT, bookingdate, customerid, employeeid, tableno)
END //
SELECT CONCAT("New Booking Complete: ", bookingid, " @ Table ", tablenumber) AS Confirmation // 
DELIMITER;
CALL AddBooking('2022-10-23', 5, 4, 2);