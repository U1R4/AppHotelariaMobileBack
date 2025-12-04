import jwt from "jsonwebtoken";

const JWT_SECRET = "de_zero_a_cem"
const DURATION = 60 *60 * 24

export function createJWT(){
    const payload = {
        id:"123",
        name:"jao",
        cardo:"jao"
    }

    return jwt.sign(payload, JWT_SECRET, {
        expiresIn: DURATION,
        algorithm: "HS256"
    })
}