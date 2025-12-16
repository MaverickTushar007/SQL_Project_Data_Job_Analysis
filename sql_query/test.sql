-- SELECT 
--     job_title_short as title,
--     -- job_location as location,
--     job_posted_date::DATE as date,
--     EXTRACT(MONTH FROM job_posted_date) as column_month,
--     EXTRACT(YEAR FROM job_posted_date) as column_YEAR,
--     job_posted_date AT TIME ZONE 'UTC',
--     job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST'
-- from job_postings_fact
-- LIMIT 10


SELECT
    Count(job_id) as job_posted_count,
    EXTRACT(MONTH FROM job_posted_date) as MONTH
from
    job_postings_fact
WHERE
    job_title_short = 'Data Analyst'
GROUP BY
    MONTH
ORDER BY
    job_posted_count DESC