-- Requête en français
--SELECT region, AVG(note) AS moyenne_notes
--FROM (
--         SELECT c.region, e.note
--         FROM Evaluation e
--                  JOIN Dessin d ON e.numDessin = d.numDessin
--                  JOIN Concours co ON d.numConcours = co.numConcours
--                  JOIN Club c ON co.numClub = c.numClub
--     ) AS sub
--GROUP BY region
--ORDER BY moyenne_notes DESC
--    LIMIT 1;

-- Requête SQL
SELECT region, AVG(note) AS moyenne_notes
FROM (
         SELECT Club.region, Evaluation.note
         FROM Evaluation
                  JOIN Dessin ON Evaluation.numDessin = Dessin.numDessin
                  JOIN Concours ON Dessin.numConcours = Concours.numConcours
                  JOIN Club ON Concours.numClub = Club.numClub
