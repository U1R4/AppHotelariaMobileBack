import e from "express";
import { QueryResult, RowDataPacket } from "mysql2";
 
export type Room = RowDataPacket & {
    id: number,
    pedido_id: number,
    quarto_id: number,
    adicional_id: number,
    disponivel: boolean;
    inicio: Date,
    fim: Date;
}
 
export type RoomReserva = {
    dataInicio: number,
    dataFim: number,
    quantidade: number,
}