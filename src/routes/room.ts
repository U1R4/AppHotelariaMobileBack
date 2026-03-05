import { Router } from "express";
import roomController from "../controllers/roomController";

const routeRoom = Router();

routeRoom.post("/", roomController.getAvaibleRooms)

export default routeRoom;