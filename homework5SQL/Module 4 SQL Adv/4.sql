SELECT DISTINCT SUBSTRING_INDEX(address, ', ', -1) AS state
FROM employee;
