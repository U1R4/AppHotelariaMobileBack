import { Request, Response, NextFunction } from "express";

async function getLogin(req: Request, res: Response, next: NextFunction) {
   try {
        console.log("ROTA ACESSADA COM SUCESSO");
        console.log("Body recebido:", req.body);
        
        return res.sendStatus(201);
     } 
     catch(error) {
        console.error("Erro:", error);
        return res.sendStatus(500);
     }
}

export default {getLogin};