import { Router } from "express";

const taskRouter = Router();

taskRouter.get("/", () => console.log("Pegar todas as tarefas"));
taskRouter.get("/:id", () => console.log("Pegar as tarefas por id"));
taskRouter.post("/", () => console.log("Cadastrar tarefa"));
taskRouter.put("/:id", () => console.log("Atualizar uma tarefa"));
taskRouter.delete("/:id", () => console.log("Deletar uma tarefa"));

export default taskRouter;
