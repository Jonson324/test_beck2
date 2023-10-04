const express = require("express");
const app = express();
const {PrismaClient} = require("@prisma/client");

const prisma = new PrismaClient();

app.use(express.json());



app.get("/", async (req,res) =>{
    const allUsers = await prisma.user.findMany();
    res.json(allUsers);
})

app.post("/", async (req,res) =>{
    const newUser = await prisma.user.create({data: req.body});
    res.json(newUser);
})



app.listen(5432, () => console.log(`Server running on port ${5432}`));