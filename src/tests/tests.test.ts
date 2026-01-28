const URL_BASE:string = "http://localhost:3000/api/login"

const newLogin={email:"a@a.a", password:"123456"}

test("POST Login",async()=>{
    const res = await fetch(URL_BASE,{
        method:"POST",
        headers:{"Content-Type":"application/json"},
        body:JSON.stringify(newLogin)
    })

    expect(res.status).toBe(200)

    const content = await res.json()
    expect(content).toHaveProperty("email")
    expect(content).toHaveProperty("password")
    
})