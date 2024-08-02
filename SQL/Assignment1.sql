CREATE TABLE poll_data (User_ID VARCHAR(50),
                        Poll_Id VARCHAR(50),
                        Poll_Option_Id CHAR(1),
                        Amount NUMBER,
                        Created_dt DATE
                       );
                       
INSERT INTO poll_data (User_ID, Poll_Id, Poll_Option_Id, Amount, Created_dt) VALUES ('id1', 'p1', 'A', 200, TO_DATE('2021-12-01', 'YYYY-MM-DD'));
INSERT INTO poll_data (User_ID, Poll_Id, Poll_Option_Id, Amount, Created_dt) VALUES ('id2', 'p1', 'C', 250, TO_DATE('2021-12-01', 'YYYY-MM-DD'));
INSERT INTO poll_data (User_ID, Poll_Id, Poll_Option_Id, Amount, Created_dt) VALUES ('id3', 'p1', 'A', 200, TO_DATE('2021-12-01', 'YYYY-MM-DD'));
INSERT INTO poll_data (User_ID, Poll_Id, Poll_Option_Id, Amount, Created_dt) VALUES ('id4', 'p1', 'B', 500, TO_DATE('2021-12-01', 'YYYY-MM-DD'));
INSERT INTO poll_data (User_ID, Poll_Id, Poll_Option_Id, Amount, Created_dt) VALUES ('id5', 'p1', 'C', 50, TO_DATE('2021-12-01', 'YYYY-MM-DD'));
INSERT INTO poll_data (User_ID, Poll_Id, Poll_Option_Id, Amount, Created_dt) VALUES ('id6', 'p1', 'D', 500, TO_DATE('2021-12-01', 'YYYY-MM-DD'));
INSERT INTO poll_data (User_ID, Poll_Id, Poll_Option_Id, Amount, Created_dt) VALUES ('id7', 'p1', 'C', 200, TO_DATE('2021-12-01', 'YYYY-MM-DD'));
INSERT INTO poll_data (User_ID, Poll_Id, Poll_Option_Id, Amount, Created_dt) VALUES ('id8', 'p1', 'A', 100, TO_DATE('2021-12-01', 'YYYY-MM-DD'));

SELECT * FROM poll_data;

SELECT 
    User_ID,
    ROUND((Amount / total_invested_C) * total_invested_ABD, 2) Returns
FROM   (
        SELECT 
        User_ID, 
        Amount,
        (SELECT SUM(Amount) FROM poll_data WHERE Poll_Option_Id = 'C') total_invested_C,
        (SELECT SUM(Amount) FROM poll_data WHERE Poll_Option_Id IN ('A', 'B', 'D')) total_invested_ABD
        FROM poll_data
        WHERE Poll_Option_Id = 'C'
       ) investment_data
ORDER BY User_ID;
