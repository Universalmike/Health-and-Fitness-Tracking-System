# Health and Fitness Tracking System

## Overview

This project is a Health and Fitness Tracking System developed using SQL. It allows users to log workouts, exercises, and nutrition data, providing valuable insights into their fitness journey. The database schema includes tables for users, workouts, exercises, and nutrition, enabling comprehensive tracking and analysis of fitness activities.

## Features

- **User Management**: Track individual users, their sign-up date, and personal information.
- **Workout Logging**: Record the details of each workout, including duration and calories burned.
- **Exercise Tracking**: Log specific exercises within each workout, including sets, reps, and weight lifted.
- **Nutrition Tracking**: Track daily nutrition, including calories, protein, carbohydrates, and fats consumed.
- **Data Analysis**: Generate insights on user activity, popular exercises, caloric balance, and more.

## Database Schema

### Tables:

1. **Users**: Stores user information.
   - `user_id` (Primary Key, Auto-increment)
   - `username`
   - `email`
   - `date_of_birth`
   - `gender`
   - `signup_date` (Defaults to current date)

2. **Workouts**: Logs workout details.
   - `workout_id` (Primary Key, Auto-increment)
   - `user_id` (Foreign Key)
   - `workout_date`
   - `duration_minutes`
   - `calories_burned`

3. **Exercises**: Logs specific exercises within workouts.
   - `exercise_id` (Primary Key, Auto-increment)
   - `workout_id` (Foreign Key)
   - `exercise_name`
   - `sets`
   - `reps`
   - `weight_kg`

4. **Nutrition**: Tracks daily nutrition intake.
   - `nutrition_id` (Primary Key, Auto-increment)
   - `user_id` (Foreign Key)
   - `log_date`
   - `calories_consumed`
   - `protein_g`
   - `carbs_g`
   - `fats_g`

## Getting Started

### Prerequisites

- SQL Server or any other SQL-compatible database management system.
- Basic knowledge of SQL.

### Setting Up the Database

1. Clone this repository to your local machine.

    ```bash
    git clone https://github.com/Universalmike/health-and-fitness-tracking-system.git
    cd health-and-fitness-tracking-system
    ```

2. Open your SQL Server Management Studio (SSMS) or any other SQL client.
3. Copy and paste the SQL scripts provided in the repository to create the database schema.
4. Run the scripts to create the tables and insert sample data.

### Running Queries

You can run the SQL queries provided in the `queries.sql` file to generate insights from the data. Modify the queries as needed to fit your analysis goals.

## Key Insights

Some of the insights you can generate include:

- Most active users based on workout frequency.
- Average workout duration per user.
- Caloric balance by comparing calories consumed vs. burned.
- Popular exercises among users.
- Macronutrient intake analysis.
- Exercise performance improvement over time.
- Identification of inactive users.

## Contributing

Contributions are welcome! If you have ideas for improvements or additional features, feel free to submit a pull request or open an issue.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

## Contact

For any questions or suggestions, please reach out via 
