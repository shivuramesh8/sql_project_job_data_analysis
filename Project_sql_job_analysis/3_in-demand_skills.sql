

SELECT sd.skills,
        COUNT(j.job_id) AS demand_count
FROM job_postings_fact AS j
INNER JOIN skills_job_dim AS sj ON j.job_id = sj.job_id
INNER join skills_dim AS sd ON sj.skill_id = sd.skill_id
WHERE 
      j.job_title_short = 'Data Analyst' AND
      j.job_work_from_home = TRUE
GROUP BY 
      sd.skills
ORDER BY demand_count DESC
LIMIT 5


