import { RowDataPacket } from "mysql2";
import {pool} from "../database/database";
import {Room} from "../models/roomModel";

async function getAvaibleRooms(inicio: string, fim: string, qtdPessoas: number) {
    const sql = `
        SELECT
            q.id,
            q.nome,
            q.qnt_cama_casal,
            q.qnt_cama_solteiro,
            q.preco,
            q.disponivel
        FROM
            quartos q
        WHERE
            q.id NOT IN (
                SELECT
                r.quarto_id
                FROM
                reservas r
                WHERE
                (r.inicio < ? AND r.fim > ?)
            )
        AND 
            q.disponivel = true
        AND 
            ( (q.qnt_cama_casal * 2) + q.qnt_cama_solteiro ) >= ?;
    `;

    const [rows] = await pool.query<Room[]>(sql, [fim, inicio, qtdPessoas])
    return rows;
}

async function getRoomImage(quartoId: number) {
    const sql = `
        SELECT 
            imagens.nome,
            imagens.caminho
        FROM 
            imagens
        INNER JOIN 
            imagens_quartos ON imagens.id = imagens_quartos.imagem_id
        WHERE 
            imagens_quartos.quarto_id = ?;
    `

   const [fotos] = await pool.query<RowDataPacket[]>(sql, [quartoId])
    return fotos.map(foto=>(foto.nome))
}

export default {
    getAvaibleRooms,
    getRoomImage
}