/*                           2. Data Cleaning and Preparation:                                          */

                         -- (a). Handling Missing Values (Checking Null Values)
        SELECT *
        FROM walmart_sales
        WHERE invoice_id IS NULL;

                         -- (b). Handling Duplicated Values (Checking Duplicate Values)
        SELECT invoice_id, COUNT(*)
        FROM walmart_sales
        GROUP BY invoice_id
        HAVING COUNT(*) > 1;

