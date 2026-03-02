import { Router } from "express";
import loginController from "../controllers/loginController";

const routeLogin = Router();

routeLogin.post("/", loginController.login)
routeLogin.post("/logon", loginController.createClient)


export default routeLogin;