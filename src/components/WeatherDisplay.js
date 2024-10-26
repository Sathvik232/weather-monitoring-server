import React from 'react';
import { Card, CardContent, Typography, Grid } from '@mui/material';

function WeatherDisplay({ data }) {
  return (
    <Grid container spacing={2}>
      {data.map((city, index) => (
        <Grid item xs={12} sm={6} md={4} key={index}>
          <Card 
            elevation={3} 
            sx={{
              borderRadius: '10px', 
              backgroundColor: '#f5f5f5',
               background: 'linear-gradient(135deg, #FFDEE9 0%, #B5FFFC 100%)',
              transition: 'transform 0.2s', 
              '&:hover': {
                transform: 'scale(1.05)',
              },
            }}
          >
            <CardContent>
              <Typography variant="h5" component="div" gutterBottom>
                {city.name}
              </Typography>
              <Typography variant="body1">
                Temperature: {city.temp} °C
              </Typography>
              <Typography variant="body1">
                Feels Like: {city.feels_like} °C
              </Typography>
              <Typography variant="body1">
                Weather: {city.main}
              </Typography>
            </CardContent>
          </Card>
        </Grid>
      ))}
    </Grid>
  );
}

export default WeatherDisplay;
