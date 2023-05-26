SELECT client.name, count(client_id) AS project_count
FROM client
JOIN project ON client.id = project.client_id
GROUP BY name
HAVING project_count IN (
    SELECT project_count
    FROM project
    GROUP BY client_id
    ORDER BY project_count DESC
    LIMIT 1
);