// Importer Express biblioteket
const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Definer en simpel endpoint
app.get('/', (req, res) => {
    res.send('Hello from Dockerized Node.js app!');
});

// Start serveren
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});
