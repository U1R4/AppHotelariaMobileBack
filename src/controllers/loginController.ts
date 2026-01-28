import { Request, Response, NextFunction } from "express";

async function getLogin(req:Request, res:Response, next:NextFunction) {
   try{
        console.log("-------------------------------------------------------------")
        return res.status(201)
   }catch{
        console.log("_________________---------------------------_________________")
        return res.status(400)
   }
}

export default {getLogin};