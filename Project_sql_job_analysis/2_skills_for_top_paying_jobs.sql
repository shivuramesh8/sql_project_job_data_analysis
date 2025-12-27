WITH top_paying_jobs AS (
SELECT
    j.job_id,
    j.job_title,
    j.job_location,
    j.job_schedule_type,
    j.salary_year_avg,
    j.job_posted_date,
    c.name as company_name
FROM
    job_postings_fact AS j
JOIN company_dim AS c ON j.company_id=c.company_id
WHERE
    j.job_title_short='Data Analyst' AND
    j.job_location LIKE '%Bengaluru%' AND
    j.salary_year_avg IS NOT NULL
ORDER BY
    j.salary_year_avg DESC
LIMIT 10
)

SELECT 
    tpj.*,
    sd.skills
FROM top_paying_jobs AS tpj
INNER JOIN skills_job_dim AS Sj ON TPJ.job_id = Sj.job_id
INNER JOIN skills_dim AS sd ON sd.skill_id = sj.skill_id
ORDER BY
    tpj.salary_year_avg DESC
