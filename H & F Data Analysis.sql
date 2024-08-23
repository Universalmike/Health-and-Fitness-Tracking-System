                                      --ANALYSIS ON THE HEALTH AND FITNESS DATA---

--Analytical Questions

/*

1. Most active users based on the number logged
2. Determine the average duration of workouts for each user
3. Compare calories consumed versus calories burned for each user on a given day
4. Find the most common exercises performed by users
5. Users who have not logged any workouts in the last 30 days


*/*


--1. Most active users based on the number logged
SELECT u.usernmae, COUNT(w.workout_id) as total_workouts
FROM Users u
JOIN Workouts w 
ON u.user_id=w.user_id
GROUP BY u.usernmae
ORDER BY total_workouts DESC;

--2. The average duration of workouts for each user
SELECT u.usernmae, AVG(w.duration_minutes) as avg_work_duration
FROM Users u
JOIN Workouts w 
ON u.user_id=w.user_id
GROUP BY u.usernmae
ORDER BY avg_work_duration DESC;

--3. calories consumed versus calories burned for each user on a given day
SELECT u.usernmae, n.log_date, SUM(n.calories_consumed) as total_caloris_consumed,
		SUM(w.calories_burned) as total_calories_burned, SUM(w.calories_burned) - SUM(n.calories_consumed) as caloric_balance
FROM Users u
LEFT JOIN Nutrition n
ON u.user_id=n.user_id
LEFT JOIN Workouts w 
ON u.user_id=w.user_id AND n.log_date=w.workout_date
GROUP BY u.usernmae, n.log_date
ORDER BY caloric_balance DESC;

--4. Most common exercises performed by users
SELECT exercise_name, COUNT(exercise_id) as times_performed
FROM Exercises
GROUP BY exercise_name
ORDER BY times_performed DESC;

--5. Users who have not logged any workouts in the last 30 days
SELECT u.usernmae, MAX(w.workout_date) as last_workout_date
FROM Users u
LEFT JOIN Workouts w 
ON u.user_id=w.user_id
GROUP BY u.usernmae
HAVING MAX(w.workout_date) < DATEADD(DAY, -30, GETDATE());