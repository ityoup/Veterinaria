import { createPool } from "mysql2/promise";


export const conn = createPool({
    host: '172.17.0.2',
    user: 'root',
    password: '123',
    port: '3306',
    database: 'veterinaria'
})
