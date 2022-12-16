SELECT E."userId" AS "id", COUNT(E."userId") AS "educations" FROM EDUCATIONS AS E
GROUP BY E."userId";