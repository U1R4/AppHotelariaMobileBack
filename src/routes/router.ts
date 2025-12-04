import { Router } from "express";
import routeTask from "./task"
import { createJWT } from "../utils/jwt";

const handlerRouter = Router();

handlerRouter.use("/task", routeTask);

handlerRouter.use("/jwt", (req ,res)=>{
    res.json(createJWT())
});

export default handlerRouter;