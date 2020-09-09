--sp_columns[employee]

--Exercise 1
--SELECT CustomerId, FirstName, LastName, Country FROM Customer WHERE Country != 'USA'

--Exercise 2
--SELECT CustomerId, FirstName, LastName, Country FROM Customer WHERE Country = 'Brazil'

--Exercise 3
--SELECT Customer.CustomerId, FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry FROM Invoice LEFT JOIN Customer ON Invoice.CustomerId = Customer.CustomerId WHERE BillingCountry = 'Brazil'

--Exercise 4
--SELECT * FROM Employee WHERE Title = 'Sales Support Agent'

--Exercise 5
--SELECT DISTINCT BillingCountry FROM Invoice

--Exercise 6
--SELECT Invoice.InvoiceId, Invoice.CustomerId, InvoiceDate, BillingCountry, Total, SupportRepId, Employee.FirstName, Employee.LastName, Employee.Title FROM Invoice LEFT JOIN Customer ON Customer.CustomerId = Invoice.CustomerId LEFT JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId WHERE SupportRepId = Employee.EmployeeId

--Exercise 7
--SELECT Invoice.Total, Customer.FirstName, Customer.LastName, Invoice. BillingCountry, Employee.Title, Employee.FirstName, Employee.LastName FROM Invoice LEFT JOIN Customer ON Customer.CustomerId = Invoice.CustomerId LEFT JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId

--Exercise 8
--SELECT COUNT(InvoiceDate) FROM Invoice WHERE (InvoiceDate >= '20090101 00:00:00.000'
--  AND InvoiceDate < '20091231 00:00:00.000') OR (InvoiceDate >= '20110101 00:00:00.000'
--  AND InvoiceDate < '20111231 00:00:00.000')

--Exercise 9
--SELECT '2009' AS 'Year', SUM(Total) AS 'Sales Total' FROM Invoice WHERE (InvoiceDate >= '20090101 00:00:00.000'
--  AND InvoiceDate <= '20091231 00:00:00.000')
--  UNION ALL
--SELECT '2011' AS 'Year', SUM(Total) AS 'Sales Total' FROM Invoice WHERE (InvoiceDate >= '20110101 00:00:00.000'
--  AND InvoiceDate <= '20111231 00:00:00.000')

--Exercise 10
--SELECT COUNT(InvoiceId) FROM InvoiceLine WHERE InvoiceId = 37

--Exercise 11
--SELECT InvoiceID, COUNT(InvoiceId) AS '# of items' FROM InvoiceLine GROUP BY InvoiceId

--Exercise 12
--SELECT InvoiceLineId, InvoiceLine.InvoiceId, InvoiceLine.UnitPrice, InvoiceLine.Quantity, InvoiceLine.TrackId, Track.Name FROM InvoiceLine LEFT JOIN Track ON Track.TrackId = InvoiceLine.TrackId

--Exercise 13
--SELECT InvoiceLineId, InvoiceLine.InvoiceId, InvoiceLine.UnitPrice, InvoiceLine.Quantity, InvoiceLine.TrackId, Track.Name, Artist.Name FROM InvoiceLine LEFT JOIN Track ON Track.TrackId = InvoiceLine.TrackId LEFT JOIN Album ON Track.AlbumId = Album.AlbumId LEFT JOIN Artist ON Artist.ArtistId = Album.ArtistId

--Exercise 14
--SELECT BillingCountry, COUNT(InvoiceId) AS '# of Invoices' FROM Invoice GROUP BY BillingCountry

--Exercise 15
--SELECT Playlist.Name, COUNT(TrackId) AS '# of tracks' FROM PlaylistTrack LEFT JOIN Playlist ON Playlist.PlaylistId = PlaylistTrack.PlaylistId GROUP BY Playlist.Name

--Exercise 16
--SELECT Track.Name AS 'Track Name', Album.Title, MediaType.Name AS 'MediaType Name', Genre.Name AS 'Genre Name', Track.Composer, Track.Milliseconds, Track.UnitPrice FROM Track LEFT JOIN Album ON Track.AlbumId = Album.AlbumId LEFT JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId LEFT JOIN Genre ON Track.GenreId = Genre.GenreId

--Exercise 17
--SELECT Invoice.InvoiceId, COUNT(InvoiceLine.InvoiceId) AS '# of invoice line items' FROM Invoice LEFT JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId GROUP BY Invoice.InvoiceId

--Exercise 18
--SELECT Employee.EmployeeId, SUM(Invoice.Total) AS 'Total Sales' FROM Employee LEFT JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId LEFT JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId WHERE Title = 'Sales Support Agent' GROUP BY Employee.EmployeeId

--Exercise 19****NOT SOLVED need to find the max total
--SELECT Employee.EmployeeId, SUM(Invoice.Total) AS 'TotalSales' FROM Employee LEFT JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId LEFT JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId WHERE Title = 'Sales Support Agent' AND  (InvoiceDate >= '20090101 00:00:00.000' AND InvoiceDate <= '20091231 00:00:00.000') GROUP BY Employee.EmployeeId

--Exercise 20
