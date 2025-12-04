import taskRepository from "../repositories/taskRepository"

const URL_BASE:string = "http://localhost:3000/task"

const newTask = {name:"NovaTarefa", description:"NovaTarefa"}
const updatedTask = {name:"Tarefa", description:"Tarefa"}
let taskId:number = 0

test("GET /tasks = 200",async ()=>{
    const res = await fetch(URL_BASE)
    expect(res.status).toBe(200)

    const body = await res.json()
    expect(Array.isArray(body)).toBe(true)
})

test("POST create task = 201",async()=>{
    const res = await fetch(URL_BASE,{
        method:"POST",
        headers:{"Content-Type":"application/json"},
        body:JSON.stringify(newTask)
    })

    expect(res.status).toBe(201)

    const content = await res.json()
    expect(content).toHaveProperty("id")
    expect(content).toHaveProperty("name")
    expect(content).toHaveProperty("description")
    
    taskId = content.id
})

test("GET /tasks by id = 200",async ()=>{
    const res = await fetch(`${URL_BASE}/${taskId}`)
    expect(res.status).toBe(200)

    const content = await res.json()
    expect(content).toHaveProperty("name", newTask["name"])
    expect(content).toHaveProperty("description", newTask["description"])
})

test("PUT update task = 201",async()=>{
    const res = await fetch(`${URL_BASE}/${taskId}`,{
        method:"PUT",
        headers:{"Content-Type":"application/json"},
        body:JSON.stringify(updatedTask)
    })

    expect(res.status).toBe(201)

    const content = await res.json()
    expect(content).toHaveProperty("id")
    expect(content).toHaveProperty("name")
    expect(content).toHaveProperty("description")
})

test("DELETE DELETE task = 201",async()=>{
    const res = await fetch(`${URL_BASE}/${taskId}`,{
        method:"DELETE"
    })

    expect(res.status).toBe(200)

    const content = await res.json()
    expect(content).toHaveProperty("id")
    expect(content).toHaveProperty("name")
    expect(content).toHaveProperty("description")
})

test("GET: ERROR",async ()=>{
    const res = await fetch(`${URL_BASE}/99999999999`)
    expect(res.status).toBe(404)
})

test("POST create task = 201",async()=>{
    const res = await fetch(URL_BASE,{
        method:"POST",
        headers:{"Content-Type":"application/json"},
        body:JSON.stringify({})
    })

    expect(res.status).toBe(400)

    const content = await res.json()
    expect(content).toHaveProperty("erro","Dados invalidos")
})
