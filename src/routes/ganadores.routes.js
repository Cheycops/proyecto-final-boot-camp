import {Router} from 'express'
import pool from '../database.js'


const router = Router();


router.get('/ganadoresgoty', async(req, res) =>{
    try {
        const [result] = await pool.query('SELECT * FROM ganadoresgoty');
        res.render('ganadores/ganadoresgoty', {ganadoresgoty: result})
    } catch (error) {
        res.status(500).json({message: error.message})
    }
});


export default router;