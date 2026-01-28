import { Router } from "express";
import loginController from "../controllers/loginController";

const routeLogin = Router();

routeLogin.post("/", loginController.getLogin)


export default routeLogin;