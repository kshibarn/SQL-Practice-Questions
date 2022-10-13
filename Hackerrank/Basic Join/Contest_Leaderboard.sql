/* You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!
 
 The total score of a hacker is the sum of their maximum scores for all of the challenges. 
 Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. 
 If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of 0 FROM your result.
 
 Input Format
 
 The following tables contain contest data:
 
 Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.
 Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, challenge_id is the id of the challenge for which the submission belongs to, and score is the score of the submission.
 */

SELECT x.hacker_id,
    h.name,
    SUM(x.score) as total_score
FROM (
        SELECT hacker_id,
            challenge_id,
            MAX(score) as score
        FROM submissions
        GROUP BY hacker_id,
            challenge_id
    ) as x
    JOIN Hackers as h ON x.hacker_id = h.hacker_id
GROUP BY x.hacker_id,
    h.name
HAVING total_score > 0
ORDER BY total_Score DESC,
    x.hacker_id;