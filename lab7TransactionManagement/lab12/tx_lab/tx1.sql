-- Lab3: Tx 1 on mysql
-- Jeongkyu Lee
SET AUTOCOMMIT = 0
UPDATE ACCT SET BAL = 100 WHERE ID = ‘A’;
-- Tx 2: SELECT * FROM ACCT;
COMMIT;

