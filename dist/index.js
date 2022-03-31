import express from 'express';
const app = express();
app.get("/", (req, res) => {
    return res.json({
        status: "Success"
    });
});
app.listen(4000, () => {
    console.log("listening on port 4000");
});
