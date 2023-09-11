import fastify from "fastify";
import {PrismaClient} from '@prisma/client'
const app = fastify()

const prisma = new PrismaClient();

app.listen({
    port:3333,
}).then(()=>{
    console.log('Server is running on port 3333')
})

app.get('/groups',async () =>{
    const groups = await prisma.group.findMany();
    return groups;
})

app.get('/storages',async () =>{
    const storages = await prisma.storage.findMany();
    return storages;
})
app.get('/products',async () =>{
    const products = await prisma.products.findMany();
    return products;
})