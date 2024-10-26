

import React, { useEffect, useState } from 'react';
import { Button, TextField, Typography, Grid, Paper } from '@mui/material';
import axios from 'axios';
import Alert from '@mui/material/Alert';
import { toast, ToastContainer } from 'react-toastify';
import "react-toastify/dist/ReactToastify.css";


function AlertSettings({ alerts, setAlerts }) {
  const [threshold, setThreshold] = useState(35);
  const [summaries, setSummaries] = useState([]);

  useEffect(() => {
    const fetchDailySummaries = async () => {
        try {
            const response = await axios.get('http://localhost:3001/api/daily-summary'); // Fetch from Node.js API
            setSummaries(response.data); // Set the summaries state with the fetched data
        } catch (error) {
            console.error('Error fetching daily summaries:', error);
        }
    };

    fetchDailySummaries(); // Call the function to fetch data
}, []);

  const handleSetAlert = () => {
    setAlerts([...alerts, { threshold }]);


    for(let i=0;i<summaries.length;i++){
      if(summaries[i].avg_temp>threshold){
        toast.error("threshold exceeds the average temperature");
        console.log("gi");
        break;
      }
    }
   

    setThreshold(threshold); // Reset threshold to default after setting the alert

   

  };

  return (
    <div>

    
    <ToastContainer />
    <Grid 
      container 
      direction="column" 
      alignItems="center" 
      justifyContent="center" 
      style={{ minHeight: '15vh', padding: '10px' }} // Reduced padding
    >
      <Paper elevation={3} sx={{ padding: 2, borderRadius: 2, maxWidth: 400, textAlign: 'center' }}> {/* Reduced padding */}
        <Typography variant="h5" gutterBottom>
          Set Alert Thresholds
        </Typography>
        <TextField
          label="Temperature Threshold"
          type="number"
          value={threshold}
          onChange={(e) => setThreshold(e.target.value)}
          fullWidth
          margin="normal"
        />
        <Button 
          variant="contained" 
          color="primary" 
          onClick={handleSetAlert} 
          fullWidth
        >
          Set Alert
        </Button>
      </Paper>
    </Grid>
    </div>
  );
}

export default AlertSettings;

