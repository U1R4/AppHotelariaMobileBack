import express from "express";
import { Request, Response, NextFunction } from "express";

const app = express();
app.use(express.json());

//Rotas
app.get("/params/:name", (req: Request, res: Response, next: NextFunction) => {
  const name = req.params.name;
  console.log("Cliente:", name);
  res.send(`Nome: ${name}`);
});

app.get("/query", (req: Request, res: Response, next: NextFunction) => {
  const name = req.query.name;
  console.log("Cliente digitou:", name);
  res.send(`Nome: ${name}`);
});

app.get("/body", (req: Request, res: Response, next: NextFunction) => {
  const name = req.body.name;
  console.log("Var dentro do body", name);
  res.send(`Var dentro do body: ${name}`);
});

app.get("/exemplo", (req: Request, res: Response, next: NextFunction) => {
  console.log("aconteceu algo!!!!!");
  res.send("Ez");
});

export default app;
