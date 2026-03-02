import dotenv from "dotenv"
import app from "./app";

dotenv.config()

const PORT = Number(process.env.PORT);
const JWT_SECRET = Number(process.env.JWT_SECRET);

app.listen(PORT, () => console.log(`Servidor esta rodando: ${PORT}`));
