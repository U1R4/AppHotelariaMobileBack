import { Router } from "express";
import routeLogin from "./login"
import { middleware } from "./jwtMiddleware";
import routeRoom from "./room";
import reserveRoute from "./reserve";

const handlerRouter = Router();

handlerRouter.use("/api/login", routeLogin);
handlerRouter.use("/api/room", routeRoom)
handlerRouter.use("/api/reserve", middleware, reserveRoute)

export default handlerRouter;