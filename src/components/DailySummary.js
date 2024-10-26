import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Card, CardContent, Typography, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Paper } from '@mui/material';

function DailySummary() {
    const [summaries, setSummaries] = useState([]);

    // Fetch daily summaries directly from MySQL through the API
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

    return (
        <div>
            <h2 style={{ textAlign: 'center' }}>Daily Weather Summaries</h2>
            <Card>
                <CardContent>
                    <Typography variant="h5" component="h2" gutterBottom align="center">
                        Daily Weather Summaries
                    </Typography>
                    <TableContainer component={Paper}>
                        <Table>
                            <TableHead>
                                <TableRow sx={{ backgroundColor: '#31BE7A', color: '#ffffff' }}>
                                    <TableCell sx={{ fontWeight: 'bold' }}>ID</TableCell>
                                    <TableCell sx={{ fontWeight: 'bold' }}>Date</TableCell>
                                    <TableCell sx={{ fontWeight: 'bold' }}>Avg Temp (°C)</TableCell>
                                    <TableCell sx={{ fontWeight: 'bold' }}>Max Temp (°C)</TableCell>
                                    <TableCell sx={{ fontWeight: 'bold' }}>Min Temp (°C)</TableCell>
                                    <TableCell sx={{ fontWeight: 'bold' }}>Dominant Condition</TableCell>
                                </TableRow>
                            </TableHead>
                            <TableBody>
                                {summaries.map((summary, index) => (
                                    <TableRow key={summary.id} sx={{ backgroundColor: index % 2 === 0 ? '#f5f5f5' : '#ffffff' }}>
                                        <TableCell>{summary.id}</TableCell>
                                        <TableCell>{summary.date}</TableCell>
                                        <TableCell>{summary.avg_temp}</TableCell>
                                        <TableCell>{summary.max_temp}</TableCell>
                                        <TableCell>{summary.min_temp}</TableCell>
                                        <TableCell>{summary.dominant_condition}</TableCell>
                                    </TableRow>
                                ))}
                            </TableBody>
                        </Table>
                    </TableContainer>
                </CardContent>
            </Card>
        </div>
    );
}

export default DailySummary;
