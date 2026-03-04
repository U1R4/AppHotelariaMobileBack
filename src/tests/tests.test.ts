const URL_LOGIN:string = "http://localhost:3000/api/login"

let newLogin = {
    email: "a1@a1.a1",
    senha: "123",
}

let newClient = {
    nome: "Giro123",
    email: "123@123.123",
    senha: "Giro123",
    cpf: "Giro1234",
    telefone: "Giro1234"
}


test("POST: api/login = 201", async () => {
    const res = await fetch(URL_LOGIN, {
        method: "POST",
        headers:{"Content-Type": "application/json"},
        body: JSON.stringify(newLogin)
    })
    expect(res.status).toBe(200) 
    const json = await res.json()
    console.log(json)
}) 

test("POST: api/client = 201", async () => {
        const res = await fetch(`${URL_LOGIN}/logon`, {
        method: "POST",
        headers:{"Content-Type": "application/json"},
        body: JSON.stringify(newClient)
    })
    expect(res.status).toBe(201) 
    const json = await res.json()
    console.log(json)
})