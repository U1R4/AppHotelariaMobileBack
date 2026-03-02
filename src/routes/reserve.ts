import { Router } from "express";
import reserveController from "../controllers/reserveController";

const reserveRoute = Router();

reserveRoute.post("/", reserveController.criarPedido)

export default reserveRoute;