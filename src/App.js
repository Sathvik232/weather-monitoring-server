import React, { useState, useEffect } from 'react';
import WeatherDisplay from './components/WeatherDisplay';
import AlertSettings from './components/AlertSettings';
import DailySummary from './components/DailySummary';
import { fetchWeatherData } from './services/apiService';

function App() {
  const [weatherData, setWeatherData] = useState([]);
  const [alerts, setAlerts] = useState([]);
  const [dailySummary, setDailySummary] = useState([]);

  useEffect(() => {
    const fetchData = async () => {
      const data = await fetchWeatherData();
      setWeatherData(data);
    };
    fetchData();
  }, []);

  return (
    <div>
      <h1 style={{ textAlign: 'center' }}>Real-Time Weather Monitoring System</h1>
      <WeatherDisplay data={weatherData} />
      <AlertSettings alerts={alerts} setAlerts={setAlerts} />
      <DailySummary/>
    </div>
  );
}

export default App;
