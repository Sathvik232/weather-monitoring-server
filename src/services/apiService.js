import axios from 'axios';

const API_KEY = 'da9fc3d535b22a6f1f678cdd465c5cd8';
const cities = ['Delhi', 'Mumbai', 'Chennai', 'Bangalore', 'Kolkata', 'Hyderabad'];

export const fetchWeatherData = async () => {
  const results = await Promise.all(
    cities.map(async (city) => {
      const response = await axios.get(
        `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${API_KEY}&units=metric`
      );
      return {
        name: city,
        temp: response.data.main.temp,
        feels_like: response.data.main.feels_like,
        main: response.data.weather[0].main,
      };
    })
  );
  return results;
};

// export const getDailySummaries = async () => {
//   const response = await axios.get('/api/daily-summary');
//   console.log("--------------------------------------->");
//   console.log(response);
//   return response.data;
// };
