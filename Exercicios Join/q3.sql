SELECT U.ID, U.NAME, C.NAME AS COURSE, S.NAME AS SCHOOL, E."endDate"
FROM USERS AS U
JOIN EDUCATIONS AS E
ON E."userId" = U.ID
JOIN COURSES AS C
ON C.ID = E."courseId"
JOIN SCHOOLS AS S
ON S.ID = E."schoolId"
WHERE U.ID = 30 AND E.STATUS  = 'finished';