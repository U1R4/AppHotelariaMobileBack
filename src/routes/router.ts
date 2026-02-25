import { Router } from "express";
import routeTask from "./task"
import routeLogin from "./login"
import {createJWT} from "../utils/jwt";
import { middleware } from "./jwtMiddleware";
import routeRoom from "./room";
import reserveRoute from "./reserve";

const handlerRouter = Router();

handlerRouter.use("/task", routeTask);
handlerRouter.use("/api/login", routeLogin);
handlerRouter.use("/api/room", routeRoom)
handlerRouter.use("/api/reserve", middleware, reserveRoute)




handlerRouter.use("/jwt", (req, res) => {
    const payload = {id: 123, nome: "teste", cargo: "cliente"}
    res.json(createJWT(payload))
});

handlerRouter.get("/testJWT", middleware, (req,res) =>{
    res.json("passou pelo JWT")
});

export default handlerRouter;