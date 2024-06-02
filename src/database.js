import {createPool} from "mysql2/promise"

const pool = createPool({
    host: 'localhost',
    port: '3306',
    user: 'ganadores',
    password: 'ganadores',
    database: 'ganadores',
}) 

export default pool;