import { Router } from "express";
import routeTask from "./task"
import {createJWT} from "../utils/jwt";
import { middleware } from "./jwtMiddleware";

const handlerRouter = Router();

handlerRouter.use("/task", routeTask);

handlerRouter.use("/jwt", (req, res) => {
    const payload = {id: 123, nome: "teste", cargo: "cliente"}
    res.json(createJWT(payload))
});

handlerRouter.get("/testJWT", middleware, (req,res) =>{
    res.json("passou pelo JWT")
});

export default handlerRouter;