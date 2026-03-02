import {pool} from "../database/database";
import {Client} from "../models/loginModel";


async function login(email:string) {
    const sql = `
        SELECT 
            clientes.id,
            clientes.nome,
            clientes.email,
            clientes.senha,
            cargos.nome
        FROM
            clientes
        JOIN 
            cargos
        ON 
            clientes.cargo_id = cargos.id
        WHERE
            clientes.email = ?
    `;

    const [rows] = await pool.query<Client[]>(sql, [email])
    return rows.length ? rows[0]  : null
}

async function createClient(nome: string, email: string, senha: string, cpf: string, telefone: string,) {
    const sql = `
        INSERT INTO 
            clientes (nome, email, senha, cpf, telefone) 
        VALUES 
            (?, ?, ?, ?, ?)
    `;

    const [result] = await pool.query(sql, [nome, email, senha, cpf, telefone]);

    return {
        id: (result as any).insertId,
        nome,
        email,
        senha,
        telefone,
        cpf
    };
}

export default {
    login, createClient
}