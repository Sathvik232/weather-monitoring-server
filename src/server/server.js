const express = require('express');
const axios = require('axios');
const mysql = require('mysql2');
const app = express();

const cors = require('cors');
app.use(cors());

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  database: 'weather_monitoring',
  password: 'root'
});


// MySQL Database connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'weather_monitoring'
});

db.connect((err) => {
    if (err) throw err;
    console.log('Connected to MySQL Database');
});


// OpenWeatherMap API Key
const API_KEY = 'da9fc3d535b22a6f1f678cdd465c5cd8';
const cities = ['Delhi', 'Mumbai', 'Chennai', 'Bangalore', 'Kolkata', 'Hyderabad'];


// Convert Kelvin to Celsius
const kelvinToCelsius = (kelvin) => (kelvin - 273.15).toFixed(2);

// Function to fetch and insert weather data
const fetchWeatherAndInsert = async () => {
    for (const city of cities) {
        const apiUrl = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${API_KEY}`;

        try {
            const response = await axios.get(apiUrl);
            const data = response.data;

            // Extract necessary weather information
            const tempCelsius = kelvinToCelsius(data.main.temp);
            const maxTemp = kelvinToCelsius(data.main.temp_max);
            const minTemp = kelvinToCelsius(data.main.temp_min);

            // Dominant condition logic (for simplicity, using the main weather condition)
            const dominantCondition = data.weather[0].main;

            // Insert data into MySQL database
            const query = `
                INSERT INTO daily_summary 
                (date, avg_temp, max_temp, min_temp, dominant_condition) 
                VALUES (CURDATE(), ?, ?, ?, ?)
                ON DUPLICATE KEY UPDATE 
                avg_temp = VALUES(avg_temp),
                max_temp = VALUES(max_temp),
                min_temp = VALUES(min_temp),
                dominant_condition = VALUES(dominant_condition)
            `;

            // For simplicity, avg_temp is considered as the tempCelsius (update if needed)
            db.query(query, [tempCelsius, maxTemp, minTemp, dominantCondition], (err, result) => {
                if (err) throw err;
                console.log(`Weather data for ${city} inserted/updated in the database`);
            });
        } catch (error) {
            console.error(`Error fetching weather data for ${city}:`, error);
        }
    }
};

// Set interval to fetch and insert weather data every 5 minutes
setInterval(fetchWeatherAndInsert, 5 * 60 * 1000); // 5 minutes

app.get('/api/daily-summary', (req, res) => {
    const query = 'SELECT * FROM daily_summary'; // Direct SQL query to fetch data
    connection.query(query, (error, results) => {
        if (error) {
            console.error('Error executing query:', error);
            return res.status(500).json({ error: 'Failed to retrieve data' });
        }
        res.json(results); // Send results as JSON
    });
});

app.listen(3001, () => {
  console.log('Server running on port 3001');
});
