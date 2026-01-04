

SELECT
      sd.skills,
      ROUND(AVG(j.salary_year_avg),0) AS avg_salary
FROM job_postings_fact AS j
INNER JOIN skills_job_dim AS sj ON j.job_id = sj.job_id
INNER JOIN skills_dim AS sd ON sj.skill_id = sd.skill_id
WHERE
    j.job_title_short = 'Data Analyst' AND
    j.salary_year_avg IS NOT NULL AND
    j.job_work_from_home = TRUE
GROUP BY
        sd.skills
ORDER BY
        avg_salary DESC
LIMIT 30

    
