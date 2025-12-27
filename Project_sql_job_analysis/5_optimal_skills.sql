SELECT
     sd.skill_id,
     sd.skills,
     COUNT(j.job_id) as demand_count,
     ROUND(AVG(j.salary_year_avg),0) as avg_salary
FROM job_postings_fact AS j
INNER JOIN skills_job_dim AS sj ON sj.job_id = j.job_id
INNER JOIN skills_dim AS sd ON sd.skill_id = sj.skill_id
WHERE
     job_title_short = 'Data Analyst' AND
     j.job_work_from_home = TRUE AND
     j.salary_year_avg IS NOT NULL
GROUP BY
     sd.skill_id,
     sd.skills
HAVING
     COUNT(j.job_id) > 10
ORDER BY
     avg_salary DESC,
     demand_count DESC
